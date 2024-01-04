package com.ustore.member.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.member.dao.MemberDao;
import com.ustore.member.dto.MemberDto;

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





	public int cusnum(HashMap<String, String> params) {
		return dao.cusnum(params);
	}





	public ArrayList<HashMap<String, String>> listall(int pageState) {
		return dao.listall(pageState);
	}





	public HashMap<String, String> detail(int idx) {
		return dao.detail(idx);
	}





	public ArrayList<HashMap<String, String>> cussearch(String keyword, int state) {
		return dao.cussearch(keyword, state);
	}





	public HashMap<String, String> update(int idx) {
		return dao.update(idx);
	}





	public String updatesave(HashMap<String, String> params) {
		int row = dao.updatesave(params);
		return row>0?"변경에 성공 하였습니다.":"변경에 실패 하였습니다.";
	}





	public String del(int idx) {
		int row = dao.del(idx);
		return row>0?"변경에 성공 하였습니다.":"변경에 실패 하였습니다.";
	}





	public String newdate(int idx, int gradeidx) {
		int row = dao.newdate(idx, gradeidx);
		return row>0?"변경에 성공 하였습니다.":"변경에 실패 하였습니다.";
	}





	public HashMap<String, String> filefind(int idx) {
		return dao.filefind(idx);
	}





	public ArrayList<HashMap<String, String>> productlistcall(int memberidx, String startdate, String enddate) {
		return dao.productlistcall(memberidx, startdate, enddate);
	}





	public void pointinsert(int cusnum) {
		dao.pointinsert(cusnum);
		
	}





	
	
	
	
	
	
	
	
	
	
	
}
