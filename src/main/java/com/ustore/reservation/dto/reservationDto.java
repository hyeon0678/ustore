package com.ustore.reservation.dto;

public class reservationDto {
	private String resourceName;
	private String resourceType;
	private String resourceIdx;
	private String empIdx;
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
