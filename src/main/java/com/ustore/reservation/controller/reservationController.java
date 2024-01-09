package com.ustore.reservation.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;

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
	
	@RequestMapping("/equipment")
	public ModelAndView equipnent() {
		ModelAndView mav = new ModelAndView("reservation/reservation_equipment");
		ArrayList<reservationDto>list = reservationService.resourceInfo();
		mav.addObject("equipment", list);

		return mav;
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
	public ArrayList<reservationDto> resourceInfo() {
		ArrayList<reservationDto> list = reservationService.resourceInfo();
		return list;
	}
	
	@RequestMapping("/delResource.ajax")
	@ResponseBody
	public boolean delResource(@RequestParam String resourceIdx, Principal principal) {
		logger.info("자원삭제 파람 값 도착 : "+principal.getName());
		return reservationService.delResource(resourceIdx,principal.getName());
	}
}
