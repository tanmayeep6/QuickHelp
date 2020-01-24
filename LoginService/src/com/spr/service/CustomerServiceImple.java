package com.spr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.spr.dao.CustomerDao;
import com.spr.dao.LoginDao;
import com.spr.dto.Customer;

@Service
public class CustomerServiceImple implements CustomerService {

	@Autowired
	private CustomerDao Dao;
	@Override
	public boolean addCustomer(Customer customer) {
		System.out.println("Customer services..........");
		return Dao.addCustomer(customer);
	}
	
}
