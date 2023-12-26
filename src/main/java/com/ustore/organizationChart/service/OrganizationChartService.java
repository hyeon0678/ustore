package com.ustore.organizationChart.service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.organizationChart.dao.OrganizationChartDao;
import com.ustore.organizationChart.dto.OrganizationChartDto;

@Service
public class OrganizationChartService {
	@Autowired
	OrganizationChartDao chartDao;
	
	public List<OrganizationChartDto> getChart(){
		
		List<OrganizationChartDto> result = new ArrayList<>();
		List<OrganizationChartDto> departments = chartDao.selectDepartments();
		List<OrganizationChartDto> employees = chartDao.selectEmployees();
		
		result.addAll(departments);	        
		result.addAll(employees);	 
	    
		return result;
	}

}
