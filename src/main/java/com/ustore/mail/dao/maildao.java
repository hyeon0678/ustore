package com.ustore.mail.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface maildao {

	ArrayList<HashMap<String, String>> maillist(String emproynum);

	ArrayList<HashMap<String, String>> searchlist(String emproynum, String keyword);

	ArrayList<HashMap<String, String>> outlist(String emproynum);

	ArrayList<HashMap<String, String>> outsearchlist(String emproynum, String keyword);

	ArrayList<HashMap<String, String>> dellistRM(String emproynum);

	ArrayList<HashMap<String, String>> dellistSM(String emproynum);

	ArrayList<HashMap<String, String>> delsearchRM(String emproynum, String keyword);

	ArrayList<HashMap<String, String>> delsearchSM(String emproynum, String keyword);

	HashMap<String, String> detailRM(String emproynum, int idx);

	HashMap<String, String> detailSM(String emproynum, int idx);

	void updateRM(int idx);

	void delupdateRM(String emproynum, int selecteidx);
	
	void delupdateSM(String emproynum, int selecteidx);

	void saveRM(String emproynum, String content, String subject);

	void saveSM(String mailIdx, String emp);

	String mailidx(String emproynum, String content, String subject);

	void reupdateRM(String emproynum, int selecteidx);

	void reupdateSM(String emproynum, int selecteidx);


	
	
	
	
	
}
