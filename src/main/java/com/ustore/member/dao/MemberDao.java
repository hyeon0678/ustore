package com.ustore.member.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.member.dto.MemberDto;

@Mapper
public interface MemberDao {

	int joinnum(HashMap<String, String> params);

	int joinbis(HashMap<String, String> params);

	int cusnum(HashMap<String, String> params);

	ArrayList<HashMap<String, String>> listall(int pageState);
	

}
