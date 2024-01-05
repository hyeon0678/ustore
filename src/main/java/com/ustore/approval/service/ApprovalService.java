package com.ustore.approval.service;

import java.util.ArrayList;
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
import com.ustore.products.dto.OrderDto;

@Service
public class ApprovalService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalDao dao;
		
	public EmployeeDto getEmployeeInfo(String emp_idx) {
		return dao.getEmployeeInfo(emp_idx);
	}

	@Transactional(isolation = Isolation.DEFAULT)
	public void tempSaveAppr(ApprovalDto dto) {
				
		dao.tempSaveContent(dto);
		logger.info("appr_idx : "+dto.getApprIdx());
		
		List<Map<String, String>> apprlist = dto.getApprovalLines();
		for (Map<String, String> emp : apprlist) {
			dto.setEmpIdx(emp.get("empIdx"));
			dto.setApprover(emp.get("name"));
			dto.setApprOrder(Integer.parseInt(emp.get("apprOrder")));
			dto.setApprConfirm(emp.get("apprConfirm"));
			dto.setApprIdx(dto.getApprIdx());
			dto.setApprType(emp.get("apprType"));
			dto.setPositionType(emp.get("positionType"));
			dto.setDeptName(emp.get("department"));
			dao.saveApprLine(dto);
		}
		List<Map<String, String>> recvlist = dto.getReceivers();
		for (Map<String, String> recv : recvlist) {
			dto.setEmpIdx(recv.get("empIdx"));
			dto.setReceiver(recv.get("name"));
			dto.setPositionType(recv.get("positionType"));
			dto.setDeptName(recv.get("department"));
			dao.saveApprRecv(dto);						    
		}
	}

	@Transactional(isolation = Isolation.DEFAULT)
	public void sendAppr(ApprovalDto dto) {
		
		dao.saveContent(dto);
		logger.info("appr_idx : "+dto.getApprIdx());
		
		List<Map<String, String>> apprlist = dto.getApprovalLines();
		for (Map<String, String> emp : apprlist) {
			dto.setEmpIdx(emp.get("empIdx"));
			dto.setApprover(emp.get("name"));
			dto.setApprOrder(Integer.parseInt(emp.get("apprOrder")));
			dto.setApprConfirm(emp.get("apprConfirm"));
			dto.setApprIdx(dto.getApprIdx());
			dto.setApprType(emp.get("apprType"));
			dto.setPositionType(emp.get("positionType"));
			dto.setDeptName(emp.get("department"));
			dao.saveApprLine(dto);
		}
		List<Map<String, String>> recvlist = dto.getReceivers();
		for (Map<String, String> recv : recvlist) {
			dto.setEmpIdx(recv.get("empIdx"));
			dto.setReceiver(recv.get("name"));
			dto.setPositionType(recv.get("positionType"));
			dto.setDeptName(recv.get("department"));
			dao.saveApprRecv(dto);						    
		}		
	}

	public ArrayList<ApprovalDto> getTempList(String emp_idx) {
		return dao.getTempList(emp_idx);
	}
		
		
	public void updateTempDoc(ApprovalDto dto) {
		dao.updateTempDoc(dto);		
	}

	
	public ApprovalDto getContent(int apprIdx, int common_idx) {
		return dao.getContent(apprIdx, common_idx);
	}

	public ArrayList<Map<String, Object>> getApprLine(int apprIdx) {
		return dao.getApprLine(apprIdx);
	}

	public ArrayList<Map<String, Object>> getRecv(int apprIdx) {
		return dao.getRecv(apprIdx);
	}

	public boolean chkRecordExists(Integer apprIdx) {
		int count = dao.chkRecordExists(apprIdx);
		return count > 0;
	}

	public List<OrderDto> getOrderList(String orderDate) {
		return dao.getOrderList(orderDate);
	}



}
	

	

	
	

	

	

	
	

