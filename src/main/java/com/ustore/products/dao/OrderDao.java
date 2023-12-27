package com.ustore.products.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.products.dto.OrderDto;

@Mapper
public interface OrderDao {

	ArrayList<OrderDto> list();

	void orderCartInsert(OrderDto dto);

	ArrayList<OrderDto> cartList();

}
