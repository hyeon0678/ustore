package com.ustore.main.dto;

public class EmployeeUserDto {
	private String empIdx;
	private String empPw;
	
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
