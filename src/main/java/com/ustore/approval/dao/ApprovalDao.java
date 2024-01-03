package com.ustore.approval.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.approval.dto.ApprovalDto;
import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface ApprovalDao {
	
	EmployeeDto getEmployeeInfo(String emp_idx);

	int tempSaveContent(ApprovalDto dto);

	void saveApprLine(ApprovalDto approvalDto);

	void saveApprRecv(ApprovalDto approvalDto);

	int saveContent(ApprovalDto dto);

	ArrayList<ApprovalDto> getTempList(String emp_idx);

	void updateTempDoc(ApprovalDto dto);

	ApprovalDto getContent(int apprIdx, int common_idx);

	ArrayList<ApprovalDto> getApprLine(int apprIdx);

	ArrayList<ApprovalDto> getRecv(int apprIdx);





	

	
	
	
}
