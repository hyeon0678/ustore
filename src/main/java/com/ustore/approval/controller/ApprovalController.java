package com.ustore.approval.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ustore.approval.service.ApprovalService;

@Controller
public class ApprovalController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalService service;
	
	@GetMapping(value="/approval")
	public String newApproval() {
		return "board/admin_board_detail";
	}
	
	
	@GetMapping(value="/approval/newapproval") 
	public String writeApprDoc() {
		return "approval/writeApprDoc";
	}
	
	@GetMapping(value="/approval/newapproval/datatable") 
	public String datatable() {
		return "approval/datatable_test";
	}
	 
	
}
