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


@Repository
public class CustomerDaoImple implements CustomerDao{
	@Autowired
	private JdbcTemplate jdbctemplate;
	
	
	public void setJdbctemplate(JdbcTemplate jdbctemplate) {
		this.jdbctemplate = jdbctemplate;
	}
	@Override
	public boolean addCustomer(Customer customer) {
		System.out.println("Adding.............");
		String flag="1";
		String type="U";
		//Login Table
		try {
				String sql= "insert into login values (?,?,?,?)";
				int a=jdbctemplate.update(sql, new Object[] { 
						
						customer.getEmail(),
						customer.getPassword(),
						type,
						flag
				});
		
				System.out.println(a+"inserted into login");
				Date date_in= new Date();
				int Location_id=1;
				System.out.println(date_in);
				sql= "insert into customer (c_first_name,c_last_name,gender,contact,emai,join_date,location_id,zipcode,area,occupation,flag,authentication_key) values(?,?,?,?,?,?,?,?,?,?,?,?)";
				a=jdbctemplate.update(sql, new Object [] {
						
				customer.getC_first_name(),
				customer.getC_last_name(),
				customer.getGender(),
				customer.getContact(),
				customer.getEmail(),
				date_in,
				Location_id,
				customer.getZipcode(),
				customer.getAddress(),
				customer.getOccupation(),
				flag,
				customer.getPassword()
				
				});
				System.out.println(a+"inserted into customer");
		}
		catch(Exception e)
		{
			return false;
		}
		return true;
	}
	/* Listing the customer*/
	@Override
	public List<Customer> getAll() {
		System.out.println("getAlllll");
		 String sql = "SELECT c_first_name,c_last_name,emai,join_date,area FROM customer";
		 System.out.println(sql);
		    List<Customer> listContact = jdbctemplate.query(sql, new RowMapper<Customer>() {
		    
		        @Override
		        public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
		        	Customer acustomer = new Customer();
		        	acustomer.setC_first_name(rs.getString("c_first_name"));
		        	acustomer.setC_last_name(rs.getString("c_last_name"));
		        	acustomer.setEmail(rs.getString("emai"));
		        	acustomer.setDate(rs.getDate("join_date"));
		        	acustomer.setAddress(rs.getString("area"));
		        	System.out.println(acustomer);
		           return acustomer;
		        }
		 
		    });
		 
		    return listContact;
		
	}

}

