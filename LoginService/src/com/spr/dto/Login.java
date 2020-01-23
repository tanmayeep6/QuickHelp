package com.spr.dto;

public class Login {
private String Email;
private String Password;
private String UserType;


	public Login(String email, String password, String userType) {
	super();
	Email = email;
	Password = password;
	UserType = userType;
}
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getUserType() {
		return UserType;
	}
	public void setUserType(String userType) {
		UserType = userType;
	}
	@Override
	public String toString() {
		return "Login [Email=" + Email + ", Password=" + Password + ", UserType=" + UserType + "]";
	}


}