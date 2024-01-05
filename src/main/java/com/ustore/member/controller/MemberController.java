package com.ustore.member.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ustore.employee.service.GroupManageService;
import com.ustore.fileSystem.dao.FileDao;
import com.ustore.fileSystem.dto.FileDto;
import com.ustore.member.dto.MemberDto;
import com.ustore.member.service.MemberService;
import com.ustore.utils.DateCalculator;
import com.ustore.utils.SaveFile;

@Controller
public class MemberController {

	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired MemberService service;
	@Autowired GroupManageService groupManageService;
	@Autowired FileDao filedao;
	
	
	@GetMapping(value = "/customer/home")
	public String home() {
		logger.info("멤버쉽 페이지 들어가기");
		
		return "member/customerList";
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
	
	@RequestMapping(value = "customer/home.ajax/customersearch")
	@ResponseBody
	public HashMap<String, Object> customersearch(@RequestParam String keyword,@RequestParam int state) {
		logger.info("회원 검색 리스트 호출하기");
		logger.info("keyword : "+keyword);
		
		HashMap<String, Object> result = new HashMap<String, Object>();
			logger.info("회원리스트 == 등록된 회원 리스트");
			ArrayList<HashMap<String, String>> list = service.cussearch(keyword, state);
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
		return result;
	}
	
	
	
	
	@GetMapping(value = "/customer/businessperson")
	public ModelAndView businessperson() {
		logger.info("사업자 회원 등록 페이지 들어가기");
		
		ModelAndView mav = new ModelAndView("member/cusjoin_bis");
		DateCalculator datecal= new DateCalculator();
		String nowdate = datecal.dateNow().toString();		
		logger.info("nowdate : "+nowdate);		
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.YEAR, +1);
		String exdate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
		logger.info("exdate"+exdate);

		mav.addObject("nowdate",nowdate);
		mav.addObject("exdate",exdate);
		
		return mav;
	}
	
	@GetMapping(value = "/customer/general")
	public ModelAndView general() {
		logger.info("일반 회원 등록 페이지 들어가기");
		
		ModelAndView mav = new ModelAndView("member/cusjoin_num");
		DateCalculator datecal= new DateCalculator();
		String nowdate = datecal.dateNow().toString();			
		logger.info("nowdate : "+nowdate);		
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.YEAR, +1);
		String exdate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
		logger.info("exdate"+exdate);
		

		mav.addObject("nowdate",nowdate);
		mav.addObject("exdate",exdate);
		
		return mav;
	}
	
	@RequestMapping(value = "/customer/detail")
	public ModelAndView cusdetail(@RequestParam int idx) {
		logger.info("회원 상세 페이지 들어가기");
		logger.info("idx : "+idx);
		
		MemberDto dto = new MemberDto();
		
		HashMap<String, String> file = service.filefind(idx);
		logger.info("file : "+file);
		
		DateCalculator datecal= new DateCalculator();
		String nowdate = datecal.dateNow().toString();		
		logger.info("nowdate : "+nowdate);		
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.MONTH, -1);
		String beforeMonth = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
		logger.info("beforeMonth"+beforeMonth);
		
		
		
		HashMap<String,String> map= service.detail(idx);
		ModelAndView mav = new ModelAndView("member/cusdetail");
		mav.addObject("info",map);
		mav.addObject("file",file);
		mav.addObject("nowdate",nowdate);
		mav.addObject("beforeMonth",beforeMonth);
		//mav.addObject("membertype",membertype);
		//mav.addObject("grade",grade);
		return mav;
	}
	
	// customer/detail.ajax/productlistcall
	@RequestMapping(value = "/customer/detail.ajax/productlistcall")
	@ResponseBody
	public HashMap<String, Object> productlistcall(@RequestParam String startdate,@RequestParam String enddate,@RequestParam int memberidx) {
		logger.info("구매이력 리스트 불러오기  호출하기");
		logger.info("member idx : "+memberidx);
		logger.info("startdate : "+startdate);
		logger.info("enddate : "+enddate);
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, String>> list = service.productlistcall(memberidx, startdate, enddate );
		logger.info("num"+list.toString());
		result.put("list", list);
		result.put("size", list.size());
		logger.info("result : " +result);	
		
		
		
		return result; // 앞으로 보낸다
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
		int cusnum = service.cusnum(params);
		service.pointinsert(cusnum);
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
		service.pointinsert(cusnum);
		String idx = Integer.toString(cusnum);
		if(photos != null && !photos.isEmpty()) {		
			
			// 파일 저장 코드
			//groupManageService.imgInfo(idx);
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
	
	@RequestMapping(value = "customer/update")
	@ResponseBody
	public ModelAndView cusupdate(@RequestParam int idx) {
		logger.info("회원수정 페이지  호출하기");
		logger.info("member idx : "+idx);
		
		
		HashMap<String,String> map= service.update(idx); // 여기서 디비(서비스)에서 값을 받았다
		ModelAndView mav = new ModelAndView("member/cusupdate");
		logger.info("info : "+map.toString());
		
		mav.addObject("info",map); // 값을 넣어준다
		
		return mav; // 앞으로 보낸다
	}
	
	//customer/update.ajax/updatesave
	@RequestMapping(value = "customer/update.ajax/updatesave")
	@ResponseBody
	public ModelAndView updatesave(@RequestParam HashMap<String, String> params) {
		logger.info("회원수정 페이지(save)  호출하기");
		logger.info("member idx : "+params);
		String msg = service.updatesave(params);
		ModelAndView mav = new ModelAndView("member/customerlist");
		//logger.info("info : "+map.toString());
		mav.addObject("msg",msg);
		mav.addObject("idx",params.get("idx"));
		return mav;
	}
	
	@RequestMapping(value = "customer/del")
	@ResponseBody
	public ModelAndView cusdel(@RequestParam int idx) {
		logger.info("회원탈퇴 페이지  호출하기");
		logger.info("member idx : "+idx);
		
		String msg = service.del(idx);
		logger.info(idx+" : 탈퇴 성공");
		ModelAndView mav = new ModelAndView("member/customerlist");
		//logger.info("info : "+map.toString());
		mav.addObject("msg",msg);
		
		return mav;
	}
	
	@RequestMapping(value = "customer/newdate")
	@ResponseBody
	public ModelAndView newdate(@RequestParam int idx,@RequestParam int gradeidx) {
		logger.info("회원탈퇴 페이지  호출하기");
		logger.info("member idx : "+idx);
		logger.info("gradeidx  : "+gradeidx);
		
		String msg = service.newdate(idx,gradeidx);
		
		ModelAndView mav = new ModelAndView("member/customerlist");
		//logger.info("info : "+map.toString());
		mav.addObject("msg",msg);
		
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
