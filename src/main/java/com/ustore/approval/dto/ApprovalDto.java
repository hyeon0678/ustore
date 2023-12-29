package com.ustore.approval.dto;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import com.ustore.employee.dto.EmployeeDto;
import com.ustore.member.dto.MemberDto;

public class ApprovalDto {

	private int apprIdx; // 기안번호
	private String approver; // 결재자
	private int apprOrder; // 결재순번
	private String apprConfirm; // 결재여부
	private Date apprDate; // 결재날짜
	private String subject; // 제목
	private String content; // 내용
	private Date submitDate; // 기안일자
	private String fnApprover; // 최종결재자
	private int docId; // 문서번호
	private String Comment; // 결재의견
	private List<Map<String, Object>> approvalLines; // 설정한 결재문서 결재선
	private List<Map<String, Object>> receivers;  // 설정한 결재문서 수신자
	// 휴가신청서
	private int leaveType; // common_idx 50~52
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
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	public String getFnApprover() {
		return fnApprover;
	}
	public void setFnApprover(String fnApprover) {
		this.fnApprover = fnApprover;
	}
	public int getDocId() {
		return docId;
	}
	public void setDocId(int docId) {
		this.docId = docId;
	}	
	public String getComment() {
		return Comment;
	}
	public void setComment(String Comment) {
		this.Comment = Comment;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	// 휴가신청서 관련
	
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
	
	// 대금지급결의서 관련
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	
	
	
	
}
