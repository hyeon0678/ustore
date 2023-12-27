package com.ustore.approval.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.approval.dao.ApprovalDao;
import com.ustore.approval.dto.ApprovalDto;
import com.ustore.member.dto.MemberDto;

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

	public void saveApprLineData(List<MemberDto> approvalLines, List<MemberDto> receivers) {
		// TODO Auto-generated method stub
		
	}
	
	
	
	
}
