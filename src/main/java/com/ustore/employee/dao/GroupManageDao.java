package com.ustore.employee.dao;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.employee.dto.DeptDto;
import com.ustore.employee.dto.EmployeeDto;

@Mapper
public interface GroupManageDao {

	int insertEmp(EmployeeDto employee);

	String selectMaxEmpIdx();

	int insertEducation(EmployeeDto employee);

	ArrayList<EmployeeDto> employeeInfo(String emp_idx);

	int empModifyEmp(HashMap<String, String> params);

	Map<String, Object> selectEdu(HashMap<String, String> params);

	void empModEduInsert(HashMap<String, String> params);

	void empModEduUpdate(HashMap<String, String> params);

	void delete(String emp_idx, Principal principal);

	String imgInfo(String idx);

	void delImgInfo(String file_idx);

	int empLeaveIncdec(String string);
	
	ArrayList<DeptDto> selectDeptList();

	int getLeaf(int deptId);

	int selectDeptEmpNum(int deptId);

	int insertDept(HashMap<String, String> param);

	int deleteDept(String name, int deptIdx);

}