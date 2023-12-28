package com.ustore.employee.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EmpProfileDao {

	void addevent(Map<String, String> params);
	


	
	
}
