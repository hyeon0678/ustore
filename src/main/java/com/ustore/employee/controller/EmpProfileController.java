package com.ustore.employee.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ustore.employee.dao.EmpProfileDao;
import com.ustore.employee.dto.EmpProrileDto;
import com.ustore.employee.dto.EmployeeDto;
import com.ustore.employee.service.EmpProfileService;

@EnableScheduling
@Controller
public class EmpProfileController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmpProfileService service;
	@Autowired EmpProfileDao dao;
	
	@GetMapping("/employee/correction")
	public String employeeInfoModifyForm(Principal principal, Model model) {
		EmployeeDto result = service.getEmpUpdateData(principal.getName());
		model.addAttribute("empInfo",result);
		return "employee/profile_correction";
	}
	
	@PostMapping("/employee/correction")
	public String employeeInfoModify(Principal principal, @RequestParam MultipartFile avatar, 
			@ModelAttribute EmployeeDto dto) throws IOException {
		logger.info("empInfo {}",dto.getIsChangePw());
		logger.info("empInfo photo {}",avatar);
		int result = service.modifyEmpInfo(principal.getName(), avatar, dto);
		return "redirect:/employee/home";
	}
	
	@GetMapping("/employee/home")
	public ModelAndView home(Principal principal, HttpSession session,Model model)throws Exception {

		ModelAndView mav = new ModelAndView();

		try {
			String emp_idx = principal.getName();
			
			logger.info("emp_idx = " + emp_idx);
			logger.info("session = " + session);
			
			EmpProrileDto dto = service.homeProfileDetail(emp_idx);
			
			session.setAttribute("emp_idx", emp_idx);
			String empidx = (String) session.getAttribute("emp_idx");
			
			session.setAttribute("dept_id", dto.getDeptname());
			String deptId = (String) session.getAttribute("dept_id");
			
			session.setAttribute("position", dto.getCommontype());
			String position = (String) session.getAttribute("position");
			
			logger.info("직원 이름 : " + empidx);
			logger.info("직원 부서 : " + deptId);
			logger.info("로그인 아이디 : "+emp_idx);
			logger.info("직원 직급 : " + position);
			
			mav.addObject("employee", dto);
			mav.setViewName("employee/profile");
			
			
			Integer annual = dao.annualCount(emp_idx);
			model.addAttribute("annual",annual);
			logger.info("로그인 성공");
			
			return mav;
		
		}catch(NullPointerException e){
			e.printStackTrace();
			mav.setViewName("main/login");
			logger.info("로그인 실패");
			return mav;
		}finally {
			logger.info("로그인");
		}
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
	
	@RequestMapping(value = "/profilecalendar", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, Object>> profilecalendar(Principal principal){
		String empIdx = principal.getName();
		
		logger.info("캘린더 접속자 : " + empIdx);
		
		List<Map<String, Object>> list = service.profilecalendar(empIdx);
		
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		HashMap<String, Object> hash = new HashMap<String, Object>();
		
		for (int i = 0; i < list.size(); i++) {
			hash.put("id", list.get(i).get("sch_idx"));
			hash.put("title", list.get(i).get("sch_subject"));
			hash.put("startday", list.get(i).get("sch_start_date"));
			hash.put("startTime", list.get(i).get("sch_start_time"));
			hash.put("endday", list.get(i).get("sch_end_date"));
			hash.put("endTime", list.get(i).get("sch_end_time"));
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
	
	@RequestMapping(value="/employee/getEmpPhoto.ajax")
	@ResponseBody
	public HashMap<String, Object> empPhoto(Principal principal){	
		HashMap<String, Object> result = new HashMap<String, Object>();
		String photo = service.getEmpPhoto(Integer.parseInt(principal.getName()));
		result.put("photo", photo);
		return result;
	}
	
}
