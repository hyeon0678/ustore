package com.ustore.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {

	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	@GetMapping(value = "/customer/home")
	public String home() {
		logger.info("멤버쉽 페이지 들어가기");
		return "member/customerlist";
	}
	
	@GetMapping(value = "/customer/businessperson")
	public String businessperson() {
		logger.info("사업자 회원 등록 페이지 들어가기");
		return "member/customerlist";
	}
	
	@GetMapping(value = "/customer/general")
	public String general() {
		logger.info("일반 회원 등록 페이지 들어가기");
		return "member/customerlist";
	}
	
	
	
	// 임시로 확인 가능한 헤더 와 사이드바
	@GetMapping(value = "/customer/header")
	public String header() {
		logger.info("header 페이지 들어가기");
		return "common/header";
	}
	
	@GetMapping(value = "/customer/side")
	public String side() {
		logger.info("side 페이지 들어가기");
		return "common/sidebar";
	}
	
	
	
	

	
	
	
	
	
	
}
