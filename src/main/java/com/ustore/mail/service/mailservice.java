package com.ustore.mail.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.mail.dao.maildao;

@Service
public class mailservice {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired maildao dao;
	
	
	
	
	public ArrayList<HashMap<String, String>> maillist(String emproynum) {
		return dao.maillist(emproynum);
	}




	public ArrayList<HashMap<String, String>> searchlist(String emproynum, String keyword) {
		return dao.searchlist(emproynum, keyword);
	}




	public ArrayList<HashMap<String, String>> outlist(String emproynum) {
		return dao.outlist(emproynum);
	}




	public ArrayList<HashMap<String, String>> outsearchlist(String emproynum, String keyword) {
		return dao.outsearchlist(emproynum, keyword);
	}




	public ArrayList<HashMap<String, String>> dellistRM(String emproynum) {
		return dao.dellistRM(emproynum);
	}




	public ArrayList<HashMap<String, String>> dellistSM(String emproynum) {
		return dao.dellistSM(emproynum);
	}




	public ArrayList<HashMap<String, String>> delsearchRM(String emproynum, String keyword) {
		return dao.delsearchRM(emproynum,keyword);
	}




	public ArrayList<HashMap<String, String>> delsearchSM(String emproynum, String keyword) {
		return dao.delsearchSM(emproynum, keyword);
	}




	public HashMap<String, String> detailRM(String emproynum, int idx) {
		return dao.detailRM(emproynum,idx);
	}




	public HashMap<String, String> detailSM(String emproynum, int idx) {
		return dao.detailSM(emproynum, idx);
	}




	public void updateRM(int idx) {
		dao.updateRM(idx);
		
	}




	public void delupdateRM(String emproynum, int selecteidx) {
		dao.delupdateRM(emproynum, selecteidx);
		
	}




	public void saveRM(String emproynum, String content, String subject) {
		dao.saveRM(emproynum, content,subject);
	}




	public void saveSM(String mailIdx, String emp) {
		dao.saveSM(mailIdx, emp);
	}




	public String mailidx(String emproynum, String content, String subject) {
		return dao.mailidx(emproynum, content,subject);
	}
	
	
	
	
	

}
