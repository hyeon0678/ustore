package com.ustore.board.controller;

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

import com.ustore.board.service.BoardService;

@Controller
public class BoardController {

	@Autowired BoardService service;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value = "/adboard/list")
	public String adboardList() {
		return "/board/admin_board_list";
	}
	
	@RequestMapping(value = "/board/WriteForm")
	public String boardWirteForm(Model model) {
	return "/board/admin_board_write";
	}
	
	@RequestMapping(value = "/board/Write")
	public String boardWrite(Model model, MultipartFile[] photos, @RequestParam Map<String, String> params, HttpSession session) {
		
		logger.info("file : " + photos.length);
		logger.info("params : " + params);
		
		service.boardWrite(params, photos);
				
		return "redirect:/board/admin_board_list";
	}
}
