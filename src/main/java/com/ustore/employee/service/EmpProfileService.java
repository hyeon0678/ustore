package com.ustore.employee.service;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.employee.dao.EmpProfileDao;
import com.ustore.employee.dto.EmployeeDto;

@Service
public class EmpProfileService {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmpProfileDao dao;

	public void addevent(Map<String, String> params) {
		
		EmployeeDto dto = new EmployeeDto();
		
		dao.addevent(dto);
		
	}
	
	
	
}
