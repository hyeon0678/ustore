package com.ustore.products.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.products.dto.OrderDto;
import com.ustore.products.dto.StockDto;

@Mapper
public interface StockDao {

	ArrayList<OrderDto> incomModalList = null;

	ArrayList<StockDto> list();

	Object stock_insert(String proNum);

	void stock_insert2(StockDto dto);

	ArrayList<StockDto> stockDetailList(StockDto dto);

	void stockManagementDelete(String productId);

	void stockDetailpuUpdate(StockDto dto);

	void stockDetailunUpdate(StockDto dto);

	void stockHistoryInsert(StockDto dto);

	int minQuantity(String productId);

	void finalStock(StockDto dto);

	ArrayList<StockDto> stockHistoryList(String productId);

	ArrayList<OrderDto> incomingList();

	ArrayList<OrderDto> incomModalList(int orderIdx);

	void incomingModalUpdate(StockDto dto);

	void addProductQuantity(StockDto dto);

	ArrayList<StockDto> allOffSelect(int orderIdx);

	void driverDelete(OrderDto dto);

	int drvierSelect(int orderIdx);

	String dateIdx(int orderIdx);



}
