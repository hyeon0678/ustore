package com.ustore.chat.dto;

import java.sql.Timestamp;
import java.util.List;

public class ChatRoomDto implements Comparable<ChatRoomDto>{
	private int chatRoomIdx;
	private String chatRoomName;
	private String isIndividual;
	private List<String> participaintList;
	private String regBy;
	private Timestamp maxSentDate;
	private Timestamp maxReceivedDate;
	private int readCnt;
	private int lastMsgTime;
	
	
	
	public int getLastMsgTime() {
		return lastMsgTime;
	}
	public void setLastMsgTime(int lastMsgTime) {
		this.lastMsgTime = lastMsgTime;
	}
	public Timestamp getMaxSentDate() {
		return maxSentDate;
	}
	public void setMaxSentDate(Timestamp maxSentDate) {
		this.maxSentDate = maxSentDate;
	}
	public Timestamp getMaxReceivedDate() {
		return maxReceivedDate;
	}
	public void setMaxReceivedDate(Timestamp maxReceivedDate) {
		this.maxReceivedDate = maxReceivedDate;
	}
	public int getReadCnt() {
		return readCnt;
	}
	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}
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
	
	@Override
	public int compareTo(ChatRoomDto o) {
		//Integer.parseInt(o.getLastMsgTime()) - Integer.parseInt(getLastMsgTime());
		return 1; 
	}
	
	
}
