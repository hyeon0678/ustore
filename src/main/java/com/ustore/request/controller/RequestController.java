package com.ustore.request.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ustore.request.service.RequestService;

@Controller
@RequestMapping("/pos/request")
public class RequestController {
	@Autowired RequestService requestService;
	Logger logger = LoggerFactory.getLogger(getClass());

	// 결제 성공후 ajax 요청
	@RequestMapping("/pay.ajax")
	@ResponseBody
	public boolean pay(@RequestParam HashMap<String, String> params) {
		logger.info("결제 성공후 값 도착 파람 : "+ params);
		return requestService.pay(params);
	}
	
	// 환불 요청 ajax
	@RequestMapping("/refund.ajax")
	@ResponseBody
	public boolean refund(@RequestParam String iamportIdx) {
		boolean cancel = UtilToken.main(iamportIdx);
		if (cancel) {
			requestService.refund(iamportIdx);
		}
		return cancel;
	}
}
