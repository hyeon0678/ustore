package com.ustore.reservation.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ustore.reservation.dto.reservationDto;
import com.ustore.reservation.service.reservationService;

@Controller
@RequestMapping("/reservation")
public class reservationController {
	@Autowired reservationService reservationService;
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/room")
	public ModelAndView room(Principal principal) {
		ModelAndView mav = new ModelAndView("reservation/reservation_room");
		mav.addObject("resourceType","회의실");
		mav.addObject("loginInfo", principal.getName());
		return mav;
	}
	
	@RequestMapping("/equipment")
	public ModelAndView equipnent(Principal principal) {
		ModelAndView mav = new ModelAndView("reservation/reservation_equipment"); 
		mav.addObject("resourceType", "물류 장비"); 
		mav.addObject("loginInfo", principal.getName());
		return mav;
	}
	
	@RequestMapping("/drawResource.ajax")
	@ResponseBody
	public Map<String, Object> drawResource(@RequestParam String day,Principal principal,@RequestParam String resourceType){
		Map<String, Object> map = new HashMap<String, Object>();
		logger.info("그리기 파람 도착 확인 : "+day);
		map.put("item",reservationService.resourceInfo(resourceType));
		map.put("booking",reservationService.bookingInfo(day,principal.getName(),resourceType));
		return map;
	}
	
	@RequestMapping("/addResource.ajax")
	@ResponseBody
	public boolean addResource(@RequestParam HashMap<String, String>params,Principal principal) {
		params.put("regBy", principal.getName());
		logger.info("자원 요청 파람 값 확인 : "+params);
		 
		return reservationService.addResource(params);
	}
	
	@RequestMapping("/resourceInfo.ajax")
	@ResponseBody
	public ArrayList<reservationDto> resourceInfo(@RequestParam String resourceType) {
		ArrayList<reservationDto> list = reservationService.resourceInfo(resourceType);
		return list;
	}
	
	@RequestMapping("/delResource.ajax")
	@ResponseBody
	public boolean delResource(@RequestParam String resourceIdx, Principal principal) {
		logger.info("자원삭제 파람 값 도착 : "+principal.getName());
		return reservationService.delResource(resourceIdx,principal.getName());
	}
	
	@RequestMapping("/addBooking.ajax")
	@ResponseBody
	public boolean addBooking(@RequestParam HashMap<String, String>params, Principal principal) {
		logger.info("예약 추가 파람 도착 확인 : "+params);
		params.put("regBy", principal.getName());  
		return reservationService.addBooking(params);
	}
	
	
	@RequestMapping("/infoBooking.ajax")
	@ResponseBody
	public ArrayList<reservationDto> infoBooking(@RequestParam String bookingIdx){
		return reservationService.infoBooking(bookingIdx);  
	}
	
	@RequestMapping("/infoBookingDel.ajax")
	@ResponseBody
	public boolean infoBookingDel(@RequestParam String bookingIdx) {
		logger.info("파람 도착 확인 : "+bookingIdx);
		return reservationService.infoBookingDel(bookingIdx);
	}
	
	
	
	
	
}
