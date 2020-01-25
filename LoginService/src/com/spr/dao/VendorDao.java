package com.spr.dao;

import java.util.List;

import com.spr.dto.Customer;
import com.spr.dto.Vendor;

public interface VendorDao {
	
	public Boolean insert(Vendor vendor);
	public List<Vendor> getAll();
}
