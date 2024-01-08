package com.ustore.employee.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ustore.employee.dao.EmpProfileDao;
import com.ustore.employee.dto.EmpProrileDto;
import com.ustore.employee.dto.EmployeeDto;
import com.ustore.utils.defineEnums.FileTypeEnum;

@Service
public class EmpProfileService {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmpProfileDao dao;

	public EmpProrileDto homeProfileDetail(String emp_idx) {

		return dao.homeProfileDetail(emp_idx);
	}
	
	@Transactional
	public void addevent(Map<String, String> params) {
		logger.info("service_params : " + params);
		dao.addevent(params);
		dao.addalarmevent(params);
	}

	public List<Map<String, Object>> profilecalendar(String empIdx) {
		return dao.profilecalendar(empIdx);
	}

	public String attendance(Map<String, String> params) {
		String msg = "출근 데이터 입력";
		
		if(dao.attCheck(params.get("emp_idx"))==0) {
			logger.info("출근 데이터 : " + params);
			int row = dao.attendance(params);
			logger.info("출근 입력 성공");
			msg = row > 0 ? "출근 데이터 입력 성공":"출근 데이터 입력 실패";
			logger.info("얼럿 값 출력 : "+msg);
		}
		return msg;
	}
	
	public String leavework(Map<String, String> params) {
		String msg = "퇴근 데이터 입력";
		if(dao.levCheck(params.get("emp_idx"))==0) {
			logger.info("퇴근 데이터 : "+params);
			int row = dao.leavework(params);
			logger.info("퇴근 입력 성공");
			msg = row > 0 ? "퇴근 데이터 입력 성공":"퇴근 데이터 입력 실패";
			logger.info("얼럿 값 출력 : "+msg);
		}
		return msg;
	}

	public int employeDel(String sch_idx) {
		logger.info("일정 삭제 service " + sch_idx);
		int employeDel = dao.employeDel(sch_idx);
		return employeDel;
	}

	public int scheduleDel(String sch_idx) {
		return dao.scheduleDel(sch_idx);
	}

	public EmployeeDto getEmpUpdateData(String name) {
		EmployeeDto empInfo= dao.selectEmpUpdateData(FileTypeEnum.findDefindCode("employee"),name);
		return empInfo;
	}
}
