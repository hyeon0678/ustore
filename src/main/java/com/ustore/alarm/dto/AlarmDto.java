package com.ustore.alarm.dto;

import java.sql.Timestamp;

public class AlarmDto {
	
	private int alarm_idx;
	private String emp_idx;
	private String alarm_subject;
	private String alarm_content;
	private Timestamp alarm_datetime;
	private String alarm_read;
	public int getAlarm_idx() {
		return alarm_idx;
	}
	public void setAlarm_idx(int alarm_idx) {
		this.alarm_idx = alarm_idx;
	}
	public String getEmp_idx() {
		return emp_idx;
	}
	public void setEmp_idx(String emp_idx) {
		this.emp_idx = emp_idx;
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
	public Timestamp getAlarm_datetime() {
		return alarm_datetime;
	}
	public void setAlarm_datetime(Timestamp alarm_datetime) {
		this.alarm_datetime = alarm_datetime;
	}
	public String getAlarm_read() {
		return alarm_read;
	}
	public void setAlarm_read(String alarm_read) {
		this.alarm_read = alarm_read;
	}

	
	
}
