package com.ustore.employee.service;

import java.security.Principal;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ustore.employee.dao.GroupManageDao;
import com.ustore.employee.dto.EmployeeDto;
import com.ustore.scheduler.AnnualScheduler;
import com.ustore.scheduler.dao.AnnualSchedulerDao;
import com.ustore.scheduler.dto.AnnualLeavesDto;
import com.ustore.utils.DateCalculator;
import com.ustore.utils.defineEnums.DepartmentEnum;
import com.ustore.utils.defineEnums.PositionEnum;

@Service
public class GroupManageService {
	Logger logger = LoggerFactory.getLogger(getClass());
	private DateCalculator dateCalc = new DateCalculator();
	@Autowired
	GroupManageDao groupManageDao;
	@Autowired
	PasswordEncoder encoder;
	@Autowired
	AnnualSchedulerDao annualSchedulerDao;

	@Transactional
	public String insertEmp(EmployeeDto employee, String empIdx) {
		employee.setRegBy(empIdx);
		
		
		String enterYear = dateCalc.currentDate();
		logger.info("current year : "+enterYear);
		
		employee.setEmpPhone(employee.getEmpPhone().replace("-", ""));
		employee.setEmpExtNo(employee.getEmpExtNo().replace("-", ""));
		String newPw = encoder.encode(employee.getEmpPhone().substring(3));
		logger.info(employee.getEmpPhone().substring(3));
		employee.setEmpPw(newPw);
		
		String maxEmpIdx = groupManageDao.selectMaxEmpIdx();
		String nextIdx = "0001";
		String empId = "";
		String maxYear = "";
		if(maxEmpIdx != null) {
			maxYear = maxEmpIdx.substring(0,4);
		}
		 
		
		if(!maxYear.equals(enterYear)) {
			maxYear = enterYear;
		}else if((maxEmpIdx!=null || maxEmpIdx!="")&&maxYear.equals(enterYear)){
			nextIdx = maxEmpIdx.substring(4);
			nextIdx = String.format("%04d", Integer.parseInt(nextIdx)+1);			
		}
		
		empId = maxYear + nextIdx;
		employee.setEmpIdx(empId);
		logger.info(empId);
		int positionCode = PositionEnum.findDefindCode(employee.getPositionType());
		employee.setPosition(positionCode);
		
		int row = groupManageDao.insertEmp(employee);
		row += groupManageDao.insertEducation(employee);
		
		
		
		if(row>1) {
			return empId;
		}
		return null;
	}

	public ArrayList<EmployeeDto> employeeInfo(String emp_idx) {
		ArrayList<EmployeeDto> list = groupManageDao.employeeInfo(emp_idx);
		return list;
	}

	public int empModify(HashMap<String, String> params) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		params.put("update", dateFormat.format(dateCalc.dateNow()));

		// 연차 비교 - 비교가 다를시 연차 업데이트
		int leaveIncdec = groupManageDao.empLeaveIncdec(params.get("emp_idx"));
		if (leaveIncdec != Integer.parseInt(params.get("leave_incdec"))) {
			AnnualLeavesDto list = new AnnualLeavesDto();
			list.setEmpIdx(params.get("emp_idx"));
			list.setLeaveDate(dateCalc.dateNow());
			if (leaveIncdec < Integer.parseInt(params.get("leave_incdec"))) {
				list.setLeaveType(60);
			} else {
				list.setLeaveType(61);
			}
			list.setLeaveIncdec(Integer.parseInt(params.get("leave_incdec")) - leaveIncdec);
			list.setRegBy(params.get("principal"));
			annualSchedulerDao.insertAnnual(list);
		}
		
		int success = groupManageDao.empModifyEmp(params);
		Map<String, Object>map = groupManageDao.selectEdu(params);
		if(map != null) {
			groupManageDao.empModEduUpdate(params);
		}else {
			groupManageDao.empModEduInsert(params);
		}
		return success;
	}

	public void delete(String emp_idx, Principal principal) {
		groupManageDao.delete(emp_idx,principal);
		
	}

	public void imgInfo(String idx) {
		String file_idx = groupManageDao.imgInfo(idx);
		logger.info(file_idx);
		if (file_idx != null) {
			groupManageDao.delImgInfo(file_idx);
		}
	}

	public ArrayList<EmployeeDto> dept() {
		ArrayList<EmployeeDto> list = groupManageDao.dept();
		return list;
	}
	
}
