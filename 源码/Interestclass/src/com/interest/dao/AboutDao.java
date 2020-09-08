package com.interest.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.interest.model.PageBean;
import com.interest.model.About;

/**
 * 关于我们实现类
 * @author gongwei
 *
 */
public class AboutDao {
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	public NamedParameterJdbcTemplate getNamedParameterJdbcTemplate() {
		return namedParameterJdbcTemplate;
	}

	public void setNamedParameterJdbcTemplate(
			NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}
	
	public int addAbout(About about) {
		String sql = "INSERT INTO interest_about(about_content) " +
				"VALUES(:about_content)";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("about_content", about.getAbout_content());
		KeyHolder keyholder = new GeneratedKeyHolder();
		namedParameterJdbcTemplate.update(sql, sps, keyholder);
		// 加上KeyHolder这个参数可以得到添加后主键的值
		int m = keyholder.getKey().intValue();
		return m;
	}

	public int updateAbout(About about) {
		String sql = "update interest_about set about_content=:about_content where about_id=:about_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("about_content", about.getAbout_content());
		sps.addValue("about_id", about.getAbout_id());
		return namedParameterJdbcTemplate.update(sql, sps);
	}
	
	public int deleteAbout(int about_id) {
		String sql = "delete from interest_about where about_id=:about_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("about_id", about_id);
		return namedParameterJdbcTemplate.update(sql, sps);
	}
	
	public List<About> findAboutByPage(About about, PageBean pageBean) {
		String sql = "select * from interest_about limit " + pageBean.getStart()
		+ "," + pageBean.getPageSize() + "";
		List<About> AboutList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<About>(About.class));
		return AboutList;
	}

	public int AboutCount(About about) {
		String sql = "select count(*) total from interest_about ";
		int totals = 0;
		MapSqlParameterSource sps = new MapSqlParameterSource();
		totals = (int) namedParameterJdbcTemplate.queryForLong(sql, sps);
		return totals;
	}
	
	/**
	 * 根据条件查询关于我们信息
	 * @param searchType
	 * @param searchvalue
	 * @param pageBean
	 * @return
	 */
	public List<About> findAboutBySearchPage(String searchType, String searchvalue, PageBean pageBean) {
		String sql = null;
		if (searchType.equals("aboutname")) {//如果搜索类型为按用户名称搜索
			sql = "select * from interest_about where about_name like '%"+searchvalue+"%' limit " + pageBean.getStart()
					+ "," + pageBean.getPageSize() + "";
		}
		List<About> AboutList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<About>(About.class));
		return AboutList;
	}

	/**
	 * 根据条件查询关于我们数量
	 * @param searchType
	 * @param searchvalue
	 * @return
	 */
	public int AboutCountBySearch(String searchType, String searchvalue) {
		MapSqlParameterSource sps = new MapSqlParameterSource();
		String sql = null;
		if (searchType.equals("aboutname")) {
			sql = "select count(*) total from interest_about where about_name like '%"+searchvalue+"%'";
		}
		int totals = 0;
		totals = (int) namedParameterJdbcTemplate.queryForLong(sql, sps);
		return totals;
	}

	public List<About> findAbouts(About About) {
		String sql = "select * from interest_about ";
		List<About> AboutList = namedParameterJdbcTemplate.getJdbcOperations().query(sql,new BeanPropertyRowMapper<About>(About.class));
		return AboutList;
	}

	/**
	 * 通过关于我们id查询关于我们
	 * 
	 * @param about_id
	 *            关于我们id
	 * @return
	 */
	public About getAboutById(int about_id) {
		String sql = "select * from interest_about where about_id=:about_id";
		MapSqlParameterSource sps = new MapSqlParameterSource();
		sps.addValue("about_id", about_id);
		return (About) namedParameterJdbcTemplate.queryForObject(sql, sps,
				new BeanPropertyRowMapper<About>(About.class));
	}
}
