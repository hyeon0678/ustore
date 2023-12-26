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
	private int regBy;
	private int updateBy;
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
	public int getRegBy() {
		return regBy;
	}
	public void setRegBy(int regBy) {
		this.regBy = regBy;
	}
	public int getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(int updateBy) {
		this.updateBy = updateBy;
	}
	
	
	
	
	
}
