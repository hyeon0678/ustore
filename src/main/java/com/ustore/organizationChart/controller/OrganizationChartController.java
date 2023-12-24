package com.ustore.organizationChart.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ustore.organizationChart.service.OrganizationChartService;

@Controller
public class OrganizationChartController {
	@Autowired
	OrganizationChartService service;
	
	
	@GetMapping("/organizationChart.ajax")
	@ResponseBody
	public HashMap<String, Object> getOrganizationChart(){
		HashMap<String, Object> treeData = new HashMap<String, Object>();
		treeData.put("treeData", service.getChart());
		return treeData;
	}
}
