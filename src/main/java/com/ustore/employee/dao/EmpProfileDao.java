package com.ustore.employee.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.employee.dto.EmpProrileDto;
import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface EmpProfileDao {

	
	
	void addevent(Map<String, String> params);
	
	void addalarmevent(Map<String, String> params);
	
	int attendance(Map<String, String> params);
	
	int leavework(Map<String, String> params);

	List<Map<String, Object>> profilecalendar(String empIdx);

	int employeDel(String sch_idx);

	int scheduleDel(String sch_idx);
	
	int attCheck(String string);
	
	int levCheck(String string);
	
	EmpProrileDto homeProfileDetail(String emp_idx);
	
	EmployeeDto selectEmpUpdateData(String empIdx);
	
	int insertEmpUpdateData(EmployeeDto dto);

	void addLeaveEvent(Map<String, String> params);

	HashMap<String, String> selectEmpPhoto(int parseInt, int findDefindCode);

	int updateEmpInfoAll(EmployeeDto dto);

	int updateEmpInfo(EmployeeDto dto);

	int annualCount(String emp_idx);

	List<Map<String, Object>> scheduleinfo(String sch_idx);


	

}
