package com.ustore.member.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDao {

	int joinnum(HashMap<String, String> params);

	int joinbis(HashMap<String, String> params);
	

}
