package com.ustore.products.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.products.dto.OrderDto;

@Mapper
public interface OrderDao {

	ArrayList<OrderDto> list();

	void orderCartInsert(OrderDto dto);

	ArrayList<OrderDto> orderList();

	ArrayList<OrderDto> driveList(OrderDto dto);

	void ordercartDelete(String productName);

	ArrayList<OrderDto> checkProduct(OrderDto dto);

	void orderInsert(OrderDto dto);

	ArrayList<OrderDto> orderCartSelect();

	void orderHistoryInsert(String productId);

	void driverSchedule(OrderDto dto);

	void orderDelete();

	

}
