package com.ustore.organizationChart.dao;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.fileSystem.dto.FileDto;
import com.ustore.organizationChart.dto.OrganizationChartDto;

@Mapper
public interface OrganizationChartDao {
	
	List<OrganizationChartDto> selectDepartments();
	List<OrganizationChartDto> selectEmployees();
}