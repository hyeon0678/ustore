package com.ustore.dashboard.dto;

import org.apache.ibatis.type.Alias;


public class DashboardDto {
	
	

	private String productName;
	private int sellingPrice;
	private String paymentDate;
	private int totalPrice;
	private int totalPriceOrder;
	private int totalUsedPoints;
	private int totalAllPrice;
	private int food;
	private int necessity;
	private int electronics;
	
	
	
	
	
	
	
	public int getFood() {
		return food;
	}
	public void setFood(int food) {
		this.food = food;
	}
	public int getNecessity() {
		return necessity;
	}
	public void setNecessity(int necessity) {
		this.necessity = necessity;
	}
	public int getElectronics() {
		return electronics;
	}
	public void setElectronics(int electronics) {
		this.electronics = electronics;
	}
	public int getTotalAllPrice() {
		return totalAllPrice;
	}
	public void setTotalAllPrice(int totalAllPrice) {
		this.totalAllPrice = totalAllPrice;
	}
	public int getTotalUsedPoints() {
		return totalUsedPoints;
	}
	public void setTotalUsedPoints(int totalUsedPoints) {
		this.totalUsedPoints = totalUsedPoints;
	}
	public int getTotalPriceOrder() {
		return totalPriceOrder;
	}
	public void setTotalPriceOrder(int totalPriceOrder) {
		this.totalPriceOrder = totalPriceOrder;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getSellingPrice() {
		return sellingPrice;
	}
	public void setSellingPrice(int sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	
	
	
	
	
	
}
