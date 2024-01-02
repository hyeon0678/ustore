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
		if ("01".equals(cateNum) || "02".equals(cateNum) || "03".equals(cateNum)) {
		    proNum = "A" + cateNum;
		} else if ("04".equals(cateNum) || "05".equals(cateNum) || "06".equals(cateNum)) {
		    proNum = "B" + cateNum;
		} else if ("07".equals(cateNum) || "08".equals(cateNum) || "09".equals(cateNum)) {
		    proNum = "C" + cateNum;
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
		dto.setRegBy(data.get("empIdx"));
		
		dao.stock_insert2(dto);
		
		
		
	}

	public ArrayList<StockDto> stockDetailList(String productId) {
		
		StockDto dto = new StockDto();
		dto.setProductId(productId);
		
		
		return dao.stockDetailList(dto);
	}

	public void stockManagementDelete(String productId) {
		
		dao.stockManagementDelete(productId);
		
	}

	public void stockDetailpuUpdate(String purchasePrice, String empIdx, String productId) {
		
		StockDto dto = new StockDto();
		dto.setPurchasePrice(Integer.parseInt(purchasePrice));
		dto.setUpdateBy(empIdx);
		dto.setProductId(productId);
		
		dao.stockDetailpuUpdate(dto);
		
		
		
		
	}

	public void stockDetailunUpdate(String unitQuantity, String empIdx, String productId) {
		StockDto dto = new StockDto();
		dto.setUnitQuantity(Integer.parseInt(unitQuantity));
		dto.setUpdateBy(empIdx);
		dto.setProductId(productId);
		
		dao.stockDetailunUpdate(dto);
		
		
	}

	public void stockHistoryInsert(String operationType, String quantity, String reason, String productId,
			String empIdx) {
		StockDto dto = new StockDto();
		dto.setOperationType(Integer.parseInt(operationType));
		dto.setQuantity(Integer.parseInt(quantity));
		dto.setReason(reason);
		dto.setProductId(productId);
		dto.setRegBy(empIdx);
		
		dao.stockHistoryInsert(dto);
		
	}

	public int minQuantity(String productId) {
		
		return dao.minQuantity(productId);
	}

	public void finalStock(int finalminQuantity, String productId) {
		StockDto dto = new StockDto();
		
		dto.setProductId(productId);
		dto.setFinalminQuantity(finalminQuantity);
	
		dao.finalStock(dto);
		
	}

	public ArrayList<StockDto> stockHistoryList(String productId) {
		
	
		return dao.stockHistoryList(productId);
	}

}
