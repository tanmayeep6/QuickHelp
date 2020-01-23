package com.spr.dto;

import java.util.Date;

public class Vendor {

	private Date date;
	private String vFirstName;
	private String vLastName;
	private String vgender;
	private long vcontactNo;
	private String vemail;
	private String password;
	private String area;
	private String occupation;
	
	
	
	
	public Vendor(Date date, String vFirstName, String vLastName, String vgender, long vcontactNo, String vemail,
			String password, String area, String occupation) {
		super();
		this.date = date;
		this.vFirstName = vFirstName;
		this.vLastName = vLastName;
		this.vgender = vgender;
		this.vcontactNo = vcontactNo;
		this.vemail = vemail;
		this.password = password;
		this.area = area;
		this.occupation = occupation;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getvFirstName() {
		return vFirstName;
	}
	public void setvFirstName(String vFirstName) {
		this.vFirstName = vFirstName;
	}
	public String getvLastName() {
		return vLastName;
	}
	public void setvLastName(String vLastName) {
		this.vLastName = vLastName;
	}
	public String getVgender() {
		return vgender;
	}
	public void setVgender(String vgender) {
		this.vgender = vgender;
	}
	public long getVcontactNo() {
		return vcontactNo;
	}
	public void setVcontactNo(long vcontactNo) {
		this.vcontactNo = vcontactNo;
	}
	public String getVemail() {
		return vemail;
	}
	public void setVemail(String vemail) {
		this.vemail = vemail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	@Override
	public String toString() {
		return "Vendor [date=" + date + ", vFirstName=" + vFirstName + ", vLastName=" + vLastName + ", vgender="
				+ vgender + ", vcontactNo=" + vcontactNo + ", vemail=" + vemail + ", password=" + password + ", area="
				+ area + ", occupation=" + occupation + "]";
	}
	public Vendor() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
		
}
