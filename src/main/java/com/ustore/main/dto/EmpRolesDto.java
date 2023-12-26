package com.ustore.main.dto;

public class EmpRolesDto {
	private String empIdx;
	private String role;
	
	
	public EmpRolesDto(String empIdx, String role) {
		this.empIdx = empIdx;
		this.role = role;
	}
	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	

}
