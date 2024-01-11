package com.ustore.board.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.ustore.board.dao.BoardDao;
import com.ustore.board.dto.BoardDto;
import com.ustore.fileSystem.dao.FileDao;
import com.ustore.fileSystem.dto.FileDto;


@Service
public class BoardService {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired BoardDao dao;
	@Autowired FileDao filedao;

	public String adboardWrite(Map<String, String> params, String deptID, String emp_idx) {
		
			logger.info("공지사항 작성");
			logger.info("공지사항 파라메터 : " + params);
			
			int row = dao.adboardWrite(params);
		
			return row > 0 ? "공지사항 작성 성공.":"공지사항 작성 실패";
	}
	
	public String anboardWrite(Map<String, String> params, String deptID, String emp_idx) {
		logger.info("익명 게시판 작성");
		logger.info("익명 게시판 파라메터 : " + params);
		
		int row = dao.anboardWrite(params);
	
		return row > 0 ? "익명게시판 작성 성공":"익명게시판 작성 실패";
	}

	public ArrayList<HashMap<String, String>> adList() {
		return dao.adList();
	}
	
	public ArrayList<HashMap<String, String>> anList() {
		return dao.anList();
	}

	@Transactional
	public HashMap<String, String> adboardDetail(int notice_idx, boolean notice_hit) {
		if(notice_hit) {
			dao.adboardHit(notice_idx);
		}
		
		
		return dao.adboardDetail(notice_idx);
	}
	
	@Transactional
	public HashMap<String, String> anboardDetail(String anony_idx, boolean anony_hit) {
		if(anony_hit) {
			dao.anboardHit(anony_idx);
		}
		return dao.anboardDetail(anony_idx);
	}

	public String adboardDelete(int notice_idx) {
		
		int row = dao.adboardDelete(notice_idx);
		
		return row > 0 ? "삭제 성공":"삭제 실패";
	}
	
	public String anboardDelete(int anony_idx) {
		int row = dao.anboardDelete(anony_idx);
		return row > 0 ? "삭제 성공":"삭제 실패";
	}

	public String adboardTopFix(HashMap<String, String> params) {
		
		
		int row = dao.adboardTopFix(params);
		
		return row > 0 ? "상단 고정 성공":"상단 고정 실패";
	}

	public void anreply(String anony_board_idx, String repl_content) {
		
		dao.anreply(anony_board_idx, repl_content);
		
	}

	public Map<String, Object> anboardReplyList(String anony_board_idx) {
		
		ArrayList<BoardDto> list = dao.anboardReplyList(Integer.parseInt(anony_board_idx));

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		return map;
	}

	public void delreply(String repl_idx) {
		dao.delreply(repl_idx);
	}

	public ArrayList<HashMap<String, String>> adlistSearch(String keyword) {
		return dao.adlistSearch(keyword);
	}
	
	public ArrayList<HashMap<String, String>> anlistSearch(String keyword) {
		return dao.anlistSearch(keyword);
	}

	public int adboardNum(Map<String, String> params) {
		return dao.adboardNum(params);
	}

	public int anboardNum(Map<String, String> params) {
		return dao.anboardNum(params);
	}

	public List<HashMap<String, String>> adfile(int notice_idx) {
		logger.info("filesearchservice : " + notice_idx);
		
		return dao.adfile(notice_idx);
		
	}

	public ArrayList<FileDto> adfileshow(int notice_idx) {
		return dao.adfileshow(notice_idx);
	}

	public ArrayList<FileDto> anfileshow(String anony_idx) {
		return dao.anfileshow(anony_idx);
	}

	
}
