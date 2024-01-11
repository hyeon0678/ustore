package com.ustore.main.controller;


import java.util.HashMap;

import org.apache.commons.lang3.builder.HashCodeExclude;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ustore.main.service.security.MainService;

@Controller
public class LoginController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private MainService mainService;
	
	
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
	
	@GetMapping("/main/searchPw")
	public String resetPw(Model model) {
		return "common/search_pw";
	}
	
	@PostMapping("/main/pwReset")
	public String getResetPwEmpInfo(@RequestParam HashMap<String, String> map, RedirectAttributes rattr){
		logger.info("params : {} ,{}", map.get("empIdx"), map.get("empBirth"));
		String msg = mainService.resetPw(map);
		if(msg.equals("fail")) {
			rattr.addFlashAttribute("msg", "fail");
		}else {
			rattr.addFlashAttribute("msg", msg);			
		}
		return "redirect:/main/searchPw";
	}
}
