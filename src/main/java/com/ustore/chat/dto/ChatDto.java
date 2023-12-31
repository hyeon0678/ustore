package com.ustore.chat.dto;

import java.sql.Timestamp;

public class ChatDto{
	
	private int chatIdx;
	private String sender;
	private String receiver;
	private String data;
	private String roomNum;
	private String type;
	private Timestamp sendDate;
	private String emp_idx;
	
	
	public String getEmp_idx() {
		return emp_idx;
	}
	public void setEmp_idx(String emp_idx) {
		this.emp_idx = emp_idx;
	}
	public int getChatIdx() {
		return chatIdx;
	}
	public void setChatIdx(int chatIdx) {
		this.chatIdx = chatIdx;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public Timestamp getSendDate() {
		return sendDate;
	}
	public void setSendDate(Timestamp sendDate) {
		this.sendDate = sendDate;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(String roomNum) {
		this.roomNum = roomNum;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}
