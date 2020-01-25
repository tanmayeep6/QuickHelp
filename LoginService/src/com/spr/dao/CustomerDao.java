package com.spr.dao;

import java.util.List;

import com.spr.dto.Customer;

public interface CustomerDao {

	boolean addCustomer(Customer customer);
	public List<Customer> getAll();
}

