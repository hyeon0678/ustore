package com.ustore.member.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ustore.member.service.MemberService;

@Controller
public class MemberController {

	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired MemberService service;
	
	
	@GetMapping(value = "/customer/home")
	public String home() {
		logger.info("멤버쉽 페이지 들어가기");
		return "member/customerlist";
	}
	
	@GetMapping(value = "/customer/businessperson")
	public String businessperson() {
		logger.info("사업자 회원 등록 페이지 들어가기");
		return "member/cusjoin_bis";
	}
	
	@GetMapping(value = "/customer/general")
	public String general() {
		logger.info("일반 회원 등록 페이지 들어가기");
		return "member/cusjoin_num";
	}
	
	@GetMapping(value = "/customer/chat")
	public String chat() {
		logger.info("체팅 페이지 들어가기");
		return "chat/chat";
	}
	
	
	@PostMapping(value="/customer/joinnum")
	public ModelAndView join(@RequestParam HashMap<String, String> params) {
		
		logger.info("=============멤버쉽 등록 요청 ");
		logger.info("params : "+params);
		// params : {memberstate=스탠다드, name=김지혜, num=fsd, postal_code=sdf, street_address=sdf, detail_address=sdf, brithdate=sdf, gender=1}
		
		String msg = service.joinnum(params);
		ModelAndView mav = new ModelAndView("/customer/home");
		mav.addObject("msg", msg);
		return mav;
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
