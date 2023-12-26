package com.ustore.products.service;

import java.util.ArrayList;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.products.dao.OrderDao;
import com.ustore.products.dto.OrderDto;

@Service
public class OrderService {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired OrderDao dao;
			

	public ArrayList<OrderDto> list() {
		
		return dao.list();
	}


	public void orderCartInsert(Map<String, String> params) {
		
		OrderDto dto = new OrderDto();
		dto.setProductId(params.get("productId"));
		dto.setOrderQuantity(Integer.parseInt(params.get("count")));
		
		dao.orderCartInsert(dto);
		
	}


	public ArrayList<OrderDto> cartList() {
		// TODO Auto-generated method stub
		return null;
	}

}
