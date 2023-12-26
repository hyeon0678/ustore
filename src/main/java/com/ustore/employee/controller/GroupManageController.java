package com.ustore.employee.controller;


import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ustore.employee.dto.EmployeeDto;
import com.ustore.employee.service.GroupManageService;


@Controller
@RequestMapping("/employee")
public class GroupManageController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	GroupManageService groupManageService;
	
	@GetMapping("/registration")
	public String empRegistration() {
		return "employee/employee_registration";
	}
	
	@PostMapping("/registration")
	//@ModelAttribute EmployeeDto employee
	public String insertEmp(@ModelAttribute EmployeeDto params, RedirectAttributes rattr) {
		logger.info("params : " + params.getEmpBirth());
		boolean success = groupManageService.insertEmp(params);
		if(success) {
			return "redirect:/registration";
			//회원 상세 페이지로 이동...
		}
		rattr.addFlashAttribute("msg","사원등록에 실패했습니다");
		return "redirect:/employee/registration";
	}
	
	@RequestMapping("/management")
	public String empManagement() {
		return "employee/personnel_management";
	}
	@RequestMapping("/employeeInfo.ajax")
	@ResponseBody
	public Map<String, Object>employeeInfo(@RequestParam HashMap<String, String> params) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", groupManageService.employeeInfo(params));
		return map;
	}
	
	@RequestMapping("/update")
	public ModelAndView empUpdate(@RequestParam HashMap<String, String>params) {
		ModelAndView mav = new ModelAndView("employee/personnel_update");
		logger.info(params.get("emp_name"));
		mav.addObject("list", groupManageService.employeeInfo(params));
		return mav;
	}
	
	@RequestMapping("/modify.ajax")
	public String empModify(@RequestParam HashMap<String, String>params) {
		logger.info("수정 파람값 도착 확인"+params);
		groupManageService.empModify(params);
		
		return "redirect:/employee/management";
	}

	

}	
