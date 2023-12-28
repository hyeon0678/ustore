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
	private String apprSubject; // 제목
	private String apprContent; // 내용
	private Date apprSubmitdate; // 기안일자
	private String fnApprover; // 최종결재자
	private int docId; // 문서번호
	private String Html; // html저장
	private String Comment; // 결재의견
	private List<Map<String, Object>> approvalLines;
	private List<Map<String, Object>> receivers;		
	
	
	
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
	public Date getApprSubmitdate() {
		return apprSubmitdate;
	}
	public void setApprSubmitdate(Date apprSubmitdate) {
		this.apprSubmitdate = apprSubmitdate;
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
	public String getHtml() {
		return Html;
	}
	public void setHtml(String Html) {
		this.Html = Html;
	}
	public String getComment() {
		return Comment;
	}
	public void setComment(String Comment) {
		this.Comment = Comment;
	}
	
	
	
	
	
}
