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
import com.ustore.pos.dto.PosDto;
import com.ustore.pos.service.PosService;

@Controller
@RequestMapping("/pos")
public class PosController {
	@Autowired PosService posService;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping("/item")
	public ModelAndView pos_item(@RequestParam String memberIdx) {
		logger.info("회원번호 도착 : "+memberIdx);
		ModelAndView mav = new ModelAndView("/pos/pos_item");
		mav.addObject("memberIdx", memberIdx);
		// 상품 리스트 불러오기 코드
		mav.addObject("itemList", posService.posItem());
		ArrayList<PosDto> itemCart = posService.posCart(memberIdx);
		// 회원 장바구니 불러오기 코드
		mav.addObject("itemCart", itemCart);
		mav.addObject("allSellingSum",allSellingSum(itemCart));
		return mav;
	}
	
	private String allSellingSum(ArrayList<PosDto> itemCart) {
		int allSellingSum = 0;
		for (PosDto posDto : itemCart) {
			allSellingSum += Integer.parseInt(posDto.getSellingSum());
		}
		return String.valueOf(allSellingSum);
	}

	@RequestMapping("/updateCart.ajax")	
	@ResponseBody
	public Map<String, Object> updateCart(@RequestParam HashMap<String, String>params){
		logger.info("카트 업데이트 파람 요청 도착 확인 : "+params);
		boolean success = posService.updateCart(params);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success",success);
		ArrayList<PosDto> itemCart = posService.posCart(params.get("memberId"));
		map.put("itemCart",itemCart );
		map.put("allSellingSum",allSellingSum(itemCart));
		return map;
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
	
	@RequestMapping("/cart.ajax")
	@ResponseBody
	public Map<String, Object> posCartInsert(@RequestParam HashMap<String, String>params){
		logger.info("카트 파람 값 도착 확인 : "+ params);
		boolean success = posService.posCartInsert(params);
		Map<String, Object>map = new HashMap<String, Object>();
		ArrayList<PosDto> itemCart = posService.posCart(params.get("memberId"));
		map.put("success", success);
		map.put("itemCart",itemCart );
		map.put("allSellingSum",allSellingSum(itemCart));
		return map;
	}
	
	@RequestMapping("/deleteCart.ajax")
	@ResponseBody
	public Map<String, Object> deleteCart(@RequestParam HashMap<String, String>params){
		posService.deleteCart(params);
		Map<String, Object>map = new HashMap<String, Object>();
		ArrayList<PosDto> itemCart = posService.posCart(params.get("memberId"));
		map.put("itemCart",itemCart );
		map.put("allSellingSum",allSellingSum(itemCart));
		return map;
	}
	
	@RequestMapping("/productSearch.ajax")
	@ResponseBody
	public Map<String, Object> productSearch(@RequestParam HashMap<String, String>params){
		Map<String, Object> map = new HashMap<String, Object>();
		ArrayList<PosDto> itemList = posService.productSearch(params);
		map.put("itemList", itemList);
		logger.info("아이템 검색 확인 : "+itemList);
		return map;
	}
	

}
