package com.ustore.approval.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.ustore.approval.dao.ApprovalDao;
import com.ustore.approval.dto.ApprDocDto;
import com.ustore.approval.dto.ApprovalDto;
import com.ustore.employee.dto.EmployeeDto;

@Service
public class ApprovalService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalDao dao;
		
	public EmployeeDto getEmployeeInfo(String emp_idx) {
		return dao.getEmployeeInfo(emp_idx);
	}

	
	/*public void tempSave(ApprDocDto dto) {
		Integer apprIdx = dto.getApprIdx();
		if(apprIdx == null) {
			dao.tempSaveContent(dto);
		}else {
			dao.updateTempSaveContent(dto);
		}
		
		List<Map<String, Object>> approvalLines = dto.getApprovalLines();
		List<Map<String, Object>> receivers = dto.getReceivers();
		for (int i = 0; i < approvalLines.size(); i++) {
			Map<String, Object> approvalData = approvalLines.get(i);

		    ApprovalDto approvalDto = new ApprovalDto();

		    // 이름, 직급, 부서명, apprOrder 설정
		    approvalDto.setEmpName((String) approvalData.get("name"));
		    approvalDto.setPositionType((String) approvalData.get("positionType"));
		    approvalDto.setDeptName((String) approvalData.get("department"));
		    approvalDto.setApprOrder(i);
		    
		    dao.tempSaveApprline(approvalDto);
		}
		dao.tempSaveApprRecv(dto.getReceivers());
		    
	}*/
		
		
		
}
	

	

	
	

	

	

	
	

