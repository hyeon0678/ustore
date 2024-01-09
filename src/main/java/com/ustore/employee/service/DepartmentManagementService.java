package com.ustore.employee.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.employee.dao.GroupManageDao;
import com.ustore.employee.dto.DeptDto;

@Service
public class DepartmentManagementService {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	GroupManageDao dmDao;
	ArrayList<DeptDto> deptList = null;
	
	
	public List<DeptDto> getDepartmentInfo(int deptIdx) {
		ArrayList<DeptDto> result = new ArrayList<DeptDto>();
		deptList = dmDao.selectDeptList();
		for(DeptDto dto : deptList) {
			if(dto.getParentDeptId() == deptIdx) {
				int empNum = getEmpNum(Integer.toString(dto.getDeptId()));
				dto.setEmpCnt(empNum);
				int leaf = dmDao.getLeaf(dto.getDeptId());
				dto.setLeaf(leaf);
				result.add(dto);
			}
		}
		return result;
	}
	
	private int getEmpNum(String deptId) {
		int result = 0;
		for(DeptDto dto : deptList) {
			List<String> pathList = new ArrayList<String>(List.of(dto.getPath().split(",")));
			if(pathList.contains(deptId)) {
				result += dmDao.selectDeptEmpNum(dto.getDeptId());
			}
			logger.info("dept empNum : {}, {}",deptId,result);
		}
		
		return result;
	}

}
