package com.interest.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.interest.model.Teacher;
import com.interest.model.PageBean;

/**
 * 老师实现类
 * @author gongwei
 *
 */
public class TeacherDao {
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	public NamedParameterJdbcTemplate getNamedParameterJdbcTemplate() {
		return namedParameterJdbcTemplate;
	}

	public void setNamedParameterJdbcTemplate(
			NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}
	
	public int addTeacher(Teacher teacher) {
		String sql = "INSERT INTO interest_teacher(teacher_name,teacher_professor,teacher_content,teacher_addtime,teacher_images) " +
				"VALUES(:teacher_name,:teacher_professor,:teacher_content,:teacher_addtime,:teacher_images)";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("teacher_name", teacher.getTeacher_name());
		sps.addValue("teacher_professor", teacher.getTeacher_professor());
		sps.addValue("teacher_content", teacher.getTeacher_content());
		sps.addValue("teacher_addtime", teacher.getTeacher_addtime());
		sps.addValue("teacher_images", teacher.getTeacher_images());
		KeyHolder keyholder = new GeneratedKeyHolder();
		namedParameterJdbcTemplate.update(sql, sps, keyholder);
		// 加上KeyHolder这个参数可以得到添加后主键的值
		int m = keyholder.getKey().intValue();
		return m;
	}

	public int updateTeacher(Teacher teacher) {
		String sql = "update interest_teacher set teacher_name=:teacher_name,"
				+ "teacher_professor=:teacher_professor,teacher_content=:teacher_content,"
				+ "teacher_images=:teacher_images where teacher_id=:teacher_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("teacher_name", teacher.getTeacher_name());
		sps.addValue("teacher_professor", teacher.getTeacher_professor());
		sps.addValue("teacher_content", teacher.getTeacher_content());
		sps.addValue("teacher_images", teacher.getTeacher_images());
		sps.addValue("teacher_id", teacher.getTeacher_id());
		return namedParameterJdbcTemplate.update(sql, sps);
	}
	
	public int deleteTeacher(int teacher_id) {
		String sql = "delete from interest_teacher where teacher_id=:teacher_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("teacher_id", teacher_id);
		return namedParameterJdbcTemplate.update(sql, sps);
	}
	
	public List<Teacher> findTeacherByPage(Teacher teacher, PageBean pageBean) {
		String sql = "select * from interest_teacher limit " + pageBean.getStart()
		+ "," + pageBean.getPageSize() + "";
		List<Teacher> TeacherList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<Teacher>(Teacher.class));
		return TeacherList;
	}

	public int TeacherCount(Teacher teacher) {
		String sql = "select count(*) total from interest_teacher ";
		int totals = 0;
		MapSqlParameterSource sps = new MapSqlParameterSource();
		totals = (int) namedParameterJdbcTemplate.queryForLong(sql, sps);
		return totals;
	}
	
	/**
	 * 根据条件查询老师信息
	 * @param searchType
	 * @param searchvalue
	 * @param pageBean
	 * @return
	 */
	public List<Teacher> findTeacherBySearchPage(String searchType, String searchvalue, PageBean pageBean) {
		String sql = null;
		if (searchType.equals("teachername")) {//如果搜索类型为按用户名称搜索
			sql = "select * from interest_teacher where teacher_name like '%"+searchvalue+"%' limit " + pageBean.getStart()
					+ "," + pageBean.getPageSize() + "";
		}
		List<Teacher> TeacherList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<Teacher>(Teacher.class));
		return TeacherList;
	}

	/**
	 * 根据条件查询老师数量
	 * @param searchType
	 * @param searchvalue
	 * @return
	 */
	public int TeacherCountBySearch(String searchType, String searchvalue) {
		MapSqlParameterSource sps = new MapSqlParameterSource();
		String sql = null;
		if (searchType.equals("teachername")) {
			sql = "select count(*) total from interest_teacher where teacher_name like '%"+searchvalue+"%'";
		}
		int totals = 0;
		totals = (int) namedParameterJdbcTemplate.queryForLong(sql, sps);
		return totals;
	}

	public List<Teacher> findTeachers(Teacher Teacher) {
		String sql = "select * from interest_teacher ";
		List<Teacher> TeacherList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<Teacher>(Teacher.class));
		return TeacherList;
	}

	/**
	 * 通过老师id查询老师
	 * 
	 * @param teacher_id
	 *            老师id
	 * @return
	 */
	public Teacher getTeacherById(int teacher_id) {
		String sql = "select * from interest_teacher where teacher_id=:teacher_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("teacher_id", teacher_id);
		return (Teacher) namedParameterJdbcTemplate.queryForObject(sql, sps,
				new BeanPropertyRowMapper<Teacher>(Teacher.class));
	}
}
