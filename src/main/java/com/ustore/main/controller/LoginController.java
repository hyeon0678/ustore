package com.ustore.main.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@GetMapping("/")
	public String loginForm() {
		logger.info("loginForm");
		return "main/login";
	}
	
	@GetMapping("/loginerror")
	public String loginError(@RequestParam("login_error") String loginError, RedirectAttributes rattr) {
		logger.info("login error : "+loginError);
		rattr.addFlashAttribute("msg", "fail");
		return "redirect:/";
	}
	
	@GetMapping("/resetPw")
	public String resetPw() {
		return "common/reset_pw";
	}
	
	
}
