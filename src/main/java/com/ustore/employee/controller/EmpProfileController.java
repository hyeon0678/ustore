package com.ustore.employee.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ustore.employee.dto.EmployeeDto;
import com.ustore.employee.service.EmpProfileService;

@Controller
public class EmpProfileController {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired EmpProfileService service;
	
	@GetMapping("/employee/home")
	public String home() {
		return "employee/profile";
	}
	
	@GetMapping("/employee/addevent")
	public String addevent(@RequestParam Map<String, String>params) {
		logger.info("add event params : "+params);
		
		service.addevent(params);
		
		return "redirect:/employee/home";
	}
	
	
	
	
}
