package com.spr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spr.dto.Login;
import com.spr.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginservice;
	
	
	public void setLoginservice(LoginService loginservice) {
		this.loginservice = loginservice;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView userLogin() {

		ModelAndView mv = new ModelAndView();
			mv.setViewName("Index");
		
		return mv;

	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("UserName") String UserName, @RequestParam("Password") String Password) {
		System.out.println("para received....................");
		ModelAndView mv = new ModelAndView();

		Login log = new Login();
		log.setEmail(UserName);
		log.setPassword(Password);

		try {
			mv.addObject("success", "Login Successful.");
			Login log1 = loginservice.validateUser(log);
				
			if(log1.getUserType().equals("A"))
					mv.setViewName("HomepageAdmin");
				
				else if(log1.getUserType().equals("U"))
					mv.setViewName("Homepage");
				
				else
					mv.setViewName("HomepageVendor");
		} catch (Exception e) {

			mv.addObject("msg", "Invalid user id or password.");
			mv.setViewName("Index");
		}
		return mv;
	}


}
