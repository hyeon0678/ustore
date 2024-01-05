package com.ustore.board.controller;

import java.security.Principal;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ustore.board.service.BoardService;

@Controller
public class BoardController {

	@Autowired BoardService service;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value = "/adboard/list")
	public String adboardList() {
		return "/board/admin_board_list";
	}
	
	@RequestMapping(value = "/anboard/list")
	public String anboardList() {
		return "/board/anonymous_board_list";
	}
	
//	@RequestMapping(value = "/adboard/WriteForm")
//	public String boardWirteForm(Model model, HttpSession session, Principal principal) {
//		
//		
//	return "/board/admin_board_write";
//	}
	
	@RequestMapping(value = "/adboard/WriteForm")
	public String adboardWirteForm(Model model, HttpSession session, Principal principal) {
		
		String emp_idx = principal.getName();
		String deptID = (String) session.getAttribute("dept_id");
		String page = "redirect:/adboard/list";
		
		if(deptID.equals("인사팀")) {
			page = "/board/admin_board_write";
			logger.info("공지사항 작성자 : " + emp_idx);
			logger.info("작성자 부서 : " + deptID);
		}		
		return page;
	}
	
	@RequestMapping(value = "/adboard/Write")
	public ModelAndView adboardWrite(Model model, MultipartFile[] photos, @RequestParam Map<String, String> params, HttpSession session, Principal principal) {
		
		ModelAndView mav = new ModelAndView();
		
		String emp_idx = (String) session.getAttribute("emp_idx");
		String deptID = (String) session.getAttribute("dept_id");
		
		mav.setViewName("redirect:/adboard/list");		
		
		if(deptID.equals("인사팀")) {
		logger.info("공지 작성 직원 부서 : " + deptID);
		logger.info("글 작성자 : "+emp_idx);
		logger.info("file : " + photos.length);
		logger.info("params : " + params);
				
		service.adboardWrite(params, photos, deptID);
		
		mav.setViewName("redirect:/board/admin_board_list");
		}
		return mav;
	}
}
