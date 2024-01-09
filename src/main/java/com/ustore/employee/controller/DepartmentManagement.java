package com.ustore.employee.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ustore.employee.dto.DeptDto;
import com.ustore.employee.service.DepartmentManagementService;

@RestController
@RequestMapping("/department")
public class DepartmentManagement {
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
	public HashMap<String, Object>depertmentDelete(@PathVariable int deptIdx){
		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("","");
		return result;
	}
	
	@PostMapping("/insert/{deptIdx}")
	@ResponseBody
	public HashMap<String, Object>depertmentAdd(@PathVariable int deptIdx, @RequestBody HashMap<String, String> parentDept){
		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("","");
		return result;
	}

}
