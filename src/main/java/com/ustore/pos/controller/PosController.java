package com.ustore.pos.controller;


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

import com.ustore.member.dto.MemberDto;
import com.ustore.pos.service.PosService;

@Controller
@RequestMapping("/pos")
public class PosController {
	@Autowired PosService posService;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/item")
	public String pos_item(@RequestParam String memberIdx) {
		logger.info("회원번호 도착 : "+memberIdx);
		return "/pos/pos_item";
	}
	@RequestMapping("/member")
	public ModelAndView pos_member() {
		ModelAndView mav = new ModelAndView("/pos/pos_member");
		mav.addObject("list", posService.posMember());		
		return mav;
	}
	@RequestMapping("/memberSearch.ajax")
	@ResponseBody
	public Map<String, Object> memberSearch(@RequestParam HashMap<String, String>params) {
		logger.info("검색 정보 도착 확인 : "+params);
		Map<String, Object> map = new HashMap<String, Object>();
		ArrayList<MemberDto> list = posService.memberSearch(params);
		map.put("list", list);
		return map;
	}
}
