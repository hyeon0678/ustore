package com.ustore.approval.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.approval.dao.ApprovalDao;
import com.ustore.employee.dto.EmployeeDto;

@Service
public class ApprovalService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalDao dao;
	
		
	public void saveApprLineData(List<EmployeeDto> approvalLines, List<EmployeeDto> receivers) {
		// TODO Auto-generated method stub
	}
	
	public void saveHtmlByCommonIdx(String html, Integer common_idx) {
		dao.saveHtmlByCommonIdx(html, common_idx);
	}

	public EmployeeDto getEmployeeInfo(String emp_idx) {
		return dao.getEmployeeInfo(emp_idx);
	}

	

	
	
	
	
	
}
