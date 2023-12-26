package com.ustore.employee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmpProfileController {

	@GetMapping("/employee/home")
	public String home() {
		return "employee/profile";
	}
}
