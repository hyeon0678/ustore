package com.ustore.mail.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ustore.fileSystem.dao.FileDao;
import com.ustore.fileSystem.dto.FileDto;
import com.ustore.mail.dto.maildto;
import com.ustore.mail.service.mailservice;
import com.ustore.utils.SaveFile;

@Controller
public class mailcontroller {

	
	
		Logger logger = LoggerFactory.getLogger(getClass());
		@Autowired mailservice service;
		@Autowired FileDao filedao;

		@GetMapping(value = "/mail/home")
		public String home() {
			logger.info("받은메일 페이지 들어가기");			
			return "mail/maillist_in";
		}
		
		@GetMapping(value = "/mail/home.ajax/update")
		public void homeupdate(Principal Principal ,@RequestParam int selecteidx) {
			logger.info("휴지통 페이지로 보내기");
			String  emproynum = Principal.getName();
			logger.info("emproynum : "+emproynum);
			logger.info("selecteidx"+selecteidx);
			
			service.delupdateRM(emproynum, selecteidx);
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
		
		
		
		// @RequestParam(required = false) String[] saveempnum
		//@ModelAttribute maildto dto
		//filename ++ MultipartFile upload_btn
		@RequestMapping(value = "mail/new.ajax/save")
		@ResponseBody
		public ModelAndView newsave(Principal Principal, @RequestParam(required = false, value = "saveempnum[]") String[] saveempnum,
				@RequestParam(required = false, value = "filename[]") String[] filename, @RequestParam String content, @RequestParam String subject 
				) {
			logger.info(" 메일 글쓰기 저장 기능 플레이 ");
			String  emproynum = Principal.getName();
			logger.info("emproynum : "+emproynum);
			boolean result= false;
			
			
			//logger.info("files : "+upload_btn);
		//logger.info("회원들"+empnum);
			logger.info("saveempnum : "+saveempnum.toString());
			logger.info("saveempnum : "+saveempnum.length);
			service.saveRM(emproynum,content,subject);
			 String mail_idx = service.mailidx(emproynum, content,subject);
			logger.info("mailIdx : "+mail_idx);
			for (String emp : saveempnum) {
				logger.info("emp : "+emp);
				logger.info("content : "+content);
				logger.info("subject : "+subject);
				
				service.saveSM(mail_idx, emp );
				
			}
			
			/*	
			for (String namefile : filename) {
				logger.info("file : "+emp);
				// 파일 저장 코드
				//groupManageService.imgInfo(idx);
				SaveFile saveFile = new SaveFile();
				
				FileDto file = new FileDto();
				file = saveFile.returnFileList(namefile, 76,emp);
				logger.info("file : "+file);			
				saveFile.saveFile(file);			
				filedao.saveFile(file);			
			}
			*/
		//	logger.info("formData : "+dto.getEmpnum());
		//	logger.info("formData : "+dto.getSubject());
		//	logger.info("formData : "+dto.getContent());
			
			return null;
		}
		
		
		
		
		
		
		
		@RequestMapping(value = "/mail/detail")
		@ResponseBody
		public ModelAndView detail(Principal Principal,@RequestParam int  idx, @RequestParam String pageState) {
			logger.info("상세보기 페이지 들어가기");
			String  emproynum = Principal.getName();
			logger.info("idx : "+idx);
			logger.info("pageState : "+pageState);
			
			ModelAndView mav = new ModelAndView("mail/mail_detail");
			
			HashMap<String, String> map ;
			
			
			if (pageState.equals("RM")) {
				logger.info("받은 메일함====  상세보기");
				service.updateRM(idx);
				
				// 받은 메일함
				 map = service.detailRM(emproynum,idx);				
			}else {
				logger.info("보낸 메일함=====상세보기간다");
				//service.updateSM(emproynum, idx);
				
				
				// 보낸 메일함
				 map = service.detailSM(emproynum ,idx);				
			}
			
			logger.info("map"+map);
			mav.addObject("map", map);
			//result.put("size", list.size());
			//logger.info("result : " +result);	
			
			return mav;
		}
		

	
	
	
	
	
	
}
