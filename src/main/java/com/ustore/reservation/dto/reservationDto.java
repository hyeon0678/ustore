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
