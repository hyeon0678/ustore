package com.ustore.pos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PosController {
	
	@RequestMapping(value="/pos/item")
	public String pos_item() {
		return "/pos/pos_item";
	}
	@RequestMapping(value="/pos/member")
	public String pos_member() {
		return "/pos/pos_member";
	}
}
