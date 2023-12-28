package com.ustore.employee.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(value = "/employee/addevent", method = {RequestMethod.GET, RequestMethod.POST})
	public String addevent(@RequestParam Map<String, String> params, Model model) {
		logger.info("event_params : "+ params);
		
		service.addevent(params);
		
		return "redirect:/employee/home";
	}
	
	
	
	
}
