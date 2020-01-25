package com.spr.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.spr.dto.Customer;
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

	/* Listing the customer*/
	@Override
	public List<Vendor> getAll() {
		System.out.println("getAlllll");
		 String sql = "SELECT v_first_name,v_last_name,emai,join_date,v_area FROM vendor";
		 System.out.println(sql);
		    List<Vendor> listV = jdbctemplate.query(sql, new RowMapper<Vendor>() {
		    
		        @Override
		        public Vendor mapRow(ResultSet rs, int rowNum) throws SQLException {
		        	Vendor aVendor = new Vendor();
		        	aVendor.setvFirstName(rs.getString("v_first_name"));
		        	aVendor.setvLastName(rs.getString("v_last_name"));
		        	aVendor.setVemail(rs.getString("emai"));
		        	aVendor.setDate(rs.getDate("join_date"));
		        	aVendor.setArea(rs.getString("v_area"));
		        	return aVendor;
		        }
		 
		    });
		 
		    return listV;
		
	}

}
