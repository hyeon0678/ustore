package com.ustore.products.service;



import java.util.ArrayList;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.products.dao.StockDao;
import com.ustore.products.dto.OrderDto;
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
		
		String finalPurchasePrice = data.get("purchasePrice").replaceAll("[^0-9]", "");
		String finalUnitQuantity = data.get("unitQuantity").replaceAll("[^0-9]", "");
		
		int purchasePrice = Integer.parseInt(finalPurchasePrice);
		
		double sellingPriceDouble = purchasePrice * 1.3;
		int sellingPrice = (int) Math.round(sellingPriceDouble);
		sellingPrice = sellingPrice / 10 * 10;
		
		
		dto.setProductId(proNum);
		dto.setProductName(data.get("productName"));
		dto.setPurchasePrice(Integer.parseInt(finalPurchasePrice));
		dto.setSellingPrice(sellingPrice);
		dto.setCategoryId(data.get("categoryId"));
		dto.setUnitQuantity(Integer.parseInt(finalUnitQuantity));
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

	public void stockHistoryInsert(String operationType, String extractedQuantity, String reason, String productId,
			String empIdx) {
		StockDto dto = new StockDto();
		dto.setOperationType(Integer.parseInt(operationType));
		dto.setQuantity(Integer.parseInt(extractedQuantity));
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

	public ArrayList<OrderDto> incomingList() {
		
		return dao.incomingList();
	}

	public ArrayList<OrderDto> incomModalList(int orderIdx) {
		
		return dao.incomModalList(orderIdx);
	}

	public void incomingModalUpdate(String productId,int orderIdx) {
		
		StockDto dto = new StockDto();
		dto.setProductId(productId);
		dto.setOrderIdx(orderIdx);
		
		
		dao.incomingModalUpdate(dto);
		
	
	}

	public void addProductQuantity(String productId, int totalQuantity) {
		
		StockDto dto = new StockDto();
		dto.setProductId(productId);
		dto.setQuantity(totalQuantity);
		
		dao.addProductQuantity(dto);
		
		
		
	}

	public boolean allOffSelect(int orderIdx) {
		
		ArrayList<StockDto> dto = dao.allOffSelect(orderIdx);
		
		
		return dto.isEmpty();
	}

	public void driverDelete(int driverIdx, String dateIdx) {
		OrderDto dto = new OrderDto();
		
		dto.setDriverIdx(driverIdx);
		dto.setExpArrivalDate(dateIdx);
		

		dao.driverDelete(dto);
		
	}

	public int drvierSelect(int orderIdx) {
		
		return dao.drvierSelect(orderIdx);
	}

	public String dateIdx(int orderIdx) {
		
		return dao.dateIdx(orderIdx);
	}

	public ArrayList<OrderDto> addIncomingList(String productId) {
		
		
		
		return dao.addIncomingList(productId);
	}

	public ArrayList<OrderDto> calendarList(String firstDate, String lastDate) {
	
		
		
		
		return dao.calendarList(firstDate,lastDate);
	}

	public ArrayList<StockDto> infoListTrue(String productId) {
		
		StockDto dto = new StockDto();
		dto.setProductId(productId);
		
		return dao.infoListTrue(dto);
	}



}
