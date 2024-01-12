package com.ustore.mail.dto;

import java.util.ArrayList;

public class maildto {
	
	
	private ArrayList<String> empnum;
	private String subject;
	private String content;
	
	
	
	
	
	
	
	
	public String getContent() {
		return content;
	}
	public ArrayList<String> getEmpnum() {
		return empnum;
	}
	public void setEmpnum(ArrayList<String> empnum) {
		this.empnum = empnum;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}	

}
