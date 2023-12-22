package com.ustore.employee.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public String insertEmp(@ModelAttribute EmployeeDto employee, RedirectAttributes rattr) {
		logger.info("params : " + employee);
		boolean success = groupManageService.insertEmp(employee);
		if(success) {
			return "redirect:/registration";
			//회원 상세 페이지로 이동...
		}
		rattr.addFlashAttribute("msg","사원등록에 실패했습니다");
		return "redirect:/registration";
	}
	
}	
