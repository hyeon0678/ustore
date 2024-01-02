package com.ustore.chat.dto;

public class Participant {
	private String name;
	private String empIdx;
	private String position;
	private String department;
	private String empInfo;
	
	
	
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getEmpInfo() {
		return empInfo;
	}
	public void setEmpInfo(String empInfo) {
		this.empInfo = empInfo;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
	}
	
	

}
