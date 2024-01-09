package com.ustore.board.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.board.dto.BoardDto;
import com.ustore.fileSystem.dto.FileDto;



@Mapper
public interface BoardDao {

	int adboardWrite(Map<String, String> params);

	int anboardWrite(Map<String, String> params);
	
	ArrayList<HashMap<String, String>> adList();

	ArrayList<HashMap<String, String>> anList();
	
	HashMap<String, String> adboardDetail(String notice_idx);

	HashMap<String, String> anboardDetail(String anony_idx);
	
	int adboardHit(String notice_idx);

	int anboardHit(String anony_idx);

	int adboardDelete(int notice_idx);
	
	int anboardDelete(int anony_idx);

	int adboardTopFix(HashMap<String, String> params);

	void anreply(String anony_board_idx, String repl_content);

	ArrayList<BoardDto> anboardReplyList(int anony_board_idx);

	void delreply(String repl_idx);

	ArrayList<HashMap<String, String>> adlistSearch(String keyword);

	ArrayList<HashMap<String, String>> anlistSearch(String keyword);

	int adboardNum(Map<String, String> params);

	int anboardNum(Map<String, String> params);

	ArrayList<FileDto> getPhoto(String anony_idx);





	

//	ArrayList<BoardDto> adList(Map<String, String> params);



}
