package com.ustore.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.ustore.employee.dto.EmployeeDto;
import com.ustore.main.dto.EmpRolesDto;
import com.ustore.main.service.security.EmployeeUserDto;

@Mapper
public interface EmployeeUserDao {
	
	// getEmpInfo
	EmployeeDto getEmpInfo(String empIdx);
	
	//getEmpRoles
	List<EmpRolesDto> getEmpRoles(String empIdx);
	
	
}
