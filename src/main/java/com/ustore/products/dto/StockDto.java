package com.ustore.products.dto;

import org.apache.ibatis.type.Alias;


public class StockDto {
	
	private String productId;
	private String productName;
	private int purchasePrice;
	private int sellingPrice;
	private int unitQuantity;
	private int stock;
	private String pointEnabled;
	private String categoryId;
	private String regBy;
	private String updateBy;
	private String categoryName;
	private String empIdx;
	private String reason;
	private int operationType;
	private int quantity;
	private int price;
	private int finalminQuantity;
	private String regDate;

	
	
	
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getFinalminQuantity() {
		return finalminQuantity;
	}
	public void setFinalminQuantity(int finalminQuantity) {
		this.finalminQuantity = finalminQuantity;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public int getOperationType() {
		return operationType;
	}
	public void setOperationType(int operationType) {
		this.operationType = operationType;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getEmpIdx() {
		return empIdx;
	}
	public void setEmpIdx(String empIdx) {
		this.empIdx = empIdx;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPurchasePrice() {
		return purchasePrice;
	}
	public void setPurchasePrice(int purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public int getSellingPrice() {
		return sellingPrice;
	}
	public void setSellingPrice(int sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
	public int getUnitQuantity() {
		return unitQuantity;
	}
	public void setUnitQuantity(int unitQuantity) {
		this.unitQuantity = unitQuantity;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getPointEnabled() {
		return pointEnabled;
	}
	public void setPointEnabled(String pointEnabled) {
		this.pointEnabled = pointEnabled;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	
	public String getRegBy() {
		return regBy;
	}
	public void setRegBy(String regBy) {
		this.regBy = regBy;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	
	
	
	
	
	
	
}
