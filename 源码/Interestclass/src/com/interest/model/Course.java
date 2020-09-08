package com.interest.model;

/**
 * 课程表实体类
 * @author gongwei
 *
 */
public class Course {
	private int course_id;//课程表id
	private String course_name;//课程名称
	private String course_images;//课程图片
	private String course_price;//课程价格
	private String course_content;//课程介绍
	private String course_addtime;//课程添加时间
	private int course_applynum;//报名人数
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_images() {
		return course_images;
	}
	public void setCourse_images(String course_images) {
		this.course_images = course_images;
	}
	public String getCourse_price() {
		return course_price;
	}
	public void setCourse_price(String course_price) {
		this.course_price = course_price;
	}
	public String getCourse_content() {
		return course_content;
	}
	public void setCourse_content(String course_content) {
		this.course_content = course_content;
	}
	public String getCourse_addtime() {
		return course_addtime;
	}
	public void setCourse_addtime(String course_addtime) {
		this.course_addtime = course_addtime;
	}
	public int getCourse_applynum() {
		return course_applynum;
	}
	public void setCourse_applynum(int course_applynum) {
		this.course_applynum = course_applynum;
	}
}
