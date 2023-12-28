package com.ustore.organizationChart.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.organizationChart.dao.OrganizationChartDao;
import com.ustore.organizationChart.dto.OrganizationChartDto;

@Service
public class OrganizationChartService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired OrganizationChartDao chartDao;

	public List<OrganizationChartDto> getChart() {

		List<OrganizationChartDto> result = new ArrayList<>();
		List<OrganizationChartDto> departments = chartDao.selectDepartments();
		List<OrganizationChartDto> employees = chartDao.selectEmployees();

		result.addAll(departments);		
		result.addAll(employees);

		return result;
	}

}
