package com.ustore.chat.dto;

import java.sql.Date;
import java.util.List;

public class ChatRoomDto {
	private int chatRoomIdx;
	private String chatRoomName;
	private String isIndividual;
	private List<String> participaintList;
	private String regBy;
	private Date maxSentDate;
	private Date maxReceivedDate;
	private int readCnt;
	
	
	public String getRegBy() {
		return regBy;
	}
	public void setRegBy(String regBy) {
		this.regBy = regBy;
	}
	public int getChatRoomIdx() {
		return chatRoomIdx;
	}
	public void setChatRoomIdx(int chatRoomIdx) {
		this.chatRoomIdx = chatRoomIdx;
	}
	public String getChatRoomName() {
		return chatRoomName;
	}
	public void setChatRoomName(String chatRoomName) {
		this.chatRoomName = chatRoomName;
	}
	public String getIsIndividual() {
		return isIndividual;
	}
	public void setIsIndividual(String isIndividual) {
		this.isIndividual = isIndividual;
	}
	public List<String> getParticipaintList() {
		return participaintList;
	}
	public void setParticipaintList(List<String> participaintList) {
		this.participaintList = participaintList;
	}
	
	
}
