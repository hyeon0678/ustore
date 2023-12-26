package com.ustore.main.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.employee.dto.EmployeeDto;
import com.ustore.main.dao.EmployeeUserDao;
import com.ustore.main.dto.EmpRolesDto;
import com.ustore.main.service.security.EmployeeRoleDto;
import com.ustore.main.service.security.UserDbService;
import com.ustore.main.service.security.EmployeeUserDto;

@Service
public class UserService implements UserDbService{

	@Autowired
	EmployeeUserDao dao;
	
	@Override
	public EmployeeUserDto getUser(String loginUserId) {
		EmployeeDto empDto = dao.getEmpInfo(loginUserId);
		EmployeeUserDto employeeUserDto = new EmployeeUserDto(empDto.getEmpIdx(), empDto.getEmpPw());
		return employeeUserDto;
	}

	@Override
	public List<EmployeeRoleDto> getUserRoles(String loginUserId) {
		List<EmployeeRoleDto> roleList = new ArrayList<EmployeeRoleDto>();
		for(EmpRolesDto roleDto : dao.getEmpRoles(loginUserId)) {
			EmployeeRoleDto role = new EmployeeRoleDto(roleDto.getEmpIdx(), roleDto.getRole());
			roleList.add(role);
		}
		
		return roleList;
	}

}
