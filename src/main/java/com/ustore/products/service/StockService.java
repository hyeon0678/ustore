package com.ustore.products.service;



import java.util.ArrayList;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.products.dao.StockDao;
import com.ustore.products.dto.StockDto;

@Service
public class StockService {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired StockDao dao;

	public ArrayList<StockDto> list() {
		
		return dao.list();
	}

	public void stock_insert(Map<String, String> params) {
		StockDto dto = new StockDto();
		dto.setProduct_name(params.get("product_name"));
		dto.setCategory_id(params.get("category_id"));
		dto.setUnit_quantity(Integer.parseInt(params.get("unit_quantity")));
		dto.setPurchase_price(Integer.parseInt(params.get("purchase_price")));
		dto.setSelling_price(Integer.parseInt(params.get("selling_price")));
		
		logger.info("dto : "+dto);
		
		dao.stock_insert(dto);
		
	}

}
