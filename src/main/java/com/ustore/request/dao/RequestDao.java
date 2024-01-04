package com.ustore.request.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RequestDao {

	int pay(HashMap<String, String> params);

	int updatePoints(int point, String string2);


}
