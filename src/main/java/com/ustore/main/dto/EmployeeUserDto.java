package com.ustore.main.dto;

public class EmployeeUserDto {
	private String empIdx;
	private String empPw;
	private String positionName;
	private String deptName;
	private int parentDeptId;
	
	
	
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

	public EmployeeUserDto(String empIdx, String empPw) {
		this.empIdx = empIdx;
		this.empPw = empPw;
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
