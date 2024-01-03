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
	
	@Scheduled(cron = "0 1 * * * ?") // 매달 1일에 시작된다.
	public void getUnReadAlarm() {
		List<String> employeeList = dao.selectEmployees();
		List<AlarmDto> alarmList = null;
		for(String e : employeeList) {
			int unReadSchedule = dao.selectUnReadSchedule(e);
			if(unReadSchedule > 0) {
				operations.convertAndSendToUser(e, "/queue/alarm", "EXIST");
			}
		}
	}
}
