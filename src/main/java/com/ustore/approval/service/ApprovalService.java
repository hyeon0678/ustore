package com.ustore.approval.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.approval.dao.ApprovalDao;
import com.ustore.approval.dto.ApprovalDto;

@Service
public class ApprovalService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalDao dao;
	
	
	public ApprovalDto findByCommonIdx(Integer common_idx) {
		return dao.findByCommonIdx(common_idx);
	}

	public void saveHtmlByCommonIdx(String html, Integer common_idx) {
		dao.saveHtmlByCommonIdx(html, common_idx);
	}
	
	
	
	
}
