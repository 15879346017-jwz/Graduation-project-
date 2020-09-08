package com.interest.model;

/**
 * 师资团队表实体类
 * @author gongwei
 *
 */
public class Teacher {
	private int teacher_id;//老师id
	private String teacher_name;//老师名称
	private String teacher_professor;//老师职称
	private String teacher_content;//老师介绍
	private String teacher_addtime;//老师添加时间
	private String teacher_images;//老师照片
	public int getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getTeacher_professor() {
		return teacher_professor;
	}
	public void setTeacher_professor(String teacher_professor) {
		this.teacher_professor = teacher_professor;
	}
	public String getTeacher_content() {
		return teacher_content;
	}
	public void setTeacher_content(String teacher_content) {
		this.teacher_content = teacher_content;
	}
	public String getTeacher_addtime() {
		return teacher_addtime;
	}
	public void setTeacher_addtime(String teacher_addtime) {
		this.teacher_addtime = teacher_addtime;
	}
	public String getTeacher_images() {
		return teacher_images;
	}
	public void setTeacher_images(String teacher_images) {
		this.teacher_images = teacher_images;
	}
	
}
