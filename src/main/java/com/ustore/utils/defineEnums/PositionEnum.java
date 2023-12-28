package com.ustore.utils.defineEnums;

import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public enum PositionEnum {
	BRANCHMANAGER("점장", 20),
	TEAMLEADER("팀장", 21),
	MANAGER("매니저", 22),
	STAFF("팀원", 23);

    private static final Map<String, String> POSITION_CODE = Collections.unmodifiableMap(
    			Stream.of(values()).collect(Collectors.toMap(PositionEnum::getPositionType, PositionEnum::name)));
    
    private static final Map<Integer, String> POSITION_TPYE = Collections.unmodifiableMap(
			Stream.of(values()).collect(Collectors.toMap(PositionEnum::getDefineCode, PositionEnum::name)));
	
	private final String positionType;
    private final int defindCode;
    
    
    PositionEnum(String positionType, int defindCode) {
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
		PositionEnum positionEnum = PositionEnum.valueOf(POSITION_CODE.get(position));
		if(positionEnum == null) {
			throw new NullPointerException();
		}else {
			return positionEnum.getDefineCode();
		}
		
	}
	
	public static String findType(int position) {
		PositionEnum positionEnum = PositionEnum.valueOf(POSITION_TPYE.get(position));
		if(positionEnum == null) {
			throw new NullPointerException();
		}else {
			return positionEnum.getPositionType();
		}
		
	}

}
