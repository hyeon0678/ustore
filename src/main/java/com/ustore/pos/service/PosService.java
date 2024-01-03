package com.ustore.pos.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.member.dto.MemberDto;
import com.ustore.pos.dao.PosDao;
import com.ustore.pos.dto.PosDto;


@Service
public class PosService {
	@Autowired PosDao posDao;
	Logger logger = LoggerFactory.getLogger(getClass());

	public ArrayList<MemberDto> posMember() {
		return posDao.posMember();
	}

	public ArrayList<MemberDto> memberSearch(HashMap<String, String> params) {
		return posDao.memberSearch(params);
	}

	public ArrayList<PosDto> posItem() {
		ArrayList<PosDto> list = posDao.posItem();
		return list;
	}

	public ArrayList<PosDto> posCart(String memberIdx) {
		ArrayList<PosDto> list = posDao.posCart(memberIdx);
		return list;
	}

	public boolean updateCart(HashMap<String, String> params) {
		int selQuantity = posDao.selQuantity(params);
		logger.info("남은 재고 수량 확인 : "+selQuantity);
		if (selQuantity<Integer.parseInt(params.get("quantity"))) {
			return false;
		} else {
			int row = posDao.updateCart(params);
			return true;
		}
	}

	public boolean posCartInsert(HashMap<String, String> params) {
		String selInsert = posDao.selInsert(params);
		if (selInsert != null) {
			return false;
		} else {
			posDao.posCartInsert(params);
			return true;
		}
	}

	public void deleteCart(HashMap<String, String> params) {
		posDao.deleteCart(params);
	}

	public ArrayList<PosDto> productSearch(HashMap<String, String> params) {
		return posDao.productSearch(params);
	}

	public PosDto payModal(HashMap<String, String> params) {
		PosDto pos = new PosDto();
		pos = posDao.payModal(params);
		int point = posDao.payPoint(params);
		pos.setEndPoint(point);
		return pos;
	}
}
