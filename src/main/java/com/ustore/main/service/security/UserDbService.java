package com.ustore.main.service.security;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface UserDbService {
	public EmployeeUserDto getUser(String loginUserId);
	public List<EmployeeRoleDto> getUserRoles(String loginUserId);
}
