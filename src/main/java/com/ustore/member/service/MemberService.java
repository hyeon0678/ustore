package com.ustore.member.service;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.member.dao.MemberDao;

@Service
public class MemberService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired MemberDao dao;
	
	
	
	

	public String joinnum(HashMap<String, String> params) {
		logger.info("서비스 진입");
		logger.info("파람 : "+params);
		
		//int num= Integer.parseInt(params.get("num"));
		//logger.info("num : "+num);
		//params.put("num", num);
		
		
		int row =dao.joinnum(params);
		return row > 0 ? "회원등록이 성공 하였습니다.":"회원 등록에 실패하였습니다";
	}





	public String joinbis(HashMap<String, String> params) {
		logger.info("서비스 진입");
		logger.info("파람 : "+params);
		
		int row =dao.joinbis(params);
		return row > 0 ? "회원등록이 성공 하였습니다.":"회원 등록에 실패하였습니다";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
