package com.ustore.board.service;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ustore.board.dao.BoardDao;

@Service
public class BoardService {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired BoardDao dao;

	public void adboardWrite(Map<String, String> params, MultipartFile[] photos, String deptID) {
		
		
		logger.info("글 작성 : " + params);
		dao.adboardWrite(params);
	}
	
}
