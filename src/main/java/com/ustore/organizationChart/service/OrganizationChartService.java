package com.ustore.organizationChart.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.organizationChart.dao.OrganizationChartDao;
import com.ustore.organizationChart.dto.OrganizationChartDto;

@Service
public class OrganizationChartService {
	@Autowired
	OrganizationChartDao chartDao;
	
	public List<OrganizationChartDto> getChart(){
		List<OrganizationChartDto> result = new ArrayList<OrganizationChartDto>();
		result.addAll(chartDao.selectParent());
		result.addAll(chartDao.selectChild());
		return result;
	}

}
