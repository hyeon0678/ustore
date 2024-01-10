package com.ustore.mail.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;

import javax.websocket.Session;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ustore.mail.service.mailservice;

@Controller
public class mailcontroller {

	
	
		Logger logger = LoggerFactory.getLogger(getClass());
		@Autowired mailservice service;
		

		@GetMapping(value = "/mail/home")
		public String home() {
			logger.info("받은메일 페이지 들어가기");			
			return "mail/maillist_in";
		}
		
		@RequestMapping(value = "mail/home.ajax/list")
		@ResponseBody
		public HashMap<String, Object> maillist(Principal Principal ) {
			logger.info("메일 리스트 호출하기");
			String  emproynum = Principal.getName();
			logger.info("emproynum : "+emproynum);
			
			HashMap<String, Object> result = new HashMap<String, Object>();
			
			
			logger.info("메일 리스트 가져오기");
			ArrayList<HashMap<String, String>> list = service.maillist(emproynum);
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
			return result;
		}
		
		// mail/home.ajax/search
		
		@RequestMapping(value = "mail/home.ajax/search")
		@ResponseBody
		public HashMap<String, Object> search(Principal Principal,@RequestParam String keyword) {
			logger.info("받은 메일함 검색 리스트 호출하기");
			String  emproynum = Principal.getName();
			logger.info("emproynum : "+emproynum);
			logger.info("keyword : "+keyword);
			
			HashMap<String, Object> result = new HashMap<String, Object>();
			
			
			logger.info("메일 리스트 가져오기");
			ArrayList<HashMap<String, String>> list = service.searchlist(emproynum, keyword);
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
			return result;
		}
		
		
		
		
		@GetMapping(value = "/mail/out")
		public String outlist() {
			logger.info("보낸메일 페이지 들어가기");
			return "mail/maillist_out";
		}
		
		@RequestMapping(value = "mail/out.ajax/list")
		@ResponseBody
		public HashMap<String, Object> outlist(Principal Principal) {
			logger.info("보낸메일 메일 리스트 호출하기");
			String  emproynum = Principal.getName();
			logger.info("emproynum : "+emproynum);
			
			HashMap<String, Object> result = new HashMap<String, Object>();
			
			
			logger.info("메일 리스트 가져오기");
			ArrayList<HashMap<String, String>> list = service.outlist(emproynum);
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
			return result;
		}
		
		// mail/home.ajax/search
		
		@RequestMapping(value = "mail/out.ajax/search")
		@ResponseBody
		public HashMap<String, Object> outsearch(Principal Principal,@RequestParam String keyword) {
			logger.info("보낸 메일함 검색 리스트 호출하기");
			String  emproynum = Principal.getName();
			logger.info("emproynum : "+emproynum);
			logger.info("keyword : "+keyword);
			
			HashMap<String, Object> result = new HashMap<String, Object>();
			
			
			logger.info("메일 리스트 가져오기");
			ArrayList<HashMap<String, String>> list = service.outsearchlist(emproynum, keyword);
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
			return result;
		}
		
		
		
		@GetMapping(value = "/mail/del")
		public String del() {
			logger.info("휴지통 페이지 들어가기");
			return "mail/maillist_del";
		}
		
		@RequestMapping(value = "mail/del.ajax/list")
		@ResponseBody
		public HashMap<String, Object>dellist(Principal Principal , @RequestParam String pageState) {
			logger.info("보낸메일 메일 리스트 호출하기");
			String  emproynum = Principal.getName();
			logger.info("emproynum : "+emproynum);
			logger.info("pageState : "+ pageState);
			
			HashMap<String, Object> result = new HashMap<String, Object>();
			ArrayList<HashMap<String, String>> list;
			
			if (pageState.equals("RM")) {
				logger.info("받은 메일함====  메일 리스트 가져오기");
				// 받은 메일함
				 list = service.dellistRM(emproynum);				
			}else {
				logger.info("보낸 메일함=====메일 리스트 가져오기");
				// 보낸 메일함
				 list = service.dellistSM(emproynum);				
			}
			
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
			return result;
		}
		
		
		
		@RequestMapping(value = "mail/del.ajax/search")
		@ResponseBody
		public HashMap<String, Object> delsearch(Principal Principal,@RequestParam String keyword, 
				@RequestParam String pageState) {
			logger.info("보낸 메일함 검색 리스트 호출하기");
			String  emproynum = Principal.getName();
			logger.info("emproynum : "+emproynum);
			logger.info("keyword : "+keyword);
			
			HashMap<String, Object> result = new HashMap<String, Object>();
			
			ArrayList<HashMap<String, String>> list ;
			
			if (pageState.equals("RM")) {
				logger.info("받은 메일함====  검색");
				// 받은 메일함
				 list = service.delsearchRM(emproynum, keyword);				
			}else {
				logger.info("보낸 메일함=====검색");
				// 보낸 메일함
				 list = service.delsearchSM(emproynum, keyword);				
			}
			
			logger.info("num"+list.toString());
			result.put("list", list);
			result.put("size", list.size());
			logger.info("result : " +result);	
			
			return null;
		}
		
		
		
		
		
		@GetMapping(value = "/mail/write")
		public String write() {
			logger.info("글쓰기 페이지 들어가기");
			return "mail/maillist_new";
		}
		@GetMapping(value = "/mail/detail")
		public String detail() {
			logger.info("상세보기 페이지 들어가기");
			return "mail/mail_detail";
		}
		

	
	
	
	
	
	
}
