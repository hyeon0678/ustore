package com.ustore.employee.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.commons.lang3.builder.HashCodeExclude;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ustore.employee.dto.DeptDto;
import com.ustore.employee.service.DepartmentManagementService;

@RestController
@RequestMapping("/department")
public class DepartmentManagementController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	DepartmentManagementService deptMangeService;
	
	@GetMapping("/{deptIdx}")
	@ResponseBody
	public HashMap<String, Object>departmentInfo(@PathVariable int deptIdx){
		HashMap<String, Object> result = new HashMap<String, Object>();
		ArrayList<DeptDto> list = (ArrayList<DeptDto>) deptMangeService.getDepartmentInfo(deptIdx);
		result.put("deptList",list);
		return result;
	}
	
	@GetMapping("/delete/{deptIdx}")
	@ResponseBody
	public HashMap<String, Object>depertmentDelete(@PathVariable int deptIdx, Principal principal){
		HashMap<String, Object> result = new HashMap<String, Object>();
		int row = deptMangeService.deleteDept(principal.getName(), deptIdx);
		result.put("","");
		return result;
	}
	
	@PostMapping("/insert")
	@ResponseBody
	public HashMap<String, Object>depertmentAdd(@RequestParam HashMap<String, String> param, Principal principal){
		logger.info("insert param : {}",param.toString());
		HashMap<String, Object> result = new HashMap<String, Object>();
		int row = deptMangeService.insertDept(principal.getName(), param);
		if(row>0) {
			result.put("result","success");
			return result;	
		}
		result.put("result","fail");
		return result;
		
	}

}
