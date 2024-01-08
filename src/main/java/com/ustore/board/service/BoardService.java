package com.ustore.board.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ustore.board.dao.BoardDao;
import com.ustore.board.dto.BoardDto;


@Service
public class BoardService {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired BoardDao dao;

	public String adboardWrite(Map<String, String> params, String deptID, String emp_idx) {
		
			logger.info("공지사항 작성");
			logger.info("공지사항 파라메터 : " + params);
			
			int row = dao.adboardWrite(params);
		
			return row > 0 ? "공지사항 작성 성공.":"공지사항 작성 실패";
	}

	public ArrayList<HashMap<String, String>> adList() {
		return dao.adList();
	}

	@Transactional
	public HashMap<String, String> adboardDetail(String notice_idx, boolean notice_hit) {
		if(notice_hit) {
			dao.adboardHit(notice_idx);
		}
		return dao.adboardDetail(notice_idx);
	}

	public HashMap<String, String> fileservice(String notice_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	public String adboardDelete(int notice_idx) {
		
		int row = dao.adboardDelete(notice_idx);
		
		return row > 0 ? "삭제 성공":"삭제 실패";
	}

	public String adboardTopFix(HashMap<String, String> params) {
		int row = dao.adboardTopFix(params);
		
		return row > 0 ? "상단 고정 성공":"상단 고정 실패";
	}

	

//	public ArrayList<BoardDto> adList(Map<String, String> params) {
//		return dao.adList(params);
//	}

	

	

	
	
	
}
