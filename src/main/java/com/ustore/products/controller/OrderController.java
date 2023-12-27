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
		
		
		ArrayList<OrderDto> list = service.list();
		
		model.addAttribute("list",list);
		logger.info("list : "+list);
		
		
		return "products/order";
	}
	@RequestMapping(value = "/order/ordercart/insert", method = {RequestMethod.GET, RequestMethod.POST})
	public String ordercartInsert(@RequestParam Map<String, String>params) {
		logger.info("params :"+params);
		
		service.orderCartInsert(params);
		
		return "redirect:/order/list";
		
		
		
	}
	@RequestMapping(value = "/order/ordercart/list", method = {RequestMethod.GET, RequestMethod.POST})
	public String ordercartList() {
		ArrayList<OrderDto> cartList = service.cartList();
		
		
		
		
		return "";
	}
	
	
		
	
	
	
	
}
