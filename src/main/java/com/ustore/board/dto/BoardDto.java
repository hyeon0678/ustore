package com.ustore.board.dto;

import java.sql.Date;

public class BoardDto {

	private int anony_idx;
	private String anony_subject;
	private String anony_content;
	private int anony_hit;
	private Date reg_date;
	
	private int notice_idx;
	private String emp_idx;
	private String notice_subject;
	private String notice_content;
	private String top_fixed;
	private int notice_hit;
	private String notice_del;
	private Date del_date;
	private String del_by;
	
	
	
	
	public int getNotice_idx() {
		return notice_idx;
	}
	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}
	public String getEmp_idx() {
		return emp_idx;
	}
	public void setEmp_idx(String emp_idx) {
		this.emp_idx = emp_idx;
	}
	public String getNotice_subject() {
		return notice_subject;
	}
	public void setNotice_subject(String notice_subject) {
		this.notice_subject = notice_subject;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getTop_fixed() {
		return top_fixed;
	}
	public void setTop_fixed(String top_fixed) {
		this.top_fixed = top_fixed;
	}
	public int getNotice_hit() {
		return notice_hit;
	}
	public void setNotice_hit(int notice_hit) {
		this.notice_hit = notice_hit;
	}
	public String getNotice_del() {
		return notice_del;
	}
	public void setNotice_del(String notice_del) {
		this.notice_del = notice_del;
	}
	public Date getDel_date() {
		return del_date;
	}
	public void setDel_date(Date del_date) {
		this.del_date = del_date;
	}
	public String getDel_by() {
		return del_by;
	}
	public void setDel_by(String del_by) {
		this.del_by = del_by;
	}
	public int getAnony_idx() {
		return anony_idx;
	}
	public void setAnony_idx(int anony_idx) {
		this.anony_idx = anony_idx;
	}
	public String getAnony_subject() {
		return anony_subject;
	}
	public void setAnony_subject(String anony_subject) {
		this.anony_subject = anony_subject;
	}
	public String getAnony_content() {
		return anony_content;
	}
	public void setAnony_content(String anony_content) {
		this.anony_content = anony_content;
	}
	public int getAnony_hit() {
		return anony_hit;
	}
	public void setAnony_hit(int anony_hit) {
		this.anony_hit = anony_hit;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
	
}
