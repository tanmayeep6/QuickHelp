package com.spr.service;

import java.util.List;

import com.spr.dto.Customer;

public interface CustomerService {
	boolean addCustomer(Customer customer);
	public List<Customer> getAll();
}
