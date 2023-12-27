package com.ustore.employee.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface EmpProfileDao {

	void addevent(EmployeeDto dto);

	
	
}
