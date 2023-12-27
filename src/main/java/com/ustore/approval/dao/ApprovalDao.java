package com.ustore.approval.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.approval.dto.ApprovalDto;
import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface ApprovalDao {

	ApprovalDto findByCommonIdx(Integer common_idx);

	void saveHtmlByCommonIdx(String html, Integer common_idx);

	ArrayList<EmployeeDto> addApprLine(String emp_idx);

	
	
}
