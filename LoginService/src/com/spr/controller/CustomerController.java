package com.spr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spr.dto.Customer;
import com.spr.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	private CustomerService custService;

	public CustomerService getCustService() {
		return custService;
	}

	public void setCustService(CustomerService custService) {
		this.custService = custService;
	}
	
	@RequestMapping(value="/regisC",method=RequestMethod.POST)
	public String insert(@ModelAttribute("cust")Customer cust,ModelMap model) {
		
		
		System.out.println("hey"+cust);
		custService.addCustomer(cust);
		try {
			
			
			System.out.println("success");
			return "Index";
			
		}catch(Exception e){
			System.out.println("Fail");
			return "RegisterCustomer";
		}
	}
}
