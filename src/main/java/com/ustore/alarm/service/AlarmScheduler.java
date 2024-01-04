package com.ustore.alarm.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.ustore.alarm.dao.AlarmDao;
import com.ustore.alarm.dto.AlarmDto;


@Component
public class AlarmScheduler {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	private final SimpMessageSendingOperations operations; 
	private final AlarmDao dao;
	
	public AlarmScheduler(SimpMessageSendingOperations operations, AlarmDao dao) {
		this.operations = operations;
		this.dao = dao;
	}
	// 등록이 되었습니다 -> 모달로
	//@Scheduled(cron = "0 0/1 * * * ?")
	public void getUnReadAlarm() {
		List<String> employeeList = dao.selectEmployees();
		for(String e : employeeList) {
			int unReadSchedule = dao.selectUnReadSchedule(e);
			int unReadChat = dao.selectUnReadChat(e);
			if(unReadChat>0) {
				operations.convertAndSendToUser(e, "/topic/chatAlarm", "EXIST");
			}
			if(unReadSchedule > 0) {
				operations.convertAndSendToUser(e, "/topic/alarm", "EXIST");
			}else if(unReadSchedule <= 0) {
				operations.convertAndSendToUser(e, "/topic/alarm", "NONE");
			}
		}
		System.out.println("------- alarm scheduler");
	}
}
