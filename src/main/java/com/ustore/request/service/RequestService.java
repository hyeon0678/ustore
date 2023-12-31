package com.ustore.request.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.pos.dto.PosDto;
import com.ustore.request.dao.RequestDao;
import com.ustore.utils.defineEnums.RequestEnum;

@Service
public class RequestService {
@Autowired RequestDao requestDao;
Logger logger = LoggerFactory.getLogger(getClass());

public boolean pay(HashMap<String, String> params) {
	int row = requestDao.pay(params);
	int point = Integer.parseInt(params.get("remainPoints"))+ Integer.parseInt(params.get("endPoint"));
	row += requestDao.updatePoints(point,params.get("memberId"));
	
	//  결제 상세 내용 넣기
	Map<String, Object> map = new HashMap<String, Object>();
	ArrayList<PosDto> list = requestDao.payCart(params.get("memberId"));
	map.put("list", list);
	map.put("merchant_uid", params.get("merchant_uid"));
	requestDao.inPaymentsDetail(map);
	
	// 재고 감소
	for (PosDto posDto : list) {
		requestDao.stockDown(posDto.getProductId(),posDto.getQuantity());
	}
	
	
	// 장바구니 초기화
	requestDao.delCart(params.get("memberId"));
	
	if (row !=2) {
		return false;
	} else {
		return true;
	}
}

public void refund(String iamportIdx) {
	requestDao.refund(iamportIdx,RequestEnum.findDefindCode("결제 취소"));
	
	ArrayList<PosDto> list = requestDao.refundPaymentsDetail(iamportIdx);
	for (PosDto posDto : list) {
		requestDao.stockUp(posDto.getProductId(),posDto.getQuantity());
	}
	HashMap<String, String>map = requestDao.refundPointSelect(iamportIdx);
	logger.info("환불 포인트 맵 형식 값 확인 : "+map);
	requestDao.refundUpdatePoint(map);
}
}
