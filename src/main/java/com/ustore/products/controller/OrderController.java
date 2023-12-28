package com.ustore.products.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ustore.products.dto.OrderDto;
import com.ustore.products.service.OrderService;

@Controller
public class OrderController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired OrderService service;

	@GetMapping(value = "/order/list")
		public String order(Model model, HttpSession session) {
		
		
		ArrayList<OrderDto> list = service.list(); //발주 리스트 
	
	
		// 날짜 형식 변환하는 코드..
		String birthdateString  = (String) session.getAttribute("birthdate");
		if (birthdateString == null) {
		    birthdateString = "01/01/2100";
		}
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		
		LocalDate birthdate = LocalDate.parse(birthdateString, formatter);
		
		DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formattedBirthdate = birthdate.format(outputFormatter);
		
		
		
		
		logger.info("날짜 ? : "+formattedBirthdate);
		
		
		model.addAttribute("list",list);
		logger.info("list : "+list);
		ArrayList<OrderDto> list3 = service.driveList(formattedBirthdate); // 배달기사 리스트
		model.addAttribute("list3",list3);
				logger.info("list3 : "+list3);
		
		
		
		
		return "products/order";
	}
	@RequestMapping(value = "/order/ordercart/insert", method = {RequestMethod.GET, RequestMethod.POST})
	public String ordercartInsert(@RequestParam Map<String, String>params, Model model, HttpSession session) {
		logger.info("params :"+params);
	
		
		 String birthdate = params.get("birthdate");
		    session.setAttribute("birthdate", birthdate);
		     boolean checkPro = service.checkProduct(params);
		     
		     if(checkPro ==true) {
		    	 service.orderCartInsert(params);
		     }else if(checkPro==false){
		    	 model.addAttribute("msg","이미 추가된 물품 입니다.");
		     }
		
	
		 			
		return "redirect:/order/list";
		
		
		
	}
	
	@GetMapping("/order/ordercart/list") // 발주 장바구니 리스트  ajax 요청
	@ResponseBody
	public ArrayList<OrderDto> getOrderList() {
	    // 서비스 계층에서 필요한 데이터를 조회
		ArrayList<OrderDto> orderList = service.orderList();
	    
	    logger.info("장바구니 리스트:"+orderList);
	    return orderList;
	}
	
	
	@PostMapping("/order/ordercart/delete") //장바구니 삭제 
	@ResponseBody
	public ResponseEntity<String> ordercartDelete(@RequestParam String productName) {
		
	    service.ordercartDelete(productName);
	    logger.info("삭제 컨트롤러 들어옴");
	    logger.info("이름::"+productName);
	    return ResponseEntity.ok("삭제 성공");
	}
		
	
	@PostMapping("/order/insert") //발주자 (사원	id 필요 emp_idx)
	@ResponseBody
	public String orderInsert(@RequestParam String driverIdx, HttpSession session ) {
		
		String birthdateString  = (String) session.getAttribute("birthdate");
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		
		LocalDate birthdate = LocalDate.parse(birthdateString, formatter);
		
		DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formattedBirthdate = birthdate.format(outputFormatter);
		
		logger.info("선택한 날짜  : "+formattedBirthdate);
		logger.info("선택한 배송기사 : "+ driverIdx);
		
		service.orderInsert(formattedBirthdate,driverIdx); // 여기에 emp_idx 필요 세션에서 가져오기
		ArrayList<OrderDto> ProductCount = service.orderCartSelect();
		
		logger.info("상품 개수: "+ProductCount);
		
		for (OrderDto orderDto : ProductCount) {
		    String productId = orderDto.getProductId();
		    logger.info("상품 ID: " + productId);
		    
		    service.orderHistoryInsert(productId);
		}
		
		
		service.orderDelete();
		
		
		return "발주 성공!";
	}
	
	
}
