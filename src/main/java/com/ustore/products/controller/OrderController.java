package com.ustore.products.controller;

import java.util.ArrayList;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ustore.products.dto.OrderDto;
import com.ustore.products.service.OrderService;

@Controller
public class OrderController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired OrderService service;

	@GetMapping(value = "/order/list")
		public String order(Model model) {
		
		
		ArrayList<OrderDto> list = service.list(); //발주 리스트 
		ArrayList<OrderDto> list2 = service.orderList(); // 발주 장바구니 리스트
	
		
		model.addAttribute("list",list);
		logger.info("list : "+list);
		model.addAttribute("list2",list2);
		logger.info("list2 : "+list2);
		ArrayList<OrderDto> list3 = service.driveList(); // 배달기사 리스트
		model.addAttribute("list3",list3);
				logger.info("list3 : "+list3);
		
		
		
		
		return "products/order";
	}
	@RequestMapping(value = "/order/ordercart/insert", method = {RequestMethod.GET, RequestMethod.POST})
	public String ordercartInsert(@RequestParam Map<String, String>params, Model model) {
		logger.info("params :"+params);
	
		service.orderCartInsert(params);
	
		 			
		return "redirect:/order/list";
		
		
		
	}
	@RequestMapping(value = "/dateSelect", method = {RequestMethod.GET, RequestMethod.POST})
	public String ordercartList() {
		
		
	logger.info("컨트롤러 들어옴");
		
		
	return "redirect:/order/list";
	}
	
	
	@GetMapping(value = "/test123")
	public String hom123123() {
		
		
		
		return "member/customerList";
	}
	
		
	
	
	
	
}
