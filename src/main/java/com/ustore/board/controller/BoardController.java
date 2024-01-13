package com.ustore.board.controller;

import java.io.File;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@GetMapping(value = "/anboard/list")
	public String anboardList() {
		return "/board/anonymous_board_list";
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
	
	@RequestMapping(value = "/anboard/list.ajax")
	@ResponseBody
	public HashMap<String, Object> anList(){
		
		logger.info("익명게시판 리스트 호출");
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, String>> list = service.anList();
		logger.info("anlistnum : " + list.toString());
		result.put("list", list);
		result.put("size", list.size());
		logger.info("anlistsize : " + result);
		
		return result;
		
	}
	
	
	@RequestMapping(value = "/adboard/WriteForm")
	public String adboardWirteForm(Model model, HttpSession session, Principal principal) {
		
		String emp_idx = principal.getName();
		String empidx = (String) session.getAttribute("emp_idx");
		String deptID = (String) session.getAttribute("dept_id");
		logger.info("접속자 부서 : " + deptID);
		
		String page = "redirect:/adboard/list";
		
		if(deptID.equals("인사팀") || deptID.equals("UStore")) {
			page = "/board/admin_board_write";
			logger.info("공지사항 작성자 : " + emp_idx);
			logger.info("작성자 부서 : " + deptID);
			logger.info("작성자 세션 : " + empidx);
		}		
		return page;
	}
	
	@RequestMapping(value = "/anboard/WriteForm")
	public String anboardWirteForm(Model model, HttpSession session, Principal principal) {
		
		String emp_idx = principal.getName();
		String empidx = (String) session.getAttribute("emp_idx");
		String deptID = (String) session.getAttribute("dept_id");
		String page = "redirect:/anboard/list";
		
			page = "/board/anonymous_board_write";
			logger.info("공지사항 작성자 : " + emp_idx);
			logger.info("작성자 부서 : " + deptID);
			logger.info("작성자 세션 : " + empidx);
				
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
		
		if (deptID != null && deptID.equals("인사팀") || deptID.equals("UStore")) {
		logger.info("공지 작성 직원 부서 : " + deptID);
		logger.info("공지사항글 작성자 : "+emp_idx);
		logger.info("params : " + params);
				
		service.adboardWrite(params, deptID, emp_idx);
		int adboardNum = service.adboardNum(params);
		
		if(photos != null) {	
			SaveFile saveFile = new SaveFile();
			logger.info("공지사항file : " + photos);
			FileDto file = new FileDto();
			for (MultipartFile photo : photos) {
			if (photo != null && !photo.isEmpty()) {
				file = (FileDto) saveFile.returnFileList(photo, 70, Integer.toString(adboardNum));
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
	
	@RequestMapping(value = "/anboard/Write")
	public ModelAndView anboardWrite(MultipartFile[] photos, @RequestParam Map<String, String> params, HttpSession session) throws Exception  {
		
		ModelAndView mav = new ModelAndView();
		
		String emp_idx = (String) session.getAttribute("emp_idx");
		String deptID = (String) session.getAttribute("dept_id");
		
		int empidx = Integer.parseInt(emp_idx);
		
		logger.info("empidx int값 : " + empidx);
		
		mav.setViewName("redirect:/anboard/list");
		
		logger.info("익명게시판 작성 직원 부서 : " + deptID);
		logger.info("익명게시판 작성자 : "+emp_idx);
		logger.info("params : " + params);
				
		service.anboardWrite(params, deptID, emp_idx);
		int anboardNum = service.anboardNum(params);

		if(photos != null) {
			SaveFile saveFile = new SaveFile();
			logger.info("익명게시판file : " + photos);
			FileDto file = new FileDto();
			for (MultipartFile photo : photos) {
			if (photo != null && !photo.isEmpty()) {
				file = (FileDto) saveFile.returnFileList(photo, 71, Integer.toString(anboardNum));
				logger.info("익명게시판 file : "+file);			
				saveFile.saveFile(file);			
				filedao.saveFile(file);
				Thread.sleep(1);
					}else {
						logger.info("사진 x");
					}
				}
			}
		
		mav.setViewName("redirect:/anboard/list");
		return mav;
	}
	
	// 공지사항 상세 : 파일 다운
	@RequestMapping(value = "/adboard/detail")
	public ModelAndView adboardDetail(@RequestParam int notice_idx) {
		
		logger.info("공지사항 번호 : " + notice_idx);
		
		ModelAndView mav = new ModelAndView();

		BoardDto dto = new BoardDto();

		// 다운 받을 파일 newfilename 추출
		List<HashMap<String, String>> adfile = service.adfile(notice_idx);
		
		ArrayList<FileDto> adfileshow = service.adfileshow(notice_idx);

		logger.info("adfileshow : " + adfileshow);
		logger.info("adfile : " + adfile);
		
		logger.info("공지사항파일 : " + adfile);
		
		logger.info("글 상세보기 : " + notice_idx);
		
		HashMap<String, String> map = service.adboardDetail(notice_idx, true);
		
		logger.info("mapresult : " + map);
		
		mav.addObject("board", map);
		
		mav.addObject("file", adfile);
		mav.addObject("newFileList", adfileshow);		
		mav.setViewName("board/admin_board_detail");
		
		logger.info("ADDETAILmavresult : " + mav);
		logger.info("상세보기 이동");
		
		return mav;
		
	}
	
	@RequestMapping(value = "/anboard/detail")
	public ModelAndView anboardDetail(@RequestParam String anony_idx) {
		
		logger.info("익명 게시판");
		
		ModelAndView mav = new ModelAndView();
		
		BoardDto dto = new BoardDto();
		
		ArrayList<FileDto> anfileshow = service.anfileshow(anony_idx);

		logger.info("anfileshow : " + anfileshow);

		
		logger.info("글 상세보기 : " + anony_idx);
		
		HashMap<String, String> map = service.anboardDetail(anony_idx, true);
		
		logger.info("map 값 : " + map);
		
		mav.addObject("board", map);
		mav.addObject("newFileList", anfileshow);
		mav.setViewName("board/anonymous_board_detail");
		
		logger.info("ANDETAILmavresult : " + mav);
		logger.info("상세보기 이동");
		
		return mav;
		
	}
	
	@RequestMapping(value = "adboard/delete.ajax")
	@ResponseBody
	public ModelAndView adboardDelete(@RequestParam int notice_idx, RedirectAttributes rAttr) {
		
		logger.info("삭제 공지사항 : " + notice_idx);
		
		String msg = service.adboardDelete(notice_idx);
		
		logger.info("삭제 성공 : " + notice_idx);
		
		ModelAndView mav = new ModelAndView();
		rAttr.addFlashAttribute("msg", msg);
		mav.setViewName("redirect:/adboard/list");
		
		logger.info("삭제 mav값 : " + mav);
				
		return mav;
		
	}
	
	@RequestMapping(value = "anboard/delete.ajax")
	@ResponseBody
	public ModelAndView anboardDelete(@RequestParam int anony_idx) {
		
		logger.info("삭제 공지사항 : " + anony_idx);
		
		String msg = service.anboardDelete(anony_idx);
		logger.info("삭제 성공 : " + anony_idx);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("redirect:/anboard/list");
		
		logger.info("삭제 mav값 : " + mav);
				
		return mav;
		
	}
	
	@RequestMapping(value = "adboard/update.ajax")
	@ResponseBody
	public ModelAndView adboardTopFix(@RequestParam HashMap<String, String> params, HttpSession session, RedirectAttributes rAttr) {
		
		ModelAndView mav = new ModelAndView();
		String deptID = (String) session.getAttribute("dept_id");
		
		String page = "redirect:/adboard/list";
		
		logger.info("page : " + page);
		
		if(deptID.equals("인사팀") || deptID.equals("UStore")) {
			
		logger.info("글 상단 고정");
		logger.info("상단 고정 : " + params);
		
		String msg = service.adboardTopFix(params);
		
		logger.info("상단 고정 msg : " + msg);
		logger.info("상세보기 접근자 부서 : " + deptID);
		
		mav.addObject("msg", msg);
		mav.addObject("notice_idx", params.get("notice_idx"));
		
		logger.info("상단 고정 mav : " + mav);
		}else {
			rAttr.addFlashAttribute("alert", "상단 고정 권한이 없습니다.");
		}
		mav.setViewName(page);
		return mav;
	}
	
	// 댓글 기능
	@RequestMapping(value = "anboard/reply.ajax")
	@ResponseBody
	public String anreply(@RequestParam String anony_board_idx, @RequestParam String repl_content) {
		
		logger.info("댓글 작성 실행");
		logger.info("anony_board_idx : " + anony_board_idx);
		logger.info("repl_content : " + repl_content);
		
		service.anreply(anony_board_idx, repl_content);
		
		return "redirect:/anboard/detail?anony_idx="+anony_board_idx;
	}
	
	
	@RequestMapping(value = "anboard/replyList")
	@ResponseBody
	public Map<String, Object> anboardReplyList (@RequestParam String anony_board_idx){
		
		logger.info("댓글 작성 값 : "+service.anboardReplyList(anony_board_idx));
		
		return service.anboardReplyList(anony_board_idx);
	}
	
	@RequestMapping(value = "anboard/replyDel")
	@ResponseBody
	public ModelAndView anboardreplyDel( @RequestParam String anony_board_idx, @RequestParam String repl_idx, HttpSession session) {
		
		logger.info("댓글 삭제 컨트롤러");
		logger.info("anony_board_idx : " + anony_board_idx);
		logger.info("repl_idx : " + repl_idx);
		
		ModelAndView mav = new ModelAndView();
		
		String deptID = (String) session.getAttribute("dept_id");
		logger.info("댓글 삭제 부서 : " + deptID);
		
		if(deptID.equals("인사팀")) {
			service.delreply(repl_idx);
		}
		
		mav.setViewName("redirect:/anboard/detail?anony_idx="+anony_board_idx);
		
		return mav;
	}
	
	@RequestMapping(value = "adboard/listSearch.ajax")
	@ResponseBody
	public HashMap<String, Object> adlistSearch(@RequestParam String keyword) {
		logger.info("회원 검색 리스트 호출하기");
		logger.info("keyword : "+keyword);
		
		HashMap<String, Object> result = new HashMap<String, Object>();
			logger.info("공지사항 리스트");
			ArrayList<HashMap<String, String>> list = service.adlistSearch(keyword);
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
		return result;
	}
	
	@RequestMapping(value = "anboard/listSearch.ajax")
	@ResponseBody
	public HashMap<String, Object> anlistSearch(@RequestParam String keyword) {
		logger.info("회원 검색 리스트 호출하기");
		logger.info("keyword : "+keyword);
		
		HashMap<String, Object> result = new HashMap<String, Object>();
			logger.info("공지사항 리스트");
			ArrayList<HashMap<String, String>> list = service.anlistSearch(keyword);
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
		return result;
	}
	
	
}
