package com.ustore.board.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.board.dto.BoardDto;

@Mapper
public interface BoardDao {

	int adboardWrite(Map<String, String> params);

	ArrayList<HashMap<String, String>> adList();

	HashMap<String, String> adboardDetail(String notice_idx);

	int adboardHit(String notice_idx);

	int adboardDelete(int notice_idx);

	int adboardTopFix(HashMap<String, String> params);

//	ArrayList<BoardDto> adList(Map<String, String> params);



}
