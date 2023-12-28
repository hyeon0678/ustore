package com.ustore.products.service;

import java.time.LocalDate;
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
	@Autowired
	OrderDao dao;

	public ArrayList<OrderDto> list() {

		return dao.list();
	}

	public void orderCartInsert(Map<String, String> params) {

		OrderDto dto = new OrderDto();
		dto.setProductId(params.get("productId"));
		dto.setOrderQuantity(Integer.parseInt(params.get("count")));

		dao.orderCartInsert(dto);

	}

	public ArrayList<OrderDto> orderList() {

		return dao.orderList();
	}

	public ArrayList<OrderDto> driveList(String formattedBirthdate) {

		if (formattedBirthdate == null) {
			formattedBirthdate = "2100-01-01";
		}

		OrderDto dto = new OrderDto();
		dto.setExpArrivalDate(formattedBirthdate);

		return dao.driveList(dto);
	}

	public void ordercartDelete(String productName) {
		dao.ordercartDelete(productName);

	}

	public boolean checkProduct(Map<String, String> params) {
		boolean msg;
		OrderDto dto = new OrderDto();
		dto.setProductId(params.get("productId"));

		ArrayList<OrderDto> CheckDto = (ArrayList<OrderDto>) dao.checkProduct(dto);

		logger.info("체크에 값 담겼나?:" + CheckDto);

		if (CheckDto.isEmpty()) { 
			msg = true;
		} else {
			msg = false;
		}
		return msg;
	}

	public void orderInsert(String formattedBirthdate, String driverIdx) {
		
		OrderDto dto = new OrderDto();
		
		dto.setDriverIdx(Integer.parseInt(driverIdx));
		dto.setExpArrivalDate(formattedBirthdate);
		
		
		
		dao.orderInsert(dto);
		dao.driverSchedule(dto);

	}

	public ArrayList<OrderDto> orderCartSelect() {
	
		return dao.orderCartSelect();
	}

	public void orderHistoryInsert(String productId) {
		
		
		dao.orderHistoryInsert(productId);
		
	}

	public void orderDelete() {
		dao.orderDelete();
		
	}

	

}
