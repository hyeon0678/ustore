package com.ustore.employee.dto;

import java.sql.Date;
import java.sql.Time;

public class EmpProrileDto {
	private int sch_idx;
	private String emp_idx;
	private Date sch_start_date;
	private Date sch_end_date;
	private String sch_content;
	private String sch_subject;
	private Time sch_start_time;
	private Time sch_end_time;
	private int sch_type;
	private Date reg_date;
	private Date update;
	private String reg_by;
	private String update_by;
	
	
	private int alarm_idx;
	private String alarm_subject;
	private String alarm_content;
	private Time alarm_datetime;
	private String alarm_read;
	private String url;
	
	
	
	
	
	public int getAlarm_idx() {
		return alarm_idx;
	}
	public void setAlarm_idx(int alarm_idx) {
		this.alarm_idx = alarm_idx;
	}
	public String getAlarm_subject() {
		return alarm_subject;
	}
	public void setAlarm_subject(String alarm_subject) {
		this.alarm_subject = alarm_subject;
	}
	public String getAlarm_content() {
		return alarm_content;
	}
	public void setAlarm_content(String alarm_content) {
		this.alarm_content = alarm_content;
	}
	public Time getAlarm_datetime() {
		return alarm_datetime;
	}
	public void setAlarm_datetime(Time alarm_datetime) {
		this.alarm_datetime = alarm_datetime;
	}
	public String getAlarm_read() {
		return alarm_read;
	}
	public void setAlarm_read(String alarm_read) {
		this.alarm_read = alarm_read;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	
	
	public int getSch_idx() {
		return sch_idx;
	}
	public void setSch_idx(int sch_idx) {
		this.sch_idx = sch_idx;
	}
	public String getEmp_idx() {
		return emp_idx;
	}
	public void setEmp_idx(String emp_idx) {
		this.emp_idx = emp_idx;
	}
	public Date getSch_start_date() {
		return sch_start_date;
	}
	public void setSch_start_date(Date sch_start_date) {
		this.sch_start_date = sch_start_date;
	}
	public Date getSch_end_date() {
		return sch_end_date;
	}
	public void setSch_end_date(Date sch_end_date) {
		this.sch_end_date = sch_end_date;
	}
	public String getSch_content() {
		return sch_content;
	}
	public void setSch_content(String sch_content) {
		this.sch_content = sch_content;
	}
	public String getSch_subject() {
		return sch_subject;
	}
	public void setSch_subject(String sch_subject) {
		this.sch_subject = sch_subject;
	}
	public Time getSch_start_time() {
		return sch_start_time;
	}
	public void setSch_start_time(Time sch_start_time) {
		this.sch_start_time = sch_start_time;
	}
	public Time getSch_end_time() {
		return sch_end_time;
	}
	public void setSch_end_time(Time sch_end_time) {
		this.sch_end_time = sch_end_time;
	}
	public int getSch_type() {
		return sch_type;
	}
	public void setSch_type(int sch_type) {
		this.sch_type = sch_type;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getUpdate() {
		return update;
	}
	public void setUpdate(Date update) {
		this.update = update;
	}
	public String getReg_by() {
		return reg_by;
	}
	public void setReg_by(String reg_by) {
		this.reg_by = reg_by;
	}
	public String getUpdate_by() {
		return update_by;
	}
	public void setUpdate_by(String update_by) {
		this.update_by = update_by;
	}
	
	
	
}
