package com.spr.controller;

import javax.servlet.http.HttpSession;

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
	
	@Autowired
	HttpSession session;
	
	public void setLoginservice(LoginService loginservice) {
		this.loginservice = loginservice;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView userLogin() {

		ModelAndView mv = new ModelAndView();
		try
		{
			if(session.getAttribute("slog").equals("1")){
				if(session.getAttribute("type").equals("A")){
				mv.setViewName("HomepageAdmin");
				}
				else if(session.getAttribute("type").equals("U")){
				mv.setViewName("Homepage");
				}
				else{
				mv.setViewName("HomepageVendor");
				}
			}
			else{
				mv.setViewName("Index");
				}
			}
		catch(NullPointerException e){
			mv.setViewName("Index");
			}
		return mv;
		}
	@RequestMapping(value = "/abc", method = RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("email") String email, @RequestParam("password") String password) {
		System.out.println("para received....................");
		ModelAndView mv = new ModelAndView();

		Login log = new Login();
		log.setEmail(email);
		log.setPassword(password);

		try {
			mv.addObject("success", "Login Successful.");
			Login log1 = loginservice.validateUser(log);
			session.setAttribute("email", log1.getEmail());
			session.setAttribute("type", log1.getUserType());
			session.setAttribute("slog", "1");
			System.out.println();
				
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
	
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView userLogout() {
		System.out.println("para logout received....................");
		ModelAndView mv = new ModelAndView();
		try {
		session.invalidate();
		mv.setViewName("Index");
		} catch (Exception e) {
		mv.setViewName("Index");
		}
	return mv;
	}
	
}
