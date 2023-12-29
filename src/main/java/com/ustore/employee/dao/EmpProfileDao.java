package com.ustore.employee.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EmpProfileDao {

	void addevent(Map<String, String> params);
	
	void attendance(Map<String, String> params);

	List<Map<String, Object>> profilecalendar();

}
