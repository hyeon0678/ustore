package com.ustore.main.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@GetMapping("/")
	public String home() {
		return "main/login";
	}
	
	@GetMapping("/mailIn")
	public String mailIn() {
		return "mail/maillist_in";
	}
	
	@GetMapping("/mailtest")
	@ResponseBody
	public HashMap<String, Object> mailList(){
		HashMap<String, Object> list = new HashMap<String, Object>();
		String l = "";
		list.put("list", l);
		return list;
	}
	
	@GetMapping("/approval/myapproval/{applovalIdx}")
	public String test(@PathVariable("applovalIdx") String applovalIdx, @RequestParam String type){
		logger.info(type+", "+applovalIdx);
		HashMap<String, Object> list = new HashMap<String, Object>();
		String l = "";
		list.put("list", l);
		return "index";
	}
}
