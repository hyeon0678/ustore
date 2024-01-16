package com.ustore.member.controller;

import java.io.IOException;
import java.security.Principal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
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
	public ModelAndView home() {
		logger.info("멤버쉽 페이지 들어가기");
		
		ModelAndView mav = new ModelAndView("member/customerlist");
		
		int cuscount = service.cuscount();
		int delcuscount = service.delcuscount();
		
		logger.info("cuscount : "+cuscount);
		mav.addObject("cuscount",cuscount);
		logger.info("delcuscount : "+delcuscount);
		mav.addObject("delcuscount",delcuscount);
		
		
		return mav;
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
	
	@RequestMapping(value = "customer/detail.ajax/bill")
	@ResponseBody
	public HashMap<String, Object> bill(@RequestParam String paymentidx) {
		logger.info("영수증 리스트 호출하기");
		logger.info("paymentidx : "+paymentidx);
		
		HashMap<String, Object> result = new HashMap<String, Object>();
			logger.info("회원리스트 == 등록된 회원 리스트");
			ArrayList<HashMap<String, String>> list = service.detailbill(paymentidx);
			HashMap<String, String> map = service.billlist(paymentidx);
				
			
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			logger.info("map : " +map);	
			result.put("map", map);
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
		int point = service.findnum(idx);
		
		logger.info("file : "+file);
		
		DateCalculator datecal= new DateCalculator();
		String nowdate = datecal.dateNow().toString();	
		Date nowDate2 = datecal.dateNow();
		logger.info("nowdate : "+nowdate);		
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.MONTH, -1);
		String beforeMonth = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
		logger.info("beforeMonth"+beforeMonth);
		HashMap<String,String> map= service.detail(idx);
		String sumpoint = service.sumpoint(idx);
		logger.info("누적 포인트 : "+sumpoint);
		if (sumpoint == null) {
			sumpoint = "0";
		}
		logger.info("누적 포인트 : "+sumpoint);
		logger.info("nowDate2 : "+nowDate2);
		ModelAndView mav = new ModelAndView("member/cusdetail");
		mav.addObject("info",map);
		mav.addObject("file",file);
		mav.addObject("nowdate",nowdate);
		mav.addObject("nowDate2",nowDate2);
		mav.addObject("beforeMonth",beforeMonth);
		mav.addObject("totalpoint", point);
		mav.addObject("sumpoint", sumpoint);
				
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
	
	// customer/detail.ajax/productlistcall
		@RequestMapping(value = "/customer/detail.ajax/basicproduct")
		@ResponseBody
		public HashMap<String, Object> basicproduct(@RequestParam int memberidx, @RequestParam boolean weekbutton) {
			logger.info(" 기본 구매이력 리스트 불러오기  호출하기");
			logger.info("member idx : "+memberidx);
			logger.info("weekbutton : "+weekbutton);
			
			String enddate = null;
			String startdate = null;
			DateCalculator datecal= new DateCalculator();
			enddate = datecal.dateNow().toString();		
			logger.info("enddate : "+enddate);		
			
			if (weekbutton == false) {
				Calendar mon = Calendar.getInstance();
				mon.add(Calendar.MONTH, -1);
				 startdate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
				logger.info("startdate"+startdate);
				
				logger.info("startdate : "+startdate);
				logger.info("enddate : "+enddate);
				
			}else if (weekbutton == true) {
			    Calendar week = Calendar.getInstance();    
			    week.add(Calendar.DATE , -7);    
			   startdate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(week.getTime());   
				logger.info("startdate"+startdate);
				
				logger.info("startdate : "+startdate);
				logger.info("enddate : "+enddate);
			}
			
			HashMap<String, Object> result = new HashMap<String, Object>();
			
			ArrayList<HashMap<String, String>> list = service.productlistcall(memberidx, startdate, enddate );
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
			
			
			return result; // 앞으로 보낸다
		}
		
		
		
		@RequestMapping(value = "/customer/detail.ajax/datepoint")
		@ResponseBody
		public HashMap<String, Object> datepoint(@RequestParam String startdate,@RequestParam String enddate,@RequestParam int memberidx) {
			logger.info("날짜 리스트 불러오기  호출하기");
			logger.info("member idx : "+memberidx);
			logger.info("startdate : "+startdate);
			logger.info("enddate : "+enddate);
			
			HashMap<String, Object> result = new HashMap<String, Object>();
			
			ArrayList<HashMap<String, String>> list = service.pointlistcall(memberidx,startdate, enddate);
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
			
			
			return result; // 앞으로 보낸다
		}
		
		
		
		
				@RequestMapping(value = "/customer/detail.ajax/basicpointlist")
				@ResponseBody
				public HashMap<String, Object> basicpointlist(@RequestParam int memberidx) {
					logger.info(" 포인트이력 리스트 불러오기  호출하기");
					logger.info("member idx : "+memberidx);
					DateCalculator datecal= new DateCalculator();
					
					
					Calendar mon = Calendar.getInstance();
					mon.add(Calendar.MONTH, -1);
					String enddate = datecal.dateNow().toString();	
					String startdate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
					logger.info("enddate : "+enddate);		
					
					 startdate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
					logger.info("startdate"+startdate);
					
					HashMap<String, Object> result = new HashMap<String, Object>();
					
					ArrayList<HashMap<String, String>> list = service.pointlistcall(memberidx,startdate, enddate);
					logger.info("num"+list.toString());
					result.put("list", list);
					result.put("size", list.size());
					logger.info("result : " +result);	
					
					
					
					return result; // 앞으로 보낸다
				}
	
	
	
	
	// @RequestBody ApprovalDto dto
	@PostMapping(value="/customer/joinnum")
	public ModelAndView joinnum(MemberDto dto,  RedirectAttributes rAttr, Principal Principal) {
		
		logger.info("=============멤버쉽 등록 요청 ");
		logger.info("dto : "+dto.getName());
		logger.info("dto : "+dto.getGradeIdx());
		String  emproynum = Principal.getName();
		logger.info("emproynum : "+emproynum);
		int empnum = Integer.parseInt(emproynum);
		dto.setUpdateBy(empnum);
		
		//logger.info("params : "+params);
		// 일반회원, 등록된 회원 , 스탠다드
		// params : {member_type=82, member_state=84, memberstate=80, name=ds, num=sdf, postal_code=sdf, street_address=sdf, detail_address=sdf, brithdate=sdf, gender=남}
		
		int row = service.joinnum(dto);
		int memberIdx = service.cusnum();
		logger.info("idx : "+memberIdx);
		String msg =service.pointinsert(memberIdx);
		logger.info("msg : "+msg);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/customer/home");
		rAttr.addFlashAttribute("msg", msg);
		//mav.addObject("msg", msg);
		return mav;
		
		
		//return null;
	}

	@PostMapping(value="/customer/joinbis")
	public ModelAndView joinbis(MultipartFile photos,MemberDto dto,Principal Principal	, RedirectAttributes rAttr) throws IOException {
		
		logger.info("=============멤버쉽 등록 요청 ");
		logger.info("params : "+dto);
		logger.info("photos : "+photos);
		String  emproynum = Principal.getName();
		logger.info("emproynum : "+emproynum);
		int empnum = Integer.parseInt(emproynum);
		dto.setUpdateBy(empnum);
		
		// 일반회원, 등록된 회원 , 스탠다드
		// params : {member_type=83, member_state=84, grade_idx=80, business_num=x z, 
		// photos=_멤버쉽] 사업자 회원 상세.jpg, name= zx , num=zx , postal_dode=x , street_address=zx , 
		// detail_address=x , brithdate=zx , gender=남}
		
		String msg = service.joinbis(dto);
		int cusnum = service.cusnum();
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
		// mav.addObject("msg"+msg);
		return mav;
		
	}
	
	@RequestMapping(value = "customer/joinbis.ajax/bisnum")
	@ResponseBody
	public HashMap<String, Object> bisnum(@RequestParam String bisnum) {
		logger.info("사업자 회원 번호 확인   호출하기");
		logger.info("member idx : "+bisnum);
		ModelAndView mav = new ModelAndView();
		
		String msg = service.bischeck(bisnum);
		logger.info("msg : "+msg);
		
		//mav.addObject("msg",msg);
		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("result", msg);
		return result;
		//return mav; // 앞으로 보낸다
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
		service.delupdate(idx);
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
		
		ModelAndView mav = new ModelAndView("redirect:/customer/detail?idx="+idx);
		//logger.info("info : "+map.toString());
		//mav.addObject("msg",msg);
		
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
