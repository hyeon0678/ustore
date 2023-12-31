package com.ustore.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ustore.fileSystem.dao.FileDao;
import com.ustore.fileSystem.dto.FileDto;
import com.ustore.member.dto.MemberDto;
import com.ustore.member.service.MemberService;
import com.ustore.utils.SaveFile;

@Controller
public class MemberController {

	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired MemberService service;
	@Autowired FileDao filedao;
	
	
	@GetMapping(value = "/customer/home")
	public String home() {
		logger.info("멤버쉽 페이지 들어가기");
		
		return "member/customerlist";
	}
	
	
	@RequestMapping(value = "customer/home.ajax/list")
	@ResponseBody
	public HashMap<String, Object> customerhomelist(@RequestParam int pageState) {
		logger.info("멤버쉽 리스트 호출하기");
		logger.info("pagestate : "+pageState);
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		if (pageState == 84) {
			logger.info("회원리스트 == 등록된 회원 리스트");
			ArrayList<HashMap<String, String>> list = service.listall(pageState);
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
		}else {
			logger.info("회원리스트 == 탈퇴한 회원 리스트");
			ArrayList<HashMap<String, String>> list = service.listall(pageState);
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
		}
		return result;
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
	
	@GetMapping(value = "/customer/detail")
	public String cusdetail(@RequestParam int idx) {
		logger.info("회원 상세 페이지 들어가기");
		logger.info("idx : "+idx);
		
		
		
		
		
		
		return "member/cusdetail";
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
			HttpSession session,  RedirectAttributes rAttr) throws IOException {
		
		logger.info("=============멤버쉽 등록 요청 ");
		logger.info("params : "+params);
		logger.info("photos : "+photos);
		
		// 일반회원, 등록된 회원 , 스탠다드
		// params : {member_type=83, member_state=84, grade_idx=80, business_num=x z, 
		// photos=_멤버쉽] 사업자 회원 상세.jpg, name= zx , num=zx , postal_dode=x , street_address=zx , 
		// detail_address=x , brithdate=zx , gender=남}
		
		String msg = service.joinbis(params);
		int cusnum = service.cusnum(params);
		if(photos != null && !photos.isEmpty()) {		
			
			// 파일 저장 코드
			//service.imgInfo(cusnum);
			SaveFile saveFile = new SaveFile();
			
			FileDto file = new FileDto();
			file = saveFile.returnFileList(photos, 76,Integer.toString(cusnum));
			logger.info("file : "+file);
			
			saveFile.saveFile(file);
			
			filedao.saveFile(file);
			
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
