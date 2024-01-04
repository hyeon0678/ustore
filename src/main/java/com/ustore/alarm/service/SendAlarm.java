package com.ustore.alarm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessageSendingOperations;

public class SendAlarm {
	@Autowired
	private SimpMessageSendingOperations operations;
	
	//전자 결재 -> 상신 올리면 다음 결재할 사람한테로 알림이 가야함
	public void sendAlarm(String user) {
		operations.convertAndSendToUser(user, "/queue/alarm", "EXIST");
	}

}
