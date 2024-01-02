package com.ustore.approval.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.ustore.approval.dao.ApprovalDao;
import com.ustore.approval.dto.ApprovalDto;
import com.ustore.employee.dto.EmployeeDto;

@Service
public class ApprovalService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalDao dao;
		
	public EmployeeDto getEmployeeInfo(String emp_idx) {
		return dao.getEmployeeInfo(emp_idx);
	}

	@Transactional(isolation = Isolation.DEFAULT)
	public void tempSaveAppr(ApprovalDto dto) {
		
		if(dto.getApprIdx()== null) {
			int generatedKey = dao.tempSaveContent(dto);
		    dto.setApprIdx(generatedKey);
		}else {
			dao.updateTempSaveContent(dto);
		}
		logger.info("appr_idx : "+dto.getApprIdx());
		
		List<Map<String, String>> apprlist = dto.getApprovalLines();
		for (Map<String, String> emp : apprlist) {
			dto.setApprover(emp.get("name"));
			dto.setApprOrder(Integer.parseInt(emp.get("apprOrder")));
			dto.setApprConfirm(emp.get("apprConfirm"));
			dto.setApprIdx(dto.getApprIdx());			
			dao.saveApprLine(dto);
		}
		List<Map<String, String>> recvlist = dto.getReceivers();
		for (Map<String, String> recv : recvlist) {
			dto.setReceiver(recv.get("name"));
			dao.saveApprRecv(dto);						    
		}
	}

	@Transactional(isolation = Isolation.DEFAULT)
	public void sendAppr(ApprovalDto dto) {
		
		int generatedKey = dao.saveContent(dto);
		dto.setApprIdx(generatedKey);
		logger.info("appr_idx : "+dto.getApprIdx());
		
		List<Map<String, String>> apprlist = dto.getApprovalLines();
		for (Map<String, String> emp : apprlist) {
			dto.setApprover(emp.get("name"));
			dto.setApprOrder(Integer.parseInt(emp.get("apprOrder")));
			dto.setApprConfirm(emp.get("apprConfirm"));
			dto.setApprIdx(dto.getApprIdx());			
			dao.saveApprLine(dto);
		}
		List<Map<String, String>> recvlist = dto.getReceivers();
		for (Map<String, String> recv : recvlist) {
			dto.setReceiver(recv.get("name"));
			dao.saveApprRecv(dto);						    
		}
		
	}


	public ArrayList<ApprovalDto> getTempList(String emp_idx, HashMap<String, String> params) {
		return dao.getTempList(emp_idx, params);
	}
		
		
		
}
	

	

	
	

	

	

	
	

