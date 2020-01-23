package com.spr.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component("mailDao")
public class mailDao {
	
	@Autowired 
	private JdbcTemplate jdbcTemplate;

	public boolean isMailExist(String email)
	{
		boolean status;
		String sql="select count(*) from login where user_email=?";
		int n=jdbcTemplate.queryForObject(sql, Integer.class, email);
		if(n>0)
		{
			status=true;
		}
		else
		{
			status=false;
		}
		return status;
	}

	public String getPassword(String email) 
	{
		String sql="select user_pass from login where user_email=?";
		String pass=jdbcTemplate.queryForObject(sql, String.class, email);
		System.out.println(pass);
		return pass;
	}
	
	

}
