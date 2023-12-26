package com.ustore.employee.service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ustore.employee.dao.GroupManageDao;
import com.ustore.employee.dto.EmployeeDto;
import com.ustore.utils.defineEnums.DepartmentEnum;
import com.ustore.utils.defineEnums.PositionEnum;

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
		
		String maxEmpIdx = groupManageDao.selectMaxEmpIdx();
		String nextIdx = "0001";
		String empId = "";
		String maxYear = maxEmpIdx.substring(0,4);
		
		if(!maxYear.equals(enterYear)) {
			maxYear = enterYear;
		}else if(maxYear.equals(enterYear)&&(maxEmpIdx!=null || maxEmpIdx!="")){
			nextIdx = maxEmpIdx.substring(4);
			nextIdx = String.format("%04d", Integer.parseInt(nextIdx)+1);			
		}
		
		empId = maxYear + nextIdx;
		employee.setEmpIdx(empId);
		logger.info(empId);
		int positionCode = PositionEnum.findDefindCode(employee.getPositionType());
		employee.setPosition(positionCode);
		
		int departmentCode = DepartmentEnum.findDefindCode(employee.getDeptName());
		employee.setDeptId(departmentCode);
		
		int row = groupManageDao.insertEmp(employee);
		row += groupManageDao.insertEducation(employee);
		
		employee.setEmpPhone(employee.getEmpPhone().replace("-", ""));
		
		if(row>1) {
			return true;
		}
		return false;
	}

	public ArrayList<EmployeeDto> employeeInfo(HashMap<String, String> params) {
		ArrayList<EmployeeDto> list = groupManageDao.employeeInfo(params);
		return list;
	}

	public void empModify(HashMap<String, String> params) {
		groupManageDao.empModifyEmp(params);
		//Map<String, Object>map = groupManageDao.selectEdu(params);
		//if(map != null) {
			//groupManageDao.empModEduUpdate(params);
		//}else {
			//groupManageDao.empModEduInsert(params);
		//}
	}
	
}
