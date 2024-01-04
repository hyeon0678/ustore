package com.ustore.pos.dto;

public class PosDto {
	
	private String productId; // 상품 번호
	private String productName;  // 상품명
	private String sellingPrice;  // 판매가
	private String stock;   // 재고
	private String quantity; // 차트 수량
	private String sellingSum; // 장바구니 담긴 물품 합산 가격
	private String name; // 회원 이름
	private int totalPoint; // 보유 포인트
	private String expiryDate; // 멤버쉽 만료일자
	private int upPoint; // 포인트 사용 가능 금액, 포인트 적립되는 금액
	private int endPoint; // 포인트 적립 액수
	private int accumulationRate; // 포인트 적립 비율
	private String contactNum;  // 회원 전화번호
	public String getContactNum() {
		return contactNum;
	}
	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}
	public int getAccumulationRate() {
		return accumulationRate;
	}
	public void setAccumulationRate(int accumulationRate) {
		this.accumulationRate = accumulationRate;
	}
	public int getEndPoint() {
		return endPoint;
	}
	public void setEndPoint(int endPoint) {
		this.endPoint = endPoint;
	}
	public int getUpPoint() {
		return upPoint;
	}
	public void setUpPoint(int upPoint) {
		this.upPoint = upPoint;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTotalPoint() {
		return totalPoint;
	}
	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
	}
	public String getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}
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
