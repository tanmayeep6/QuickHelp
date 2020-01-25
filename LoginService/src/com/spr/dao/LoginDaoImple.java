package com.spr.dao;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.stereotype.Repository;

import com.spr.dto.Login;

@Repository
public class LoginDaoImple implements LoginDao{
	@Autowired
	private JdbcTemplate jdbctemplate;
	
	
	public void setJdbctemplate(JdbcTemplate jdbctemplate) {
		this.jdbctemplate = jdbctemplate;
	}
	
	@Override
	public Login validateUser(Login login) {
		System.out.println("Entered.....................");
		 String sql = "select * from login where user_email=? and user_pass=?";
		 	System.out.println(sql);
		    Login log1=jdbctemplate.queryForObject(sql, new Object[]{login.getEmail(),login.getPassword() }, new RowMapper<Login>() {
		    	
				@Override
				public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					Login log=new Login();
					log.setEmail(rs.getString(1));
					log.setPassword(rs.getString(2));
					log.setUserType(rs.getString(3));
					System.out.println(log + "LO-------------------" );
					return log;
				}
			});
		    System.out.println(log1 + "Log1111111");
			return log1;
		
	}


}
