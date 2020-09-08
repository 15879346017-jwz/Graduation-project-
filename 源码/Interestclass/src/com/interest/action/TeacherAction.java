package com.interest.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.interest.dao.TeacherDao;
import com.interest.model.Teacher;
import com.interest.model.PageBean;
import com.interest.util.PageUtil;
import com.interest.util.ResponseUtil;
import com.interest.util.StringUtil;

import net.sf.json.JSONObject;

/**
 * 老师控制类
 * @author gongwei
 *
 */
@Controller
public class TeacherAction {
	@Resource
	private TeacherDao teacherDao;
	/**
	 * 老师列表
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/admin/teacherlist")
	public String teacherlist(String page, String type, String searchType, String searchvalue, Model model, HttpServletRequest request, HttpServletResponse response) {
		if (StringUtil.isEmpty(page)) {
			page = "1";
		}
		PageBean pageBean = new PageBean(Integer.parseInt(page), 10);
		int total = 0;
		List<Teacher> teacherlist = null;
		if (type != null) {
			if (type.equals("search")) {
				teacherlist = teacherDao.findTeacherBySearchPage(searchType, searchvalue, pageBean);
				total = teacherDao.TeacherCountBySearch(searchType, searchvalue);
			}
		} else {
			teacherlist = teacherDao.findTeacherByPage(null, pageBean);
			total = teacherDao.TeacherCount(null);
		}
		String pageCode = PageUtil.genPagination(request.getContextPath()
				+ "/admin/teacherlist?1=1", total, Integer.parseInt(page), 10);
		model.addAttribute("teacherlist", teacherlist);
		model.addAttribute("pageCode", pageCode);
		return "teacher/teacher_list.jsp";
	}
	
	/**
	 * 添加修改老师信息管理
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/admin/teacherpreSave")
	public String teacherpreSave(Teacher teacher, String teacherId, Model model, HttpServletRequest request, HttpServletResponse response) {
		String title;
		if (StringUtil.isNotEmpty(teacherId)) {
			teacher = teacherDao.getTeacherById(Integer.valueOf(teacherId));
			model.addAttribute("teacherId", teacherId);
			model.addAttribute("teacher", teacher);
			title = "修改老师信息";
		} else {
			title = "新增老师信息";
		}
		model.addAttribute("title", title);
		return "teacher/teacher_add.jsp";
	}
	
	/**
	 * 老师添加修改操作实现
	 * @return
	 */
	@RequestMapping(value = "/admin/teachersave")
	public void teachersave(String teacherId, Teacher teacher, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(StringUtil.isNotEmpty(teacherId)){
			teacher.setTeacher_id(Integer.parseInt(teacherId));
			teacherDao.updateTeacher(teacher);
		}else{
			if (teacher.getTeacher_name() != null) {
				teacher.setTeacher_name(teacher.getTeacher_name());//设置老师名称
			}
			if (teacher.getTeacher_images() != null) {
				teacher.setTeacher_images(teacher.getTeacher_images());//设置老师图片
			}
			if (teacher.getTeacher_content() != null) {
				teacher.setTeacher_content(teacher.getTeacher_content());//设置老师内容
			}
			
			//获取当前系统时间
			Date date = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String teacher_addtime = formatter.format(date);
			teacher.setTeacher_addtime(teacher_addtime);//设置添加时间

			teacherDao.addTeacher(teacher);
		}
		response.sendRedirect("teacherlist");//重定向到老师列表页面
	}
	
	/**
	 * 老师删除操作
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/teacherdelete")
	public String teacherdelete(String teacherId, HttpServletRequest request, HttpServletResponse response) {
		teacherDao.deleteTeacher(Integer.parseInt(teacherId));
		JSONObject resultJson = new JSONObject();
		resultJson.put("success", true);
		try {
			ResponseUtil.write(resultJson, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
