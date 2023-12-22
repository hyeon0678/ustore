package com.ustore.main.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	
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
}
