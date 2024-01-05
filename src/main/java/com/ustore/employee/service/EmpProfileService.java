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

	public List<Map<String, Object>> profilecalendar() {
		return dao.profilecalendar();
	}

	public String attendance(Map<String, String> params) {
		String msg = "출근 데이터 입력";
		if(dao.attCheck(params.get("sch_subject"))==0) {
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
		if(dao.levCheck(params.get("sch_subject"))==0) {
			logger.info("퇴근 데이터 : "+params);
			int row = dao.leavework(params);
			logger.info("퇴근 입력 성공");
			msg = row > 0 ? "퇴근 데이터 입력 성공":"퇴근 데이터 입력 실패";
			logger.info("얼럿 값 출력 : "+msg);
		}
		return msg;
	}
		
//	public void attendance(Map<String, String> params) {
//		logger.info("service_attendance : " + params);
//		dao.attendance(params);
//	}
	
//	public int attendance(HashMap<String, String> params) {
//		int attendance = 0;
//		logger.info("출근 정보 등록 : " + params);
//		attendance = dao.attendance(params);
//		logger.info("출근 정보 등록 2 : " + attendance);
//		
//		return attendance;
//	}

	

	public int employeDel(String sch_idx) {
		logger.info("일정 삭제 service " + sch_idx);
		int employeDel = dao.employeDel(sch_idx);
		return employeDel;
	}

	public int scheduleDel(String sch_idx) {
		return dao.scheduleDel(sch_idx);
	}

	

	

	/*
	 * public int attendancesetting(HashMap<String, String> params) { int attSet =
	 * 0; logger.info("attSetting_params : " + params); attSet = dao.attSet(params);
	 * logger.info("attSetting_params2 : " + attSet);
	 * 
	 * return attSet; }
	 */

	
	
}
