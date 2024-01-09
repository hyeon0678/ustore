package com.ustore.mail.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface maildao {

	ArrayList<HashMap<String, String>> maillist(String emproynum);

	ArrayList<HashMap<String, String>> searchlist(String emproynum, String keyword);

	
	
	
	
	
}
