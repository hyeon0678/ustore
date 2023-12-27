package com.ustore.organizationChart.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;

import com.ustore.member.dto.MemberDto;

@Alias("OrganizationChartDto")
public class OrganizationChartDto {
	
	private String id;
	private String parent;
	private String text;
	private List<OrganizationChartDto> children;
	private String position;
	private String type;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
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
	public List<OrganizationChartDto> getChildren() {
		return children;
	}
	public void setChildren(List<OrganizationChartDto> children) {
		this.children = children;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	
	

}
