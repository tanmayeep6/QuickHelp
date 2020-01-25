package com.spr.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spr.service.MailService;
import com.spr.dao.*;

@Controller
public class MailController {
	
	@Autowired
	private mailDao mailDao;
	
	@Autowired
	private MailService mailservice;
	
	
	@RequestMapping(value="/forgot",method=RequestMethod.GET)
	public String forgotPasswordAction()
	{
    	return "forgotPassword";
	}
	
	
	@RequestMapping(value="/forgot-action",method=RequestMethod.POST)
	public ModelAndView addStudentAction(ModelAndView ref,@RequestParam("email") String email,HttpServletRequest req)
	{
		boolean validemail=mailDao.isMailExist(email);
		
		
		try {
		 if(validemail)
		{
			String pass=mailDao.getPassword(email);
			mailservice.sendMail(email, pass);
			ref.addObject("emailsuccess", "Password sent.. check your Mail..");
			ref.setViewName("forgotPassword");
		}
		else
			{
			ref.addObject("emailinvalid", "Email Doesnt Exist");	
			ref.setViewName("forgotPassword");
			}
		
			
		} catch (Exception e) {
			ref.addObject("serveError", "Server Error");
			ref.setViewName("forgotPassword");
		}
		return ref;
		
	}
	
	

}
