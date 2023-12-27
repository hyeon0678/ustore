package com.ustore.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.employee.dto.DeptDto;
import com.ustore.employee.dto.EmployeeDto;
import com.ustore.main.dto.EmployeeRoleDto;
import com.ustore.main.dto.EmployeeUserDto;

@Mapper
public interface EmployeeUserDao {
	public EmployeeUserDto getUser(String loginUserId);
	public List<DeptDto> getDeptList(int deptId);
}
