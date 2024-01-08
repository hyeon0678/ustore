package com.ustore.board.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ustore.board.dto.BoardDto;
import com.ustore.board.service.BoardService;
import com.ustore.fileSystem.dao.FileDao;
import com.ustore.fileSystem.dto.FileDto;
import com.ustore.utils.SaveFile;


@Controller
public class BoardController {

	@Autowired BoardService service;
	@Autowired FileDao filedao;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@GetMapping(value = "/adboard/list")
	public String adboardList() {
		return "/board/admin_board_list";
	}
	
	@RequestMapping(value = "/adboard/list.ajax")
	@ResponseBody
	public HashMap<String, Object> adList(){
		
		logger.info("공지사항 리스트 호출");
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, String>> list = service.adList();
		logger.info("adlistnum : " + list.toString());
		result.put("list", list);
		result.put("size", list.size());
		logger.info("adlistsize : " + result);
		
		return result;
		
	}
	
	
	@RequestMapping(value = "/adboard/WriteForm")
	public String adboardWirteForm(Model model, HttpSession session, Principal principal) {
		
		String emp_idx = principal.getName();
		String empidx = (String) session.getAttribute("emp_idx");
		String deptID = (String) session.getAttribute("dept_id");
		String page = "redirect:/adboard/list";
		
		if(deptID.equals("인사팀")) {
			page = "/board/admin_board_write";
			logger.info("공지사항 작성자 : " + emp_idx);
			logger.info("작성자 부서 : " + deptID);
			logger.info("작성자 세션 : " + empidx);
		}		
		return page;
	}
	
	@RequestMapping(value = "/adboard/Write")
	public ModelAndView adboardWrite(MultipartFile[] photos, @RequestParam Map<String, String> params, HttpSession session) throws Exception  {
		
		ModelAndView mav = new ModelAndView();
		
		String emp_idx = (String) session.getAttribute("emp_idx");
		String deptID = (String) session.getAttribute("dept_id");
		
		
		int empidx = Integer.parseInt(emp_idx);
		
		logger.info("empidx int값 : " + empidx);
		
		mav.setViewName("redirect:/adboard/list");		
		
		if (deptID != null && deptID.equals("인사팀")) {	
		logger.info("공지 작성 직원 부서 : " + deptID);
		logger.info("공지사항글 작성자 : "+emp_idx);
		logger.info("params : " + params);
				
		service.adboardWrite(params, deptID, emp_idx);
		
		if(photos != null) {	
			SaveFile saveFile = new SaveFile();
			
			logger.info("공지사항file : " + photos);

			FileDto file = new FileDto();
			for (MultipartFile photo : photos) {
			if (photo != null && !photo.isEmpty()) {
				file = (FileDto) saveFile.returnFileList(photo, 70, Integer.toString(empidx));
				logger.info("공지사항 file : "+file);			
				saveFile.saveFile(file);			
				filedao.saveFile(file);
				Thread.sleep(1);
					}else {
						logger.info("사진 x");
					}
				}
			}
		}
		mav.setViewName("redirect:/adboard/list");
		return mav;
	}
	
	@RequestMapping(value = "/adboard/detail")
	public ModelAndView adboardDetail(@RequestParam String notice_idx) {
		ModelAndView mav = new ModelAndView();
		
		BoardDto dto = new BoardDto();
		
//		HashMap<String, String> file = filedao.adboardfile(notice_idx);
//		logger.info("file : " + file);
		
		logger.info("글 상세보기 : " + notice_idx);
		
		HashMap<String, String> map = service.adboardDetail(notice_idx, true);
		
		logger.info("map 값 : " + map);
		
		mav.addObject("board", map);
//		mav.addObject("file", file);
		mav.setViewName("board/admin_board_detail");
		
		logger.info("mav 값 : " + mav);
		logger.info("상세보기 이동");
		
		return mav;
		
	}
	
	@RequestMapping(value = "adboard/delete.ajax")
	@ResponseBody
	public ModelAndView adboardDelete(@RequestParam int notice_idx) {
		
		logger.info("삭제 공지사항 : " + notice_idx);
		
		String msg = service.adboardDelete(notice_idx);
		logger.info("삭제 성공 : " + notice_idx);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("redirect:/adboard/list");
		
		logger.info("삭제 mav값 : " + mav);
				
		return mav;
		
	}
	
	@RequestMapping(value = "adboard/update.ajax")
	@ResponseBody
	public ModelAndView adboardTopFix(@RequestParam HashMap<String, String> params) {
		
		logger.info("글 상단 고정");
		logger.info("상단 고정 : " + params);
		String msg = service.adboardTopFix(params);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", msg);
		mav.addObject("notice_idx", params.get("notice_idx"));
		
		mav.setViewName("redirect:/adboard/list");
		
		logger.info("상단 고정 mav : " + mav);
		
		return mav;
	}
	
}
