package com.ustore.approval.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.approval.dao.ApprovalDao;
import com.ustore.approval.dto.ApprovalDto;
import com.ustore.employee.dto.EmployeeDto;
import com.ustore.member.dto.MemberDto;

@Service
public class ApprovalService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalDao dao;
	
	public String addApprLine(String emp_idx) {
		dao.addApprLine(emp_idx);
		return "";
	}
	
	public void saveApprLineData(List<EmployeeDto> approvalLines, List<EmployeeDto> receivers) {
		// TODO Auto-generated method stub
	}
	
	public void saveHtmlByCommonIdx(String html, Integer common_idx) {
		dao.saveHtmlByCommonIdx(html, common_idx);
	}

	

	
	
	
	
	
}
