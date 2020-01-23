package com.spr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spr.dto.Vendor;
import com.spr.service.VendorServiceImple;

@Controller
public class VendorContoller {

	@Autowired
	private VendorServiceImple vendorService;
	

	public void setVendorService(VendorServiceImple vendorService) {
		this.vendorService = vendorService;
	}

	@RequestMapping(value="/regis",method=RequestMethod.POST)
	public String insert(@ModelAttribute("vendor")Vendor vendor,ModelMap model) {
		
		
		System.out.println("hey"+vendor);
		vendorService.insert(vendor);
		try {
			
			
			System.out.println("success");
			return "Index";
			
		}catch(Exception e){
			System.out.println("Fail");
			return "Register";
		}
	}
}