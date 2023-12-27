package com.ustore.scheduler.dto;

import java.sql.Date;

public class AnnualLeavesDto {
	
	private String empIdx;
	private Date leaveDate;
	private int leaveType;
	private int leaveIncdec;
	private String regBy;
	private int currentAnnualLeavesCnt;
	
	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
	}
	public Date getLeaveDate() {
		return leaveDate;
	}
	public void setLeaveDate(Date leaveDate) {
		this.leaveDate = leaveDate;
	}
	public int getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(int leaveType) {
		this.leaveType = leaveType;
	}
	public int getLeaveIncdec() {
		return leaveIncdec;
	}
	public void setLeaveIncdec(int leaveIncdec) {
		this.leaveIncdec = leaveIncdec;
	}
	public String getRegBy() {
		return regBy;
	}
	public void setRegBy(String regBy) {
		this.regBy = regBy;
	}
	public int getCurrentAnnualLeavesCnt() {
		return currentAnnualLeavesCnt;
	}
	public void setCurrentAnnualLeavesCnt(int currentAnnualLeavesCnt) {
		this.currentAnnualLeavesCnt = currentAnnualLeavesCnt;
	}
	
	

}
