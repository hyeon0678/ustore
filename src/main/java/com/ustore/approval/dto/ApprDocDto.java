package com.ustore.approval.dto;

import java.sql.Date;
import java.util.List;
import java.util.Map;

public class ApprDocDto {

	private int apprIdx; // 기안번호 
	private int docStep; // 문서의 결재단계(순서)
	private String apprSubject; // 제목
	private String apprContent; // 내용
	private Date apprSubmitDate; // 기안일자	
	private String empIdx;
	private String empName;
	private String deptName;
	private String deptId;	
	private List<Map<String, Object>> approvalLines; // 설정한 결재문서 결재선
	private List<Map<String, Object>> receivers;  // 설정한 결재문서 수신자
	
	private int commonIdx; 	
	// 직책 common_idx 20(점장), 21(팀장), 22(매니저), 23(사원)
	// 결재 양식번호 common_idx 30(업무),31(대금),32(휴가)
	// 결재 문서상태 common_idx 40(결재중), 41(완료), 42(반려), 43(임시저장)
	private String positionType; // 직책 common_idx 20(점장), 21(팀장), 22(매니저), 23(사원)
	private int appr_type_idx; // 결재 양식번호 common_idx 30(업무),31(대금),32(휴가)
	// 휴가신청서
	private int leaveType; // common_idx 50~52(연차, 병가, 공가)
	private Date leaveStartDate; // 신청 휴가 시작일
	private Date leaveEndDate; // 신청 휴가 종료일
	private String leaveReason; // 신청 휴가 사유
	// 대금지급결의서
	private int orderNum; // 발주번호
	
	public List<Map<String, Object>> getApprovalLines() {
		return approvalLines;
	}
	public void setApprovalLines(List<Map<String, Object>> approvalLines) {
		this.approvalLines = approvalLines;
	}
	public List<Map<String, Object>> getReceivers() {
		return receivers;
	}
	public void setReceivers(List<Map<String, Object>> receivers) {
		this.receivers = receivers;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public int getApprIdx() {
		return apprIdx;
	}
	public void setApprIdx(int apprIdx) {
		this.apprIdx = apprIdx;
	}
	public int getDocStep() {
		return docStep;
	}
	public void setDocStep(int docStep) {
		this.docStep = docStep;
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
	public Date getApprSubmitDate() {
		return apprSubmitDate;
	}
	public void setApprSubmitDate(Date apprSubmitDate) {
		this.apprSubmitDate = apprSubmitDate;
	}
	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
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
	public int getCommonIdx() {
		return commonIdx;
	}
	public void setCommonIdx(int commonIdx) {
		this.commonIdx = commonIdx;
	}
	public String getPositionType() {
		return positionType;
	}
	public void setPositionType(String positionType) {
		this.positionType = positionType;
	}
	public int getAppr_type_idx() {
		return appr_type_idx;
	}
	public void setAppr_type_idx(int appr_type_idx) {
		this.appr_type_idx = appr_type_idx;
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
	
	
	
	
	
}
