package com.ustore.board.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardDao {

	void adboardWrite(Map<String, String> params);

}
