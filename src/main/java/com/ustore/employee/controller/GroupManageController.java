package com.ustore.employee.controller;


import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ustore.employee.dto.EmployeeDto;
import com.ustore.employee.service.GroupManageService;
import com.ustore.fileSystem.dao.FileDao;
import com.ustore.fileSystem.dto.FileDto;
import com.ustore.utils.SaveFile;



@Controller
@RequestMapping("/employee")
public class GroupManageController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	GroupManageService groupManageService;
	@Autowired
	FileDao FileDao;
	
	@GetMapping("/registration")
	public String empRegistration() {
		return "employee/employee_registration";
	}
	
	@PostMapping("/registration")
	public String insertEmp(@ModelAttribute EmployeeDto params, 
			RedirectAttributes rattr, Principal principal) {
		logger.info("params : " + params.getEmpBirth());
		logger.info(principal.getName());
		boolean success = groupManageService.insertEmp(params, principal.getName());
		if(success) {
			return "redirect:/registration";
		}
		rattr.addFlashAttribute("msg","사원등록에 실패했습니다");
		return "redirect:/employee/registration";
	}
	
	@RequestMapping("/management")
	public String empManagement() {
		return "employee/personnel_management";
	}
	@RequestMapping("/employeeInfo.ajax")
	@ResponseBody
	public Map<String, Object>employeeInfo(@RequestParam String emp_idx) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", groupManageService.employeeInfo(emp_idx));
		return map;
	}

	@RequestMapping("/update")
	public ModelAndView empUpdate(@RequestParam String emp_idx) {
		ModelAndView mav = new ModelAndView("employee/personnel_update");
		logger.info("업데이트 수정 아이디 값 도착"+emp_idx);
		mav.addObject("list", groupManageService.employeeInfo(emp_idx));
		return mav;
	}

	@RequestMapping("/modify")
	public ModelAndView empModify(@RequestParam HashMap<String, String>params) {
		logger.info("수정 파람값 도착 확인"+params);
		int success = groupManageService.empModify(params);
		logger.info("수정성공 컨트롤러까지 도착"+success);
		ModelAndView mav = new ModelAndView("redirect:/employee/management");
		return null;
	}
	
	@RequestMapping("/empImg")
	 public String handleFileUpload(MultipartFile uploadFile,@RequestParam String idx) throws IOException {
        // 파일 처리 로직 작성

		logger.info("파일 요청 도착 확인 : "+uploadFile);
		logger.info("파일 요청 idx 도착 확인 : "+idx);
		
		
		SaveFile saveFile = new SaveFile();
		
		FileDto file = new FileDto();
		file = saveFile.returnFileList(uploadFile, 74, idx);
		
		logger.info(file.getFileIdx());

		saveFile.saveFile(file);
		
		
		FileDao.saveFile(file);
		return null;
    }
	
	@RequestMapping("/delete")
	public String empDelete(@RequestParam String emp_idx) {
		logger.info("퇴사처리 요청 확인 : "+emp_idx);
		groupManageService.delete(emp_idx);
		return null;
	}
}	
