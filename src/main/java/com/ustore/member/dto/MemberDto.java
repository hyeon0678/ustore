package com.ustore.member.dto;

import java.sql.Date;

public class MemberDto {
	private String memberIdx;  // 회원 번호
	private String name;      // 회원 이름
	private String contactNum;   // 회원 연락처
	private String grade;   // 회원 등급 (회원 번호 아닙니다)
	private String commonType;  // 회원 타입(회원 타입 번호 아닙니다)
	//===========================================
	
	private int gradeIdx;
	private String businessNum;
	private int memberType;	
	private Date createDate;
	private Date expiryDate;
	private String birthdate;
	private String gender;
	private int postalCode;
	private String streetAddress;
	private String detailAddress;
	private int memberState;
	private int regBy;
	private Date update;
	private int updateBy;
	
	
	
	
	
	public int getGradeIdx() {
		return gradeIdx;
	}
	public void setGradeIdx(int gradeIdx) {
		this.gradeIdx = gradeIdx;
	}
	public String getBusinessNum() {
		return businessNum;
	}
	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}
	public int getMemberType() {
		return memberType;
	}
	public void setMemberType(int memberType) {
		this.memberType = memberType;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}
	
	
	
	
	
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(int postalCode) {
		this.postalCode = postalCode;
	}
	public String getStreetAddress() {
		return streetAddress;
	}
	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public int getMemberState() {
		return memberState;
	}
	public void setMemberState(int memberState) {
		this.memberState = memberState;
	}
	public int getRegBy() {
		return regBy;
	}
	public void setRegBy(int regBy) {
		this.regBy = regBy;
	}
	public Date getUpdate() {
		return update;
	}
	public void setUpdate(Date update) {
		this.update = update;
	}
	public int getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(int updateBy) {
		this.updateBy = updateBy;
	}
	public String getMemberIdx() {
		return memberIdx;
	}
	public void setMemberIdx(String memberIdx) {
		this.memberIdx = memberIdx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContactNum() {
		return contactNum;
	}
	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getCommonType() {
		return commonType;
	}
	public void setCommonType(String commonType) {
		this.commonType = commonType;
	}
}
