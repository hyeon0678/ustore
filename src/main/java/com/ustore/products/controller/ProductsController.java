package com.ustore.products.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductsController {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	
	@GetMapping(value = "/aditem")
	public String testMethod(@RequestParam Map<String, String>params) {
		logger.info("parmas : "+params);
		return "";
	}
	@GetMapping(value = "/stock")
	public String hom1231231e() {
		
		
		return "products/stock_management";
	}
	
	
	

}
