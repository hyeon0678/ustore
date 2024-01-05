package com.ustore.main.dto;

import java.sql.Date;

public class EmployeeUserDto {
	private String empIdx;
	private String empPw;
	private String positionName;
	private String deptName;
	private int parentDeptId;
	private int deptId;
	private String position;
	private String department;
	private String name;
	private String empQuit;
	private Date empChangepwDate; 
	
	
	public Date getEmpChangepwDate() {
		return empChangepwDate;
	}
	public void setEmpChangepwDate(Date empChangepwDate) {
		this.empChangepwDate = empChangepwDate;
	}
	public String getEmpQuit() {
		return empQuit;
	}
	public void setEmpQuit(String empQuit) {
		this.empQuit = empQuit;
	}
	public EmployeeUserDto(String empIdx, String empPw) {
		this.empIdx = empIdx;
		this.empPw = empPw;
	}
	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public int getParentDeptId() {
		return parentDeptId;
	}

	public void setParentDeptId(int parentDeptId) {
		this.parentDeptId = parentDeptId;
	}

	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
	}
	public String getEmpPw() {
		return empPw;
	}
	public void setEmpPw(String empPw) {
		this.empPw = empPw;
	}
}
