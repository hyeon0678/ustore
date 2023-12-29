package com.ustore.pos.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.member.dto.MemberDto;

@Mapper
public interface PosDao {

	ArrayList<MemberDto> posMember();

	ArrayList<MemberDto> memberSearch(HashMap<String, String> params);

}
