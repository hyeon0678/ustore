package com.ustore.approval.dto;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import com.ustore.employee.dto.EmployeeDto;
import com.ustore.member.dto.MemberDto;

public class ApprovalDto {

	private Integer apprIdx; // 기안번호
	private String approver; // 결재자
	private int apprOrder; // 결재자의 결재단계(순서)
	private String apprConfirm; // 해당 결재자의 apprConfirm(결재여부) :  0 미결재, 1 결재, 2 반려처리
	private Date apprRecvDate; // 결재문서 받은날짜
	private Date apprDate; // 결재날짜
	private String docId; // 문서번호
	private String comment; // 결재의견
	private String receiver; // 수신자
	private List<Map<String, String>> approvalLines; // 설정한 결재문서 결재선 리스트
	private List<Map<String, String>> receivers;  // 설정한 결재문서 수신자 리스트
	private int commonIdx; 	
	private String empIdx;	
	private String empName;	
	private int apprStatus; // 결재 문서상태 common_idx 40(결재중), 41(완료), 42(반려), 43(임시저장)
	private String deptName;
	private String deptId;
	private int apprTypeIdx; // 결재 양식번호 common_idx 30(업무),31(대금),32(휴가)
	private String positionType; // 직책 position(int) -> common_idx 20(점장), 21(팀장), 22(매니저), 23(사원)
	private String apprType; // 결재타입(기안, 결재)
	private int docStep; // 문서의 결재단계(순서)
	private Date apprSubmitDate; // 기안일자
	
	// 업무기안문
	private String apprSubject; // 제목
	private String apprContent; // 내용
	// 휴가신청서
	private int leaveType; // common_idx 50~52(연차, 병가, 공가)
	private Date leaveStartDate; // 신청 휴가 시작일
	private Date leaveEndDate; // 신청 휴가 종료일
	private int leaveDays; // 신청일수
	private String leaveReason; // 신청 휴가 사유
	// 대금지급결의서
	private int orderNum; // 발주번호
	private int totalAmount; // 합계금액
	
	
	
	public String getApprType() {
		return apprType;
	}
	public void setApprType(String apprType) {
		this.apprType = apprType;
	}
	public Integer getApprIdx() {
		return apprIdx;
	}
	public void setApprIdx(Integer apprIdx) {
		this.apprIdx = apprIdx;
	}
	public int getLeaveDays() {
		return leaveDays;
	}
	public void setLeaveDays(int leaveDays) {
		this.leaveDays = leaveDays;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
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
	/*
	 * public Integer getApprIdx() { return apprIdx; } public void
	 * setApprIdx(Integer apprIdx) { this.apprIdx = apprIdx; }
	 */
	
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
	
	public String getDocId() {
		return docId;
	}
	public void setDocId(String docId) {
		this.docId = docId;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public List<Map<String, String>> getApprovalLines() {
		return approvalLines;
	}
	public void setApprovalLines(List<Map<String, String>> approvalLines) {
		this.approvalLines = approvalLines;
	}
	public List<Map<String, String>> getReceivers() {
		return receivers;
	}
	public void setReceivers(List<Map<String, String>> receivers) {
		this.receivers = receivers;
	}
	
	public int getApprTypeIdx() {
		return apprTypeIdx;
	}
	public void setApprTypeIdx(int apprTypeIdx) {
		this.apprTypeIdx = apprTypeIdx;
	}
	public int getDocStep() {
		return docStep;
	}
	public void setDocStep(int docStep) {
		this.docStep = docStep;
	}

	public Date getApprSubmitDate() {
		return apprSubmitDate;
	}
	public void setApprSubmitDate(Date apprSubmitDate) {
		this.apprSubmitDate = apprSubmitDate;
	}
	public String getApprSubject() {
		return apprSubject;
	}
	public void setApprSubject(String apprSubject) {
		this.apprSubject = apprSubject;
	}
	public String getApprContent() {
		return apprContent;
	}
	public void setApprContent(String apprContent) {
		this.apprContent = apprContent;
	}
	public int getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(int leaveType) {
		this.leaveType = leaveType;
	}
	public Date getLeaveStartDate() {
		return leaveStartDate;
	}
	public void setLeaveStartDate(Date leaveStartDate) {
		this.leaveStartDate = leaveStartDate;
	}
	public Date getLeaveEndDate() {
		return leaveEndDate;
	}
	public void setLeaveEndDate(Date leaveEndDate) {
		this.leaveEndDate = leaveEndDate;
	}
	public String getLeaveReason() {
		return leaveReason;
	}
	public void setLeaveReason(String leaveReason) {
		this.leaveReason = leaveReason;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public int getApprStatus() {
		return apprStatus;
	}
	public void setApprStatus(int apprStatus) {
		this.apprStatus = apprStatus;
	}
	
	
}
