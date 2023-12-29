package com.ustore.pos.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.member.dto.MemberDto;
import com.ustore.pos.dao.PosDao;


@Service
public class PosService {
	@Autowired PosDao posDao;

	public ArrayList<MemberDto> posMember() {
		return posDao.posMember();
	}

	public ArrayList<MemberDto> memberSearch(HashMap<String, String> params) {
		return posDao.memberSearch(params);
	}
}
