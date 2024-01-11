package com.ustore.reservation.dto;

public class reservationDto {
	private String resourceName;
	private String resourceType;
	private String resourceIdx;
	private String empIdx;
	private String bookingStartDate;
	private String bookingEndDate;
	private String bookingStartTime;
	private String bookingEndTime;
	private String bookingContent;
	private String bookingIdx;
	private String empName;
	private String deptName;
	private String empExtNo;
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getEmpExtNo() {
		return empExtNo;
	}
	public void setEmpExtNo(String empExtNo) {
		this.empExtNo = empExtNo;
	}
	public String getBookingIdx() {
		return bookingIdx;
	}
	public void setBookingIdx(String bookingIdx) {
		this.bookingIdx = bookingIdx;
	}
	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
	}
	public String getBookingStartDate() {
		return bookingStartDate;
	}
	public void setBookingStartDate(String bookingStartDate) {
		this.bookingStartDate = bookingStartDate;
	}
	public String getBookingEndDate() {
		return bookingEndDate;
	}
	public void setBookingEndDate(String bookingEndDate) {
		this.bookingEndDate = bookingEndDate;
	}
	public String getBookingStartTime() {
		return bookingStartTime;
	}
	public void setBookingStartTime(String bookingStartTime) {
		this.bookingStartTime = bookingStartTime;
	}
	public String getBookingEndTime() {
		return bookingEndTime;
	}
	public void setBookingEndTime(String bookingEndTime) {
		this.bookingEndTime = bookingEndTime;
	}
	public String getBookingContent() {
		return bookingContent;
	}
	public void setBookingContent(String bookingContent) {
		this.bookingContent = bookingContent;
	}
	public String getResourceIdx() {
		return resourceIdx;
	}
	public void setResourceIdx(String resourceIdx) {
		this.resourceIdx = resourceIdx;
	}
	public String getResourceName() {
		return resourceName;
	}
	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}
	public String getResourceType() {
		return resourceType;
	}
	public void setResourceType(String resourceType) {
		this.resourceType = resourceType;
	}
}
