package com.ustore.approval.dto;

import java.sql.Date;

public class ApprovalDto {

	private int appr_idx;
	private String approver;
	private int appr_order; // 결재순번
	private String appr_confirm; // 결재여부
	private Date appr_date; // 결재날자
	private String appr_subject;
	private String appr_content;
	private Date appr_submitdate;
	private String fn_approver;
	private int doc_id;
	private String bd_html;
	private String bd_comment;
	
	public int getAppr_idx() {
		return appr_idx;
	}
	public void setAppr_idx(int appr_idx) {
		this.appr_idx = appr_idx;
	}
	public String getApprover() {
		return approver;
	}
	public void setApprover(String approver) {
		this.approver = approver;
	}
	public int getAppr_order() {
		return appr_order;
	}
	public void setAppr_order(int appr_order) {
		this.appr_order = appr_order;
	}
	public String getAppr_confirm() {
		return appr_confirm;
	}
	public void setAppr_confirm(String appr_confirm) {
		this.appr_confirm = appr_confirm;
	}
	public Date getAppr_date() {
		return appr_date;
	}
	public void setAppr_date(Date appr_date) {
		this.appr_date = appr_date;
	}
	public String getAppr_subject() {
		return appr_subject;
	}
	public void setAppr_subject(String appr_subject) {
		this.appr_subject = appr_subject;
	}
	public String getAppr_content() {
		return appr_content;
	}
	public void setAppr_content(String appr_content) {
		this.appr_content = appr_content;
	}
	public Date getAppr_submitdate() {
		return appr_submitdate;
	}
	public void setAppr_submitdate(Date appr_submitdate) {
		this.appr_submitdate = appr_submitdate;
	}
	public String getFn_approver() {
		return fn_approver;
	}
	public void setFn_approver(String fn_approver) {
		this.fn_approver = fn_approver;
	}
	public int getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}
	public String getBd_html() {
		return bd_html;
	}
	public void setBd_html(String bd_html) {
		this.bd_html = bd_html;
	}
	public String getBd_comment() {
		return bd_comment;
	}
	public void setBd_comment(String bd_comment) {
		this.bd_comment = bd_comment;
	}
	
	
	
	
}
