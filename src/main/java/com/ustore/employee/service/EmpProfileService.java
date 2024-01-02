package com.ustore.employee.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ustore.employee.dao.EmpProfileDao;

@Service
public class EmpProfileService {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmpProfileDao dao;

	
	@Transactional
	public void addevent(Map<String, String> params) {
		logger.info("service_params : " + params);
		dao.addevent(params);
		dao.addalarmevent(params);
	}

	public List<Map<String, Object>> profilecalendar() {
		return dao.profilecalendar();
	}

	public void attendance(Map<String, String> params) {
		logger.info("service_attendance : " + params);
		dao.attendance(params);
	}

	public void leavework(Map<String, String> params) {
		logger.info("service_leavework : " + params);
		dao.leavework(params);
	}

	public int employeDel(String sch_idx) {
		logger.info("일정 삭제 service " + sch_idx);
		int employeDel = dao.employeDel(sch_idx);
		return employeDel;
	}

	public int scheduleDel(String sch_idx) {
		return dao.scheduleDel(sch_idx);
	}
	
}
