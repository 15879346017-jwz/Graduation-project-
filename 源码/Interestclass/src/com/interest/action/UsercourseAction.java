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

import com.interest.dao.UsercourseDao;
import com.interest.model.PageBean;
import com.interest.model.Usercourse;
import com.interest.util.PageUtil;
import com.interest.util.ResponseUtil;
import com.interest.util.StringUtil;

import net.sf.json.JSONObject;

/**
 * 课程报名控制类
 * @author gongwei
 *
 */
@Controller
public class UsercourseAction {
	@Resource
	private UsercourseDao usercourseDao;
	/**
	 * 课程报名列表
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/admin/usercourselist")
	public String usercourselist(String page, String type, String searchType, String searchvalue, Model model, HttpServletRequest request, HttpServletResponse response) {
		if (StringUtil.isEmpty(page)) {
			page = "1";
		}
		PageBean pageBean = new PageBean(Integer.parseInt(page), 10);
		int total = 0;
		List<Usercourse> usercourselist = null;
		if (type != null) {
			if (type.equals("search")) {
				usercourselist = usercourseDao.findUsercourseBySearchPage(searchType, searchvalue, pageBean);
				total = usercourseDao.UsercourseCountBySearch(searchType, searchvalue);
			}
		} else {
			usercourselist = usercourseDao.findUsercourseByPage(null, pageBean);
			total = usercourseDao.UsercourseCount(null);
		}
		String pageCode = PageUtil.genPagination(request.getContextPath()
				+ "/admin/usercourselist?1=1", total, Integer.parseInt(page), 10);
		model.addAttribute("usercourselist", usercourselist);
		model.addAttribute("pageCode", pageCode);
		return "usercourse/usercourse_list.jsp";
	}
	
	/**
	 * 添加修改课程报名信息管理
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/admin/usercoursepreSave")
	public String usercoursepreSave(Usercourse usercourse, String usercourseId, Model model, HttpServletRequest request, HttpServletResponse response) {
		String title;
		if (StringUtil.isNotEmpty(usercourseId)) {
			usercourse = usercourseDao.getUsercourseById(Integer.valueOf(usercourseId));
			model.addAttribute("usercourseId", usercourseId);
			model.addAttribute("usercourse", usercourse);
			title = "修改课程报名信息";
		} else {
			title = "新增课程报名信息";
		}
		model.addAttribute("title", title);
		return "usercourse/usercourse_add.jsp";
	}
	
	/**
	 * 课程报名添加修改操作实现
	 * @return
	 */
	@RequestMapping(value = "/admin/usercoursesave")
	public void usercoursesave(String usercourseId, Usercourse usercourse, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(StringUtil.isNotEmpty(usercourseId)){
			usercourse.setUsercourse_id(Integer.parseInt(usercourseId));
			usercourseDao.updateUsercourse(usercourse);
		}else{

			usercourseDao.addUsercourse(usercourse);
		}
		response.sendRedirect("usercourselist");//重定向到课程报名列表页面
	}
	
	/**
	 * 课程报名删除操作
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/usercoursedelete")
	public String usercoursedelete(String usercourseId, HttpServletRequest request, HttpServletResponse response) {
		usercourseDao.deleteUsercourse(Integer.parseInt(usercourseId));
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
