package com.interest.model;

/**
 * 用户报名课程表实体类
 * @author gongwei
 *
 */
public class Usercourse {
	private int usercourse_id;//报名表id
	private int adminuser_id;//用户id
	private int course_id;//课程id
	private String usercourse_addtime;//报名时间
	private int usercourse_status;//报名状态 1、报名中 2、报名成功 3、报名失败
	
	private String adminuser_username;//用户名称
	private String course_images;//课程图片
	private String course_name;//课程名称
	
	public int getUsercourse_id() {
		return usercourse_id;
	}
	public void setUsercourse_id(int usercourse_id) {
		this.usercourse_id = usercourse_id;
	}
	public int getAdminuser_id() {
		return adminuser_id;
	}
	public void setAdminuser_id(int adminuser_id) {
		this.adminuser_id = adminuser_id;
	}
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	public String getUsercourse_addtime() {
		return usercourse_addtime;
	}
	public void setUsercourse_addtime(String usercourse_addtime) {
		this.usercourse_addtime = usercourse_addtime;
	}
	public int getUsercourse_status() {
		return usercourse_status;
	}
	public void setUsercourse_status(int usercourse_status) {
		this.usercourse_status = usercourse_status;
	}
	public String getAdminuser_username() {
		return adminuser_username;
	}
	public void setAdminuser_username(String adminuser_username) {
		this.adminuser_username = adminuser_username;
	}
	public String getCourse_images() {
		return course_images;
	}
	public void setCourse_images(String course_images) {
		this.course_images = course_images;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
}
