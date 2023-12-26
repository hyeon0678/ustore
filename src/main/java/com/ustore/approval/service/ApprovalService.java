package com.ustore.approval.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.approval.dao.ApprovalDao;

@Service
public class ApprovalService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalDao dao;
	
	
	
}
