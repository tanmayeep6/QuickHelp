package com.spr.dao;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spr.dto.Vendor;

@Repository
public class VendorDaoImple implements VendorDao{
	@Autowired
	private JdbcTemplate jdbctemplate;
	
	
	public void setJdbctemplate(JdbcTemplate jdbctemplate) {
		this.jdbctemplate = jdbctemplate;
	}

	public VendorDaoImple() {
		super();
		// TODO Auto-generated constructor stub
	}

	  //InsertMethod
	@Override
	public Boolean insert(Vendor vendor) {
		System.out.println("Inserting.............");
		String flag="1";
		String type="V";
		
		//Login Table
		String sql= "insert into login values (?,?,?,?)";
		int a=jdbctemplate.update(sql, new Object[] { 
				
				vendor.getVemail(),
				vendor.getPassword(),
				type,
				flag
		});
		System.out.println(a+"inserted into login");
		Date date_in= new Date();
		System.out.println(date_in);
		sql= "insert into vendor (v_first_name ,v_last_name ,gender,contact,emai,join_date, v_area , occupation ,flag, authentication_key) values(?,?,?,?,?,?,?,?,?,?)";
		
		a=jdbctemplate.update(sql, new Object [] {
				
				
				vendor.getvFirstName(),
				vendor.getvLastName(),
				vendor.getVgender(),
				vendor.getVcontactNo(),
				vendor.getVemail(),
				date_in,
				vendor.getArea(),
				vendor.getOccupation(),
				flag,
				vendor.getPassword()
				
		});
		System.out.println(a+"inserted into vendor");
		
		return true;
	}

	

}
