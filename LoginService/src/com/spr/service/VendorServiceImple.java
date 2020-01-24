package com.spr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spr.dao.VendorDaoImple;
import com.spr.dto.Vendor;

@Service
public class VendorServiceImple implements VendorService {

	@Autowired
	private VendorDaoImple vendorimple;
	
	@Override
	public void insert(Vendor vendor) {
		System.out.println("Vendor services..........");
		vendorimple.insert(vendor);
	}
}
