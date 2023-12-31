package com.ustore.approval.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.servlet.ModelAndView;

import com.ustore.approval.dto.ApprovalDto;
import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface ApprovalDao {
	
	EmployeeDto getEmployeeInfo(String emp_idx);




	

	
	
	
}
