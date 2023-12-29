package com.ustore.employee.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.employee.dao.EmpProfileDao;

@Service
public class EmpProfileService {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmpProfileDao dao;

	public void addevent(Map<String, String> params) {
		logger.info("service_params : " + params);
		dao.addevent(params);
	}

	public List<Map<String, Object>> profilecalendar() {
		return dao.profilecalendar();
	}

	public void attendance(Map<String, String> params) {
		logger.info("service_attendance : " + params);
		dao.attendance(params);
	}
	
}
