package com.ustore.employee.service;

import java.sql.Date;
import java.time.LocalDate;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ustore.employee.dao.GroupManageDao;
import com.ustore.employee.dto.EmployeeDto;

@Service
public class GroupManageService {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	GroupManageDao groupManageDao;
	@Autowired
	PasswordEncoder encoder;
	
	@Transactional
	public boolean insertEmp(EmployeeDto employee) {
		LocalDate now = LocalDate.now();
		String enterYear = Integer.toString(now.getYear());
		logger.info("current year : "+enterYear);
		
		String newPw = encoder.encode(employee.getEmpPhone().substring(3));
		logger.info(employee.getEmpPhone().substring(3));
		employee.setEmpPw(newPw);
		
		Integer maxEmpIdx = groupManageDao.selectMaxEmpIdx();
		int nextIdx = 0;
		
		if(maxEmpIdx!=null || maxEmpIdx!=0) {
			nextIdx = maxEmpIdx%10000;
		}else {
			nextIdx=1;
		}
		enterYear+=nextIdx;
		logger.info("emp id : "+enterYear);
		employee.setDeptId(Integer.parseInt(enterYear));
		//int row = groupManageDao.insertEmp(employee);
		//row += groupManageDao.insertEducation(employee);
		
//		if(row>1) {
//			return true;
//		}
		return false;
	}
	
	
	
}
