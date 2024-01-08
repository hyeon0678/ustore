package com.ustore.alarm.dto;

import java.sql.Timestamp;

public class AlarmDto {
	
	private int alarmIdx;
	private String empIdx;
	private String alarmSubject;
	private String alarmContent;
	private Timestamp alarmDatetime;
	private String alarmRead;
	private String url;
	
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getAlarmIdx() {
		return alarmIdx;
	}
	public void setAlarmIdx(int alarmIdx) {
		this.alarmIdx = alarmIdx;
	}
	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
	}
	public String getAlarmSubject() {
		return alarmSubject;
	}
	public void setAlarmSubject(String alarmSubject) {
		this.alarmSubject = alarmSubject;
	}
	public String getAlarmContent() {
		return alarmContent;
	}
	public void setAlarmContent(String alarmContent) {
		this.alarmContent = alarmContent;
	}
	public Timestamp getAlarmDatetime() {
		return alarmDatetime;
	}
	public void setAlarmDatetime(Timestamp alarmDatetime) {
		this.alarmDatetime = alarmDatetime;
	}
	public String getAlarmRead() {
		return alarmRead;
	}
	public void setAlarmRead(String alarmRead) {
		this.alarmRead = alarmRead;
	}
	
	
	
	
}
