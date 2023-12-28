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
	private String type;
	private String deptName;
	private int position;
	private String positionType;
	private String empName;
	
	
	
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
	public int getPosition() {
		return position;
	}
	public void setPosition(int position) {
		this.position = position;
	}
	public String getPositionType() {
		return positionType;
	}
	public void setPositionType(String positionType) {
		this.positionType = positionType;
	}
	
	
	
	

}
