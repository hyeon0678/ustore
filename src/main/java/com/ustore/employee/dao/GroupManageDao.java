package com.ustore.employee.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface GroupManageDao {

	int insertEmp(EmployeeDto employee);

	String selectMaxEmpIdx();

	int insertEducation(EmployeeDto employee);

}