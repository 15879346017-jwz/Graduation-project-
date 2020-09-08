package com.interest.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.interest.model.Course;
import com.interest.model.PageBean;

/**
 * 课程实现类
 * @author gongwei
 *
 */
public class CourseDao {
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	public NamedParameterJdbcTemplate getNamedParameterJdbcTemplate() {
		return namedParameterJdbcTemplate;
	}

	public void setNamedParameterJdbcTemplate(
			NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}
	
	public int addCourse(Course course) {
		String sql = "INSERT INTO interest_course(course_name,course_images,course_price,course_content,course_addtime,course_applynum) " +
				"VALUES(:course_name,:course_images,:course_price,:course_content,:course_addtime,:course_applynum)";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("course_name", course.getCourse_name());
		sps.addValue("course_images", course.getCourse_images());
		sps.addValue("course_price", course.getCourse_price());
		sps.addValue("course_content", course.getCourse_content());
		sps.addValue("course_addtime", course.getCourse_addtime());
		sps.addValue("course_applynum", course.getCourse_applynum());
		KeyHolder keyholder = new GeneratedKeyHolder();
		namedParameterJdbcTemplate.update(sql, sps, keyholder);
		// 加上KeyHolder这个参数可以得到添加后主键的值
		int m = keyholder.getKey().intValue();
		return m;
	}

	public int updateCourse(Course course) {
		String sql = "update interest_course set course_name=:course_name,"
				+ "course_images=:course_images,course_price=:course_price,"
				+ "course_content=:course_content where course_id=:course_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("course_name", course.getCourse_name());
		sps.addValue("course_images", course.getCourse_images());
		sps.addValue("course_price", course.getCourse_price());
		sps.addValue("course_content", course.getCourse_content());
		sps.addValue("course_id", course.getCourse_id());
		return namedParameterJdbcTemplate.update(sql, sps);
	}
	
	public int deleteCourse(int course_id) {
		String sql = "delete from interest_course where course_id=:course_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("course_id", course_id);
		return namedParameterJdbcTemplate.update(sql, sps);
	}
	
	public List<Course> findCourseByPage(Course course, PageBean pageBean) {
		String sql = "select * from interest_course limit " + pageBean.getStart()
		+ "," + pageBean.getPageSize() + "";
		List<Course> CourseList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<Course>(Course.class));
		return CourseList;
	}

	public int CourseCount(Course course) {
		String sql = "select count(*) total from interest_course ";
		int totals = 0;
		MapSqlParameterSource sps = new MapSqlParameterSource();
		totals = (int) namedParameterJdbcTemplate.queryForLong(sql, sps);
		return totals;
	}
	
	/**
	 * 根据条件查询课程信息
	 * @param searchType
	 * @param searchvalue
	 * @param pageBean
	 * @return
	 */
	public List<Course> findCourseBySearchPage(String searchType, String searchvalue, PageBean pageBean) {
		String sql = null;
		if (searchType.equals("coursename")) {//如果搜索类型为按用户名称搜索
			sql = "select * from interest_course where course_name like '%"+searchvalue+"%' limit " + pageBean.getStart()
					+ "," + pageBean.getPageSize() + "";
		}
		List<Course> CourseList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<Course>(Course.class));
		return CourseList;
	}

	/**
	 * 根据条件查询课程数量
	 * @param searchType
	 * @param searchvalue
	 * @return
	 */
	public int CourseCountBySearch(String searchType, String searchvalue) {
		MapSqlParameterSource sps = new MapSqlParameterSource();
		String sql = null;
		if (searchType.equals("coursename")) {
			sql = "select count(*) total from interest_course where course_name like '%"+searchvalue+"%'";
		}
		int totals = 0;
		totals = (int) namedParameterJdbcTemplate.queryForLong(sql, sps);
		return totals;
	}
	
	/**
	 * 根据条件查询课程信息
	 * @param searchType
	 * @param searchvalue
	 * @param pageBean
	 * @return
	 */
	public List<Course> findCourseBySearchPageValue(String searchvalue, PageBean pageBean) {
		String sql = "select * from interest_course where course_name like '%"+searchvalue+"%' limit " + pageBean.getStart()
					+ "," + pageBean.getPageSize() + "";
		List<Course> CourseList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<Course>(Course.class));
		return CourseList;
	}

	/**
	 * 根据条件查询课程数量
	 * @param searchType
	 * @param searchvalue
	 * @return
	 */
	public int CourseCountBySearchValue(String searchvalue) {
		MapSqlParameterSource sps = new MapSqlParameterSource();
		String sql = "select count(*) total from interest_course where course_name like '%"+searchvalue+"%'";
		int totals = 0;
		totals = (int) namedParameterJdbcTemplate.queryForLong(sql, sps);
		return totals;
	}

	public List<Course> findCourses(Course Course) {
		String sql = "select * from interest_course ";
		List<Course> CourseList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<Course>(Course.class));
		return CourseList;
	}

	/**
	 * 通过课程id查询课程
	 * 
	 * @param course_id
	 *            课程id
	 * @return
	 */
	public Course getCourseById(int Course_id) {
		String sql = "select * from interest_course where course_id=:course_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("course_id", Course_id);
		return (Course) namedParameterJdbcTemplate.queryForObject(sql, sps,
				new BeanPropertyRowMapper<Course>(Course.class));
	}
	
	public List<Course> findCourseById(int course_id) {
		String sql = "select * from interest_course where course_id=:course_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("course_id", course_id);
		List<Course> CourseList = namedParameterJdbcTemplate.query(sql,sps,new BeanPropertyRowMapper<Course>(Course.class));
		return CourseList;
	}
}
