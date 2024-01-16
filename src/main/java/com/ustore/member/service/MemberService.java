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
	
	
	
	

	public int joinnum(MemberDto dto) {
		logger.info("서비스 진입");
		logger.info("파람 : "+dto);
		
		//int num= Integer.parseInt(params.get("num"));
		//logger.info("num : "+num);
		//params.put("num", num);
		
		
		
		return dao.joinnum(dto);
	}





	public String joinbis(MemberDto dto) {
		logger.info("서비스 진입");
		logger.info("파람 : "+dto);
		
		int row =dao.joinbis(dto);
		return row > 0 ? "회원등록이 성공 하였습니다.":"회원 등록에 실패하였습니다";
	}





	public int cusnum() {
		return dao.cusnum();
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





	public String pointinsert(int idx2) {
		int row = dao.pointinsert(idx2);
		return row>0? "회원등록에 성공하였습니다":"회원등록에 실패 하였습니다 ";
	}





	public int cuscount() {
		return dao.cuscount();
	}

	public int delcuscount() {
		return dao.delcuscount();
	}





	public int findnum(int idx) {
		return dao.findnum(idx);
	}





	public ArrayList<HashMap<String, String>> pointlistcall(int memberidx, String startdate, String enddate) {
		
		return dao.pointlistcall(memberidx, startdate, enddate);
	}





	public String sumpoint(int idx) {
		return dao.sumpoint(idx);
	}





	public ArrayList<HashMap<String, String>> detailbill(String paymentidx) {
		return dao.detailbill(paymentidx);
	}





	public HashMap<String, String> billlist(String paymentidx) {
		return dao.billlist(paymentidx);
	}





	public String bischeck(String bisnum) {
		int row = dao.bischeck(bisnum);
		logger.info("row"+row);
		return row>0? "이미 등록된 사업자 번호입니다":"등록 가능한 회원 번호입니다";
	}





	public void delupdate(int idx) {
		dao.delupdate(idx);
		
	}





	



	
	
	
	
	
	
	
	
	
	
	
}
