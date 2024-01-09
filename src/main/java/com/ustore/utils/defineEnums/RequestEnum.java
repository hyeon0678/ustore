package com.ustore.utils.defineEnums;

import java.util.Collections;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public enum RequestEnum {
	PAY("결제", 90),
	REFUND("결제 취소", 91),
	ITEM("상품", 92),
	MEMBERSHIP("멤버쉽", 93);

    private static final Map<String, String> POSITION_CODE = Collections.unmodifiableMap(
    			Stream.of(values()).collect(Collectors.toMap(RequestEnum::getPositionType, RequestEnum::name)));
    
    private static final Map<Integer, String> POSITION_TPYE = Collections.unmodifiableMap(
			Stream.of(values()).collect(Collectors.toMap(RequestEnum::getDefineCode, RequestEnum::name)));
	
	private final String positionType;
    private final int defindCode;
    
    
    RequestEnum(String positionType, int defindCode) {
    	this.positionType = positionType;
    	this.defindCode = defindCode;
	}

	public String getPositionType() {
    	return positionType;
    }
	
	public int getDefineCode() {
		return defindCode;
	}
	
	/**
	 * 직책을 한글로 넘기면 그에 맞는 정의 코드를 반환합니다
	 * 직책 한글명 예) 팀장, 메니저
	 * @param position
	 * @return 정의 코드
	 */
	public static int findDefindCode(String position) {
		RequestEnum positionEnum = RequestEnum.valueOf(POSITION_CODE.get(position));
		if(positionEnum == null) {
			throw new NullPointerException();
		}else {
			return positionEnum.getDefineCode();
		}
		
	}
	
	public static String findType(int position) {
		RequestEnum positionEnum = RequestEnum.valueOf(POSITION_TPYE.get(position));
		if(positionEnum == null) {
			throw new NullPointerException();
		}else {
			return positionEnum.getPositionType();
		}
		
	}

}
