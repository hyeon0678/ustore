package com.ustore.employee.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface GroupManageDao {

	int insertEmp(EmployeeDto employee);

	String selectMaxEmpIdx();

	int insertEducation(EmployeeDto employee);

	ArrayList<EmployeeDto> employeeInfo(HashMap<String, String> params);

	void empModifyEmp(HashMap<String, String> params);

	Map<String, Object> selectEdu(HashMap<String, String> params);

	void empModEduInsert(HashMap<String, String> params);

	void empModEduUpdate(HashMap<String, String> params);

}