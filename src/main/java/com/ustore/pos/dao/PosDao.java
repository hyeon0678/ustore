package com.ustore.pos.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.member.dto.MemberDto;
import com.ustore.pos.dto.PosDto;

@Mapper
public interface PosDao {

	ArrayList<MemberDto> posMember();

	ArrayList<MemberDto> memberSearch(HashMap<String, String> params);

	ArrayList<PosDto> posItem();

	ArrayList<PosDto> posCart(String memberIdx);

	int updateCart(HashMap<String, String> params);

	void posCartInsert(HashMap<String, String> params);

	void deleteCart(HashMap<String, String> params);

	int selQuantity(HashMap<String, String> params);

	String selInsert(HashMap<String, String> params);

	ArrayList<PosDto> productSearch(HashMap<String, String> params);

	PosDto payModal(HashMap<String, String> params);

	int payPoint(HashMap<String, String> params);

	int datePoint(String string, int i);

}
