package com.ustore.organizationChart.dto;

import org.apache.ibatis.type.Alias;

@Alias("OrganizationChartDto")
public class OrganizationChartDto {
	
	private String id;
	private String parent;
	private String text;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getParent() {
		return parent;
	}
	public void setParent(String parent) {
		this.parent = parent;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	

}
