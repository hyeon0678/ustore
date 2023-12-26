package com.ustore.scheduler.dto;

import java.sql.Date;

public class AnnualDto {
	
	private int annualLeavesCtn;
	private String empIdx;
	private Date regDate;
	
	public int getAnnualLeavesCtn() {
		return annualLeavesCtn;
	}
	public void setAnnualLeavesCtn(int annualLeavesCtn) {
		this.annualLeavesCtn = annualLeavesCtn;
	}
	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	

}
