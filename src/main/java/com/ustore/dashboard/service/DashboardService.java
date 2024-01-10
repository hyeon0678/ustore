package com.ustore.dashboard.service;



import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.dashboard.dao.DashboardDao;
import com.ustore.dashboard.dto.DashboardDto;
import com.ustore.products.dto.OrderDto;
import com.ustore.products.dto.StockDto;

@Service
public class DashboardService {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired DashboardDao dao;

	
	

	public ArrayList<DashboardDto> accountingDashboard() {
		
		return dao.accountingDashboard();
	}




	public ArrayList<DashboardDto> accountingDashboardDay(String trfirstSelectedDate, String trlastSelectedDate) {
	
		
		
		return dao.accountingDashboardDay(trfirstSelectedDate,trlastSelectedDate);
	}




	public ArrayList<DashboardDto> dashboardStockHistoryList() {
		// TODO Auto-generated method stub
		
		
		return dao.dashboardStockHistoryList();
	}




	public ArrayList<DashboardDto> dashboardOrderHistoryList() {
	
		return dao.dashboardOrderHistoryList();
	}




	public ArrayList<DashboardDto> dashboardpaymentsHistoryList() {
		
		return dao.dashboardpaymentsHistoryList();
	}




	public ArrayList<DashboardDto> dashboardLineList() {
		
		return dao.dashboardLineList();
	}




	public ArrayList<DashboardDto> dashboardCategory() {
		
		
		return dao.dashboardCategory();
	}




	public ArrayList<DashboardDto> dashboardCategoryUpdate(String trfirstSelectedDate, String trlastSelectedDate) {
		
		return dao.dashboardCategoryUpdate(trfirstSelectedDate,trlastSelectedDate);
	}

}
