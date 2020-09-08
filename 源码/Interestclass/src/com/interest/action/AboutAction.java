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

import com.interest.dao.AboutDao;
import com.interest.model.PageBean;
import com.interest.model.About;
import com.interest.util.PageUtil;
import com.interest.util.ResponseUtil;
import com.interest.util.StringUtil;

import net.sf.json.JSONObject;

/**
 * 关于我们控制类
 * @author gongwei
 *
 */
@Controller
public class AboutAction {
	@Resource
	private AboutDao aboutDao;
	/**
	 * 关于我们列表
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/admin/aboutlist")
	public String aboutlist(String page, String type, String searchType, String searchvalue, Model model, HttpServletRequest request, HttpServletResponse response) {
		if (StringUtil.isEmpty(page)) {
			page = "1";
		}
		PageBean pageBean = new PageBean(Integer.parseInt(page), 10);
		int total = 0;
		List<About> aboutlist = null;
		if (type != null) {
			if (type.equals("search")) {
				aboutlist = aboutDao.findAboutBySearchPage(searchType, searchvalue, pageBean);
				total = aboutDao.AboutCountBySearch(searchType, searchvalue);
			}
		} else {
			aboutlist = aboutDao.findAboutByPage(null, pageBean);
			total = aboutDao.AboutCount(null);
		}
		String pageCode = PageUtil.genPagination(request.getContextPath()
				+ "/admin/aboutlist?1=1", total, Integer.parseInt(page), 10);
		model.addAttribute("aboutlist", aboutlist);
		model.addAttribute("pageCode", pageCode);
		return "about/about_list.jsp";
	}
	
	/**
	 * 添加修改关于我们信息管理
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/admin/aboutpreSave")
	public String aboutpreSave(About about, String aboutId, Model model, HttpServletRequest request, HttpServletResponse response) {
		String title;
		if (StringUtil.isNotEmpty(aboutId)) {
			about = aboutDao.getAboutById(Integer.valueOf(aboutId));
			model.addAttribute("aboutId", aboutId);
			model.addAttribute("about", about);
			title = "修改关于我们信息";
		} else {
			title = "新增关于我们信息";
		}
		model.addAttribute("title", title);
		return "about/about_add.jsp";
	}
	
	/**
	 * 关于我们添加修改操作实现
	 * @return
	 */
	@RequestMapping(value = "/admin/aboutsave")
	public void aboutsave(String aboutId, About about, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(StringUtil.isNotEmpty(aboutId)){
			about.setAbout_id(Integer.parseInt(aboutId));
			aboutDao.updateAbout(about);
		}else{
			if (about.getAbout_content() != null) {
				about.setAbout_content(about.getAbout_content());//设置关于我们内容
			}
			
			aboutDao.addAbout(about);
		}
		response.sendRedirect("aboutlist");//重定向到关于我们列表页面
	}
	
	/**
	 * 关于我们删除操作
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/aboutdelete")
	public String aboutdelete(String aboutId, HttpServletRequest request, HttpServletResponse response) {
		aboutDao.deleteAbout(Integer.parseInt(aboutId));
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
