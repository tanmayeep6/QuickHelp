package com.spr.dto;

public class Login {
private String email;
private String password;
private String userType;


public Login(String email, String password, String userType) {
	super();
	this.email = email;
	this.password = password;
	this.userType = userType;
}


public Login() {
	super();
	// TODO Auto-generated constructor stub
}


public String getEmail() {
	System.out.println("hiee");
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getUserType() {
	return userType;
}
public void setUserType(String userType) {
	this.userType = userType;
}


@Override
public String toString() {
	return "Login [email=" + email + ", password=" + password + ", userType=" + userType + "]";
}


	
}