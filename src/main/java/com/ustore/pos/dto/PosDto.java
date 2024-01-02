package com.ustore.pos.dto;

public class PosDto {
	
	private String productId; // 상품 번호
	private String productName;  // 상품명
	private String sellingPrice;  // 판매가
	private String stock;   // 재고
	private String quantity; // 차트 수량
	private String sellingSum; // 장바구니 담긴 물품 합산 가격

	public String getSellingSum() {
		return sellingSum;
	}
	public void setSellingSum(String sellingSum) {
		this.sellingSum = sellingSum;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
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
	public String getSellingPrice() {
		return sellingPrice;
	}
	public void setSellingPrice(String sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}
}
