package com.ustore.request.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.request.dao.RequestDao;

@Service
public class RequestService {
@Autowired RequestDao requestDao;

public boolean pay(HashMap<String, String> params) {
	int row = requestDao.pay(params);
	int point = Integer.parseInt(params.get("remainPoints"))+ Integer.parseInt(params.get("endPoint"));
	row += requestDao.updatePoints(point,params.get("memberId"));
	// 결제 상세 테이블이 무엇이였는지??   row += requestDao.insertPayDetail(params.get("merchant_uid"));
	if (row !=2) {
		return false;
	} else {
		return true;
	}
}
}
