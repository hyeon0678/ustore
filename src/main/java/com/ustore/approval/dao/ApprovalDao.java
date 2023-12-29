package com.ustore.approval.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.approval.dto.ApprovalDto;
import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface ApprovalDao {

	ApprovalDto findByCommonIdx(Integer common_idx);

	void saveHtmlByCommonIdx(String html, Integer common_idx);

	EmployeeDto getEmployeeInfo(String emp_idx);

	void saveAddrLine(List<Map<String, Object>> approvalLines);

	void saveRecv(List<Map<String, Object>> receivers);

	void saveContent(String apprSubject, String apprContent);

	
	
}
