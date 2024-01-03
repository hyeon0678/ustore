package com.ustore.employee.controller;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ustore.employee.service.EmpProfileService;

@EnableScheduling
@Controller
public class EmpProfileController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmpProfileService service;
	
	@GetMapping("/employee/correction")
	public String correction() {
		return "employee/profile_correction";
	}
	
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
	
	@RequestMapping(value = "/employee/leavework", method = {RequestMethod.GET, RequestMethod.POST})
	public String leavework(@RequestParam Map<String, String>params, Model model) {
		logger.info("leavework_params : "+ params);
		
		service.leavework(params);
		
		return "redirect:/employee/home";
	}
	
//	@RequestMapping(value = "/employee/attendance", method = {RequestMethod.GET, RequestMethod.POST})
//	public String attendance(@RequestParam Map<String, String>params, Model model) {
//		logger.info("attendance_params : "+ params);
//		/* LocalDate now = LocalDate.now(); */
//		
//		service.attendance(params);
//		
//		logger.info("현재 날짜 : " + now);
//		
//		return "redirect:/employee/home";
//	}
	
//	@RequestMapping(value = "/employee/attendance.ajax")
//	@ResponseBody
//	public HashMap<String, Object> attendance (@RequestParam HashMap<String, String> params){
//		logger.info("reg_attendance_params : " + params);
//		HashMap<String, Object> result = new HashMap<String, Object>();
//		int attendance = service.attendance(params);
//		logger.info("reg_attendance_params2 : "+params);
//		result.put("success", attendance);
//		return result;
//	}
	
	
	
	
	@RequestMapping(value = "/profilecalendar", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, Object>> profilecalendar(){
		List<Map<String, Object>> list = service.profilecalendar();
		
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		HashMap<String, Object> hash = new HashMap<String, Object>();
		
		for (int i = 0; i < list.size(); i++) {
			hash.put("id", list.get(i).get("sch_idx"));
			hash.put("title", list.get(i).get("sch_subject"));
			hash.put("start", list.get(i).get("sch_start_date"));
			hash.put("end", list.get(i).get("sch_end_date"));
			hash.put("description", list.get(i).get("sch_content"));
			hash.put("schedule", list.get(i).get("sch_type"));
			
			jsonObj = new JSONObject(hash);
			jsonArr.add(jsonObj);
		}
		
		logger.info("JSON_arrayCheck : {}" , jsonArr);
		
		return jsonArr;
		
	}
	
	@GetMapping(value="/employee/schedule/delete")
	public String scheduleDel(@RequestParam String sch_idx) {
		int row = service.scheduleDel(sch_idx);
		logger.info("삭제한 갯수 : "+row);
		return "redirect:/employee/home";
	}
	
	@RequestMapping(value="/employee/delete.ajax")
	@ResponseBody
	public HashMap<String, Object> employeDel(@RequestParam String sch_idx){
		logger.info("삭제 일정 번호 controller : " + sch_idx);
		HashMap<String, Object> result = new HashMap<String, Object>();
		int employeDel = service.employeDel(sch_idx);
		result.put("삭제 일정 번호 전달 success", employeDel);
		return result;
	}
	
//	@Scheduled(cron = "0 0/1 * * * *")
//	public HashMap<String, Object> attendancesetting(@RequestParam HashMap<String, String>params) {		
//		
//		logger.info("attendancesetting_5min_params : "+params);
//		
//		HashMap<String, Object> result = new HashMap<String, Object>();
//		int attSet = service.attendancesetting(params);
//		
//		logger.info("attendancesetting_5min_params : "+params);
//		
//		result.put("success", attSet);
//				
//		return result;
//		
//	}
	
//	@RequestMapping(value = "/employee/attendance.ajax")
//	@ResponseBody
//	public HashMap<String, Object> attendance (@RequestParam HashMap<String, String> params){
//		logger.info("reg_attendance_params : " + params);
//		HashMap<String, Object> result = new HashMap<String, Object>();
//		int attendance = service.attendance(params);
//		logger.info("reg_attendance_params2 : "+params);
//		result.put("success", attendance);
//		return result;
//	}
	
	
}
