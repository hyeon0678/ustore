package com.ustore.mail.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class mailcontroller {

	
	
		Logger logger = LoggerFactory.getLogger(getClass());
		

		@GetMapping(value = "/mail/home")
		public String home() {
			logger.info("받은메일 페이지 들어가기");
			return "mail/maillist_in";
		}
		@GetMapping(value = "/mail/out")
		public String outlist() {
			logger.info("보낸메일 페이지 들어가기");
			return "mail/maillist_out";
		}
		@GetMapping(value = "/mail/del")
		public String del() {
			logger.info("휴지통 페이지 들어가기");
			return "mail/maillist_del";
		}
		@GetMapping(value = "/mail/write")
		public String write() {
			logger.info("글쓰기 페이지 들어가기");
			return "mail/maillist_new";
		}
		@GetMapping(value = "/mail/detail")
		public String detail() {
			logger.info("상세보기 페이지 들어가기");
			return "mail/maillist_detail";
		}
		

	
	
	
	
	
	
}
