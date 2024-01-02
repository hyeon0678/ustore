package com.ustore.employee.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EmpProfileDao {

	void addevent(Map<String, String> params);
	void addalarmevent(Map<String, String> params);
	
	void attendance(Map<String, String> params);
	
	void leavework(Map<String, String> params);

	List<Map<String, Object>> profilecalendar();

	int employeDel(String sch_idx);

	int scheduleDel(String sch_idx);


	

}
