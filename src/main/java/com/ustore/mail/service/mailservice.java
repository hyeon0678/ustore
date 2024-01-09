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
	
	
	
	
	

}
