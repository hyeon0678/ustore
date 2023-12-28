package com.ustore.member.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ustore.employee.service.GroupManageService;
import com.ustore.member.service.MemberService;
import com.ustore.utils.SaveFile;

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
	public ModelAndView joinnum(@RequestParam HashMap<String, String> params
			,HttpSession session,  RedirectAttributes rAttr) {
		
		logger.info("=============멤버쉽 등록 요청 ");
		logger.info("params : "+params);
		// 일반회원, 등록된 회원 , 스탠다드
		// params : {member_type=82, member_state=84, memberstate=80, name=ds, num=sdf, postal_code=sdf, street_address=sdf, detail_address=sdf, brithdate=sdf, gender=남}
		
		String msg = service.joinnum(params);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/customer/home");
		rAttr.addFlashAttribute("msg", msg);
		return mav;
		//return null;
	}

	@PostMapping(value="/customer/joinbis")
	public ModelAndView joinbis(MultipartFile photos,@RequestParam HashMap<String, String> params,
			HttpSession session,  RedirectAttributes rAttr) {
		
		logger.info("=============멤버쉽 등록 요청 ");
		logger.info("params : "+params);
		logger.info("photos : "+photos);
		
		// 일반회원, 등록된 회원 , 스탠다드
		// params : {member_type=83, member_state=84, grade_idx=80, business_num=x z, 
		// photos=_멤버쉽] 사업자 회원 상세.jpg, name= zx , num=zx , postal_dode=x , street_address=zx , 
		// detail_address=x , brithdate=zx , gender=남}
		
		String msg = service.joinbis(params);
		if(photos != null && !photos.isEmpty()) {         
	         // 파일 저장 코드
	         String num = Integer params.get("num");
			
	         SaveFile saveFile = new SaveFile();
	         service.getcusnum(params.)
	         FileDto file = new FileDto();
	         file = saveFile.returnFileList(uploadFile, 74, params.get("emp_idx"));
	         
	         
	         saveFile.saveFile(file);
	         
	         
	         FileDao.saveFile(file);
	      }
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/customer/home");
		rAttr.addFlashAttribute("msg", msg);
		return mav;
		// return null;
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
