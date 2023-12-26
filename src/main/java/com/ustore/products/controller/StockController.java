package com.ustore.products.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ustore.products.dto.StockDto;
import com.ustore.products.service.StockService;

@Controller
public class StockController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired StockService service;

	
	@PostMapping(value = "/stock/stock_management/insert")
	public String Stock_managementInsert(Model model,@RequestParam Map<String, String>params,HttpSession session) {
		logger.info("parmas : "+params);
		session.setAttribute("data", params);
		
		Object ProNum= service.stock_insert(params);
		logger.info("상품 번호 최종 : "+ProNum);
		session.setAttribute("proNum", ProNum);
		return "redirect:/stock/stock_management/insert2";
	}
	
	@RequestMapping(value = "/stock/stock_management/insert2", method = {RequestMethod.GET, RequestMethod.POST})
	public String  Stock_managementInsert2(Model model,HttpSession session) {
		Map<String, String> data = (Map<String, String>) session.getAttribute("data");
		Object proNumObject = session.getAttribute("proNum");
		String proNums = proNumObject != null ? proNumObject.toString() : null;
		
		logger.info("data : "+ data);
		logger.info("proNums: " + proNums);
		
		String proNums1 = proNums.substring(3);
		String proNumsHead = proNums.substring(0, 3);
		
		int proNums2 = Integer.parseInt(proNums1) +1;
		String proNums3 = String.format("%04d", proNums2);
		String proNum = proNumsHead + proNums3;
		
		logger.info("상품번호+1 :"+proNum);
		
		service.stock_insert2(proNum,data);
		
		
		
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
