package com.ustore.alarm.dao;
import java.security.Principal;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.alarm.dto.AlarmDto;


@Mapper
public interface AlarmDao {
	List<AlarmDto> selectUnReadAlarmList(String empIdx);
	List<String> selectEmployees();
	int deleteAlarm(int alarmIdx);
	int deleteAll(String empIdx);
	int selectUnReadSchedule(String empIdx);
	
}
