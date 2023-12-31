package com.ustore.approval.dto;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import com.ustore.employee.dto.EmployeeDto;
import com.ustore.member.dto.MemberDto;

public class ApprovalDto {

	private int apprIdx; // 기안번호
	private String approver; // 결재자
	private int apprOrder; // 결재자의 결재단계(순서)
	private String apprConfirm; // 결재여부
	private Date apprRecvDate; // 결재문서 받은날짜
	private Date apprDate; // 결재날짜
	private int docId; // 문서번호
	private String comment; // 결재의견
	
	private int commonIdx; 	
	// 결재 양식번호 common_idx 30(업무),31(대금),32(휴가)
	// 결재 문서상태 common_idx 40(결재중), 41(완료), 42(반려), 43(임시저장)
	private String empIdx;
	private String empName;	
	private String deptName;
	private String deptId;
	private String positionType; // 직책 common_idx 20(점장), 21(팀장), 22(매니저), 23(사원)
	
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public Date getApprRecvDate() {
		return apprRecvDate;
	}
	public void setApprRecvDate(Date apprRecvDate) {
		this.apprRecvDate = apprRecvDate;
	}
	public String getPositionType() {
		return positionType;
	}
	public void setPositionType(String positionType) {
		this.positionType = positionType;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getDeptId() {
		return deptId;
	}
	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}
	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
	}
	public int getCommonIdx() {
		return commonIdx;
	}
	public void setCommonIdx(int commonIdx) {
		this.commonIdx = commonIdx;
	}
	
	public int getApprIdx() {
		return apprIdx;
	}
	public void setApprIdx(int apprIdx) {
		this.apprIdx = apprIdx;
	}
	public String getApprover() {
		return approver;
	}
	public void setApprover(String approver) {
		this.approver = approver;
	}
	public int getApprOrder() {
		return apprOrder;
	}
	public void setApprOrder(int apprOrder) {
		this.apprOrder = apprOrder;
	}
	public String getApprConfirm() {
		return apprConfirm;
	}
	public void setApprConfirm(String apprConfirm) {
		this.apprConfirm = apprConfirm;
	}
	public Date getApprDate() {
		return apprDate;
	}
	public void setApprDate(Date apprDate) {
		this.apprDate = apprDate;
	}
	public int getDocId() {
		return docId;
	}
	public void setDocId(int docId) {
		this.docId = docId;
	}	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	
}
