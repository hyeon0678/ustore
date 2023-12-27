package com.ustore.scheduler.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.scheduler.dto.AnnualLeavesDto;
import com.ustore.scheduler.dto.EmpAnnualDto;

@Mapper
public interface AnnualDao {
	
	List<EmpAnnualDto> getInitalAnnualCnt();
	
	List<EmpAnnualDto> getLongService();

	void insertAnnual(AnnualLeavesDto dto);
	

}
