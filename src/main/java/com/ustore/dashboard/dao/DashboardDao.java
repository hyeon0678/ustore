package com.ustore.dashboard.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.dashboard.dto.DashboardDto;
import com.ustore.products.dto.OrderDto;
import com.ustore.products.dto.StockDto;

@Mapper
public interface DashboardDao {






	ArrayList<DashboardDto> accountingDashboard();

	ArrayList<DashboardDto> accountingDashboardDay(String trfirstSelectedDate, String trlastSelectedDate);

	ArrayList<DashboardDto> dashboardStockHistoryList();

	ArrayList<DashboardDto> dashboardOrderHistoryList();

	ArrayList<DashboardDto> dashboardpaymentsHistoryList();

	ArrayList<DashboardDto> dashboardLineList();



}
