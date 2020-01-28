package com.spr.service;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService 
{
	private JavaMailSender mailSender;
	
	public JavaMailSender getMailSender() 
	{
		return mailSender;
	}

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	public void sendMail(String emailId,String password)
	{
		System.out.println(emailId);
		MimeMessage message =  this.mailSender.createMimeMessage();
		MimeMessageHelper mimeHelper;
		try {
			mimeHelper = new MimeMessageHelper(message,true);
			mimeHelper.setTo(emailId);
			
			
			mimeHelper.setFrom("QuickHelp");
			mimeHelper.setSubject("Password Reset Link :");
			mimeHelper.setText("http://192.168.56.1:8080/LoginService/PasswordReset.jsp?email=emailId");
			mailSender.send(message);
		} catch (Exception e) {
			System.out.println("Error Sending email "+ e.getMessage());
		}
		
	}
}
