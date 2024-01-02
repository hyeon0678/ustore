package com.ustore.approval.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.approval.dto.ApprovalDto;
import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface ApprovalDao {
	
	EmployeeDto getEmployeeInfo(String emp_idx);

	int tempSaveContent(ApprovalDto dto);

	void updateTempSaveContent(ApprovalDto dto);

	void saveApprLine(ApprovalDto approvalDto);

	void saveApprRecv(ApprovalDto approvalDto);

	int saveContent(ApprovalDto dto);

	ArrayList<ApprovalDto> getTempList(String emp_idx, HashMap<String, String> params);





	

	
	
	
}
