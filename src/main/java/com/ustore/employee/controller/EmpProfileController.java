package com.ustore.employee.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ustore.employee.service.EmpProfileService;

@Controller
public class EmpProfileController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmpProfileService service;
	
	@GetMapping("/employee/home")
	public String home() {
		return "employee/profile";
	}
	
	@RequestMapping(value = "/employee/addevent", method = {RequestMethod.GET, RequestMethod.POST})
	public String addevent(@RequestParam Map<String, String> params, Model model) {
		logger.info("addevent_params : "+ params);
		
		service.addevent(params);
		
		return "redirect:/employee/home";
	}
	
	@RequestMapping(value = "/employee/attendance", method = {RequestMethod.GET, RequestMethod.POST})
	public String attendance(@RequestParam Map<String, String>params, Model model) {
		logger.info("attendance_params : "+ params);
		
		service.attendance(params);
		
		return "redirect:/employee/home";
	}
	
	@RequestMapping(value = "/profilecalendar", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, Object>> profilecalendar(){
		List<Map<String, Object>> list = service.profilecalendar();
		
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		HashMap<String, Object> hash = new HashMap<String, Object>();
		
		for (int i = 0; i < list.size(); i++) {
			hash.put("title", list.get(i).get("sch_subject"));
			hash.put("start", list.get(i).get("sch_start_date"));
			hash.put("end", list.get(i).get("sch_end_date"));
			hash.put("className", list.get(i).get("fc-event-solid-info fc-event-light"));
			hash.put("description", list.get(i).get("sch_content"));
			hash.put("schedeule", list.get(i).get("sch_type"));
			
			jsonObj = new JSONObject(hash);
			jsonArr.add(jsonObj);
		}
		
		logger.info("JSON_arrayCheck : {}" , jsonArr);
		
		return jsonArr;
		
	}
	
}
