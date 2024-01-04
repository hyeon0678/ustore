package com.ustore.board.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ustore.board.dao.BoardDao;

@Service
public class BoardService {

	@Autowired BoardDao dao;

	public String boardWrite(Map<String, String> params, MultipartFile[] photos) {
		
		
		
		return null;
	}
	
}
