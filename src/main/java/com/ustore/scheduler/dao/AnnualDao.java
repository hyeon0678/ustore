package com.ustore.scheduler.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.scheduler.dto.AnnualDto;

@Mapper
public interface AnnualDao {
	
	AnnualDto getInitalAnnualCnt();
	
	AnnualDto getLongService();
	

}
