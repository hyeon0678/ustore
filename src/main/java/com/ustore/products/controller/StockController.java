package com.ustore.products.controller;

import java.util.ArrayList;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ustore.products.dto.StockDto;
import com.ustore.products.service.StockService;

@Controller
public class StockController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired StockService service;

	
	@PostMapping(value = "/stock/stock_management/insert")
	public String testMethod(Model mode,@RequestParam Map<String, String>params) {
		logger.info("parmas : "+params);
		
		service.stock_insert(params);
		
		return "redirect:/stock/stock_management/list";
	}
	
	@RequestMapping(value = "/stock/stock_management/list")
	public String stock_management(Model model) {
		
		ArrayList<StockDto> list =service.list();
		model.addAttribute("list",list);
		logger.info("list : "+list);
		
		return "products/stock_management";
	}
	
	
	
	

}
