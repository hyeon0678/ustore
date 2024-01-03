package com.ustore.alarm.controller;

import java.security.Principal;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ustore.alarm.dao.AlarmDao;

@RestController
@RequestMapping("/alarm")
public class AlarmController {
	
	@Autowired
	AlarmDao dao;
	
	@GetMapping("/list.ajax")
	public HashMap<String, Object> getAlarmList(Principal principal) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list",dao.selectUnReadAlarmList(principal.getName()));
		return map;
	}
	
	@GetMapping("/delete/{alarmIdx}")
	public String deleteAlarm(@PathVariable(value = "alarmIdx") int alarmIdx) {
		int row = dao.deleteAlarm(alarmIdx);
		return Integer.toString(row);
	}
	
	@GetMapping("/deleteAll")
	public String deleteAll(Principal principal) {
		int row = dao.deleteAll(principal.getName());
		return Integer.toString(row);
	}

	
}
