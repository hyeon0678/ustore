package com.ustore.approval.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.ustore.approval.service.ApprovalService;

@Controller
public class ApprovalController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalService service;
	
	@GetMapping(value="/approval/newapproval")
	public String newApproval() {
		return "approval/selectDoc";
	}
	
	
	@GetMapping(value="/approval/newapproval/write") 
	public String writeApprDoc() {
		return "approval/writeApprDoc";
	}
	
	@GetMapping(value="/approval/newapproval/datatable") 
	public String datatable() {
		return "approval/datatable_test";
	}
	 
	
}
