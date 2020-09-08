package com.interest.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.interest.dao.CourseDao;
import com.interest.model.Course;
import com.interest.model.PageBean;
import com.interest.util.PageUtil;
import com.interest.util.ResponseUtil;
import com.interest.util.StringUtil;

import net.sf.json.JSONObject;

/**
 * 课程控制类
 * @author gongwei
 *
 */
@Controller
public class CourseAction {
	@Resource
	private CourseDao courseDao;
	/**
	 * 课程列表
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/admin/courselist")
	public String courselist(String page, String type, String searchType, String searchvalue, Model model, HttpServletRequest request, HttpServletResponse response) {
		if (StringUtil.isEmpty(page)) {
			page = "1";
		}
		PageBean pageBean = new PageBean(Integer.parseInt(page), 10);
		int total = 0;
		List<Course> courselist = null;
		if (type != null) {
			if (type.equals("search")) {
				courselist = courseDao.findCourseBySearchPage(searchType, searchvalue, pageBean);
				total = courseDao.CourseCountBySearch(searchType, searchvalue);
			}
		} else {
			courselist = courseDao.findCourseByPage(null, pageBean);
			total = courseDao.CourseCount(null);
		}
		String pageCode = PageUtil.genPagination(request.getContextPath()
				+ "/admin/courselist?1=1", total, Integer.parseInt(page), 10);
		model.addAttribute("courselist", courselist);
		model.addAttribute("pageCode", pageCode);
		return "course/course_list.jsp";
	}
	
	/**
	 * 添加修改课程信息管理
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/admin/coursepreSave")
	public String coursepreSave(Course course, String courseId, Model model, HttpServletRequest request, HttpServletResponse response) {
		String title;
		if (StringUtil.isNotEmpty(courseId)) {
			course = courseDao.getCourseById(Integer.valueOf(courseId));
			model.addAttribute("courseId", courseId);
			model.addAttribute("course", course);
			title = "修改课程信息";
		} else {
			title = "新增课程信息";
		}
		model.addAttribute("title", title);
		return "course/course_add.jsp";
	}
	
	/**
	 * 课程添加修改操作实现
	 * @return
	 */
	@RequestMapping(value = "/admin/coursesave")
	public void coursesave(String courseId, Course course, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(StringUtil.isNotEmpty(courseId)){
			course.setCourse_id(Integer.parseInt(courseId));
			courseDao.updateCourse(course);
		}else{
			if (course.getCourse_name() != null) {
				course.setCourse_name(course.getCourse_name());//设置课程名称
			}
			if (course.getCourse_price() != null) {
				course.setCourse_price(course.getCourse_price());//设置课程价格
			}
			if (course.getCourse_images() != null) {
				course.setCourse_images(course.getCourse_images());//设置课程图片
			}
			if (course.getCourse_content() != null) {
				course.setCourse_content(course.getCourse_content());//设置课程内容
			}
			
			//获取当前系统时间
			Date date = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String course_addtime = formatter.format(date);
			course.setCourse_addtime(course_addtime);//设置添加时间

			courseDao.addCourse(course);
		}
		response.sendRedirect("courselist");//重定向到课程列表页面
	}
	
	/**
	 * 课程删除操作
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/coursedelete")
	public String coursedelete(String courseId, HttpServletRequest request, HttpServletResponse response) {
		courseDao.deleteCourse(Integer.parseInt(courseId));
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
