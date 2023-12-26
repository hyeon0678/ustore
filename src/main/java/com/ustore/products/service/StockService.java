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

	public Object stock_insert(Map<String, String> params) {
		StockDto dto = new StockDto();
		String cateNum = params.get("categoryId");
		String proNum = "";
		if ("1".equals(cateNum) || "2".equals(cateNum) || "3".equals(cateNum)) {
		    proNum = "A0" + cateNum;
		} else if ("4".equals(cateNum) || "5".equals(cateNum) || "6".equals(cateNum)) {
		    proNum = "B0" + cateNum;
		} else if ("7".equals(cateNum) || "8".equals(cateNum) || "9".equals(cateNum)) {
		    proNum = "C0" + cateNum;
		}
		
		
		//dto.setProductName(params.get("productName"));
		//dto.setCategoryId(params.get("categoryId"));
		//dto.setUnitQuantity(Integer.parseInt(params.get("unitQuantity")));
		//dto.setPurchasePrice(Integer.parseInt(params.get("purchasePrice")));
		//dto.setSellingPrice(Integer.parseInt(params.get("sellingPrice")));
		
	
		logger.info("카테고리 번호 : "+cateNum);
		logger.info("상품 번호 : "+proNum);
		
		return  dao.stock_insert(proNum);
		
	}

	public void stock_insert2(String proNum, Map<String, String> data) {
		
		StockDto dto = new StockDto();
		int purchasePrice = Integer.parseInt(data.get("purchasePrice"));
		double sellingPriceDouble = purchasePrice * 1.3;
		int sellingPrice = (int) Math.round(sellingPriceDouble);
		sellingPrice = sellingPrice / 10 * 10;
		
		
		dto.setProductId(proNum);
		dto.setProductName(data.get("productName"));
		dto.setPurchasePrice(Integer.parseInt(data.get("purchasePrice")));
		dto.setSellingPrice(sellingPrice);
		dto.setCategoryId(data.get("categoryId"));
		dto.setUnitQuantity(Integer.parseInt(data.get("unitQuantity")));
		
		dao.stock_insert2(dto);
		
		
		
	}

}
