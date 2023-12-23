package com.ustore.pos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PosController {
	@GetMapping("/board/notice/detail")
	public String pos() {
		return "board/admin_board_detail";
	}
}
