package com.ustore.employee.dto;

public class DeptDto {
	private int deptId;
	private int parentDeptId;
	private String deptName;
	private int childDept;
	private int depth;
	private String path;
	private int leaf;
	private int empCnt;
	private String regBy;
	
	
	
	public String getRegBy() {
		return regBy;
	}
	public void setRegBy(String regBy) {
		this.regBy = regBy;
	}
	public int getEmpCnt() {
		return empCnt;
	}
	public void setEmpCnt(int empCnt) {
		this.empCnt = empCnt;
	}
	public int getLeaf() {
		return leaf;
	}
	public void setLeaf(int leaf) {
		this.leaf = leaf;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public int getParentDeptId() {
		return parentDeptId;
	}
	public void setParentDeptId(int parentDeptId) {
		this.parentDeptId = parentDeptId;
	}
	public int getChildDept() {
		return childDept;
	}
	public void setChildDept(int childDept) {
		this.childDept = childDept;
	}

	
}
