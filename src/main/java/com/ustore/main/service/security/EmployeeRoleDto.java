package com.ustore.main.service.security;

public class EmployeeRoleDto {
	
	private String empIdx;
	private String roleName;
	
	
	
	public EmployeeRoleDto(String empIdx, String roleName) {
		super();
		this.empIdx = empIdx;
		this.roleName = roleName;
	}
	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	

}
