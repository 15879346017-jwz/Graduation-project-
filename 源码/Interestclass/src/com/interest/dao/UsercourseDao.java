package com.interest.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.interest.model.PageBean;
import com.interest.model.Usercourse;

/**
 * 课程报名实现类
 * @author gongwei
 *
 */
public class UsercourseDao {
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	public NamedParameterJdbcTemplate getNamedParameterJdbcTemplate() {
		return namedParameterJdbcTemplate;
	}

	public void setNamedParameterJdbcTemplate(
			NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}
	
	public int addUsercourse(Usercourse usercourse) {
		String sql = "INSERT INTO interest_usercourse(adminuser_id,course_id,usercourse_addtime,usercourse_status) " +
				"VALUES(:adminuser_id,:course_id,:usercourse_addtime,:usercourse_status)";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("adminuser_id", usercourse.getAdminuser_id());
		sps.addValue("course_id", usercourse.getCourse_id());
		sps.addValue("usercourse_addtime", usercourse.getUsercourse_addtime());
		sps.addValue("usercourse_status", usercourse.getUsercourse_status());
		KeyHolder keyholder = new GeneratedKeyHolder();
		namedParameterJdbcTemplate.update(sql, sps, keyholder);
		// 加上KeyHolder这个参数可以得到添加后主键的值
		int m = keyholder.getKey().intValue();
		return m;
	}

	public int updateUsercourse(Usercourse usercourse) {
		String sql = "update interest_usercourse set adminuser_id=:adminuser_id,"
				+ "course_id=:course_id where usercourse_id=:usercourse_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("adminuser_id", usercourse.getAdminuser_id());
		sps.addValue("course_id", usercourse.getCourse_id());
		sps.addValue("usercourse_id", usercourse.getUsercourse_id());
		return namedParameterJdbcTemplate.update(sql, sps);
	}
	
	public int deleteUsercourse(int usercourse_id) {
		String sql = "delete from interest_usercourse where usercourse_id=:usercourse_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("usercourse_id", usercourse_id);
		return namedParameterJdbcTemplate.update(sql, sps);
	}
	
	public List<Usercourse> findUsercourseByPage(Usercourse usercourse, PageBean pageBean) {
		String sql = "select uc.*,a.adminuser_username as adminuser_username,c.course_name as course_name,c.course_images as course_images "
				+ "from interest_usercourse uc,interest_adminuser a,interest_course c "
				+ "where uc.adminuser_id=a.adminuser_id and uc.course_id=c.course_id limit " + pageBean.getStart()
		+ "," + pageBean.getPageSize() + "";
		List<Usercourse> UsercourseList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<Usercourse>(Usercourse.class));
		return UsercourseList;
	}

	public int UsercourseCount(Usercourse usercourse) {
		String sql = "select count(*) total from interest_usercourse ";
		int totals = 0;
		MapSqlParameterSource sps = new MapSqlParameterSource();
		totals = (int) namedParameterJdbcTemplate.queryForLong(sql, sps);
		return totals;
	}
	
	/**
	 * 根据条件查询课程报名信息
	 * @param searchType
	 * @param searchvalue
	 * @param pageBean
	 * @return
	 */
	public List<Usercourse> findUsercourseBySearchPage(String searchType, String searchvalue, PageBean pageBean) {
		String sql = null;
		if (searchType.equals("adminuser_username")) {//如果搜索类型为按用户名称搜索
			sql = "select uc.*,a.adminuser_username as adminuser_username,c.course_name as course_name,c.course_images as course_images "
				+ "from interest_usercourse uc,interest_adminuser a,interest_course c "
				+ "where uc.adminuser_id=a.adminuser_id and uc.course_id=c.course_id and a.adminuser_username like '%"+searchvalue+"%' limit " + pageBean.getStart()
					+ "," + pageBean.getPageSize() + "";
		}
		List<Usercourse> UsercourseList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<Usercourse>(Usercourse.class));
		return UsercourseList;
	}

	/**
	 * 根据条件查询课程报名数量
	 * @param searchType
	 * @param searchvalue
	 * @return
	 */
	public int UsercourseCountBySearch(String searchType, String searchvalue) {
		MapSqlParameterSource sps = new MapSqlParameterSource();
		String sql = null;
		if (searchType.equals("adminuser_username")) {
			sql = "select count(*) total from interest_usercourse uc,interest_adminuser a "
					+ "where uc.adminuser_id=a.adminuser_id and a.adminuser_username like '%"+searchvalue+"%'";
		}
		int totals = 0;
		totals = (int) namedParameterJdbcTemplate.queryForLong(sql, sps);
		return totals;
	}

	public List<Usercourse> findUsercourses(Usercourse Usercourse) {
		String sql = "select uc.*,a.adminuser_username as adminuser_username,c.course_name as course_name,c.course_images as course_images "
				+ "from interest_usercourse uc,interest_adminuser a,interest_course c "
				+ "where uc.adminuser_id=a.adminuser_id and uc.course_id=c.course_id ";
		List<Usercourse> UsercourseList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<Usercourse>(Usercourse.class));
		return UsercourseList;
	}

	/**
	 * 通过课程报名id查询课程报名
	 * 
	 * @param usercourse_id
	 *            课程报名id
	 * @return
	 */
	public Usercourse getUsercourseById(int usercourse_id) {
		String sql = "select uc.*,a.adminuser_username as adminuser_username,c.course_name as course_name,c.course_images as course_images "
				+ "from interest_usercourse uc,interest_adminuser a,interest_course c "
				+ "where uc.adminuser_id=a.adminuser_id and uc.course_id=c.course_id and uc.usercourse_id=:usercourse_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("usercourse_id", usercourse_id);
		return (Usercourse) namedParameterJdbcTemplate.queryForObject(sql, sps,
				new BeanPropertyRowMapper<Usercourse>(Usercourse.class));
	}
	
	public List<Usercourse> findUsercoursesByAdminUserIdAndCourseId(int adminuser_id, int course_id) {
		String sql = "select * from interest_usercourse where adminuser_id=:adminuser_id and course_id=:course_id ";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("adminuser_id", adminuser_id);
		sps.addValue("course_id", course_id);
		List<Usercourse> UsercourseList = namedParameterJdbcTemplate.query(sql,sps,new BeanPropertyRowMapper<Usercourse>(Usercourse.class));
		return UsercourseList;
	}
}
