package com.spr.dto;

import java.util.Date;

public class Customer {
	
	private Date date;
	private String c_first_name;
	private String c_last_name;
	private String gender;
	private String contact;
	private String email;
	private String password;
	private String zipcode;
	private String address;
	private String occupation;
	
	
	
	public Customer(Date date, String c_first_name, String c_last_name, String gender, String contact, String email,
			String password, String zipcode, String address, String occupation) {
		super();
		this.date = date;
		this.c_first_name = c_first_name;
		this.c_last_name = c_last_name;
		this.gender = gender;
		this.contact = contact;
		this.email = email;
		this.password = password;
		this.zipcode = zipcode;
		this.address = address;
		this.occupation = occupation;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getC_first_name() {
		return c_first_name;
	}
	public void setC_first_name(String c_first_name) {
		this.c_first_name = c_first_name;
	}
	public String getC_last_name() {
		return c_last_name;
	}
	public void setC_last_name(String c_last_name) {
		this.c_last_name = c_last_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEmail() {
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
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Customer [date=" + date + ", c_first_name=" + c_first_name + ", c_last_name=" + c_last_name
				+ ", gender=" + gender + ", contact=" + contact + ", email=" + email + ", password=" + password
				+ ", zipcode=" + zipcode + ", address=" + address + ", occupation=" + occupation + "]";
	}
	
	
}
