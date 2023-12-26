package com.ustore.products.dto;

import org.apache.ibatis.type.Alias;


public class StockDto {
	
	private String product_id;
	private String product_name;
	private int purchase_price;
	private int selling_price;
	private int unit_quantity;
	private int stock;
	private String point_enabled;
	private String category_id;
	private int reg_by;
	private int update_by;
	
	
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getPurchase_price() {
		return purchase_price;
	}
	public void setPurchase_price(int purchase_price) {
		this.purchase_price = purchase_price;
	}
	public int getSelling_price() {
		return selling_price;
	}
	public void setSelling_price(int selling_price) {
		this.selling_price = selling_price;
	}
	public int getUnit_quantity() {
		return unit_quantity;
	}
	public void setUnit_quantity(int unit_quantity) {
		this.unit_quantity = unit_quantity;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getPoint_enabled() {
		return point_enabled;
	}
	public void setPoint_enabled(String point_enabled) {
		this.point_enabled = point_enabled;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public int getReg_by() {
		return reg_by;
	}
	public void setReg_by(int reg_by) {
		this.reg_by = reg_by;
	}
	public int getUpdate_by() {
		return update_by;
	}
	public void setUpdate_by(int update_by) {
		this.update_by = update_by;
	}
	
	
}
