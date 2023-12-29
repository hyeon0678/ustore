package com.ustore.member.dto;

public class MemberDto {
	private String memberIdx;  // 회원 번호
	private String name;      // 회원 이름
	private String contactNum;   // 회원 연락처
	private String grade;   // 회원 등급 (회원 번호 아닙니다)
	private String commonType;  // 회원 타입(회원 타입 번호 아닙니다)
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
