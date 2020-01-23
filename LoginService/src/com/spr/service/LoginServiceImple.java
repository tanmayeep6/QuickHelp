package com.spr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spr.dao.LoginDao;
import com.spr.dto.Login;

@Service
public class LoginServiceImple implements LoginService{
	@Autowired
	private LoginDao Dao;
	@Override
	public Login validateUser(Login login) {
		
		 return Dao.validateUser(login) ;
		 
	}

}
