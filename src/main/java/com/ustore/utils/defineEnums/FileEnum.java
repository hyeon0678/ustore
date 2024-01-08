package com.ustore.utils.defineEnums;

import java.util.Collections;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public enum FileEnum {
	NOTICE("notice", 70),
	ANONYBOARD("anony_board", 71),
	SENDMAIL("send_mail", 72),
	RECEIVEMAIL("receive_mail", 73),
	EMPLOYEE("empoyee", 74),
	APPROVAL("approval", 75),
	MEMBERS("members", 76);

    private static final Map<String, String> POSITION_CODE = Collections.unmodifiableMap(
    			Stream.of(values()).collect(Collectors.toMap(FileEnum::getPositionType, FileEnum::name)));
    
    private static final Map<Integer, String> POSITION_TPYE = Collections.unmodifiableMap(
			Stream.of(values()).collect(Collectors.toMap(FileEnum::getDefineCode, FileEnum::name)));
	
	private final String positionType;
    private final int defindCode;
    
    
    FileEnum(String positionType, int defindCode) {
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
		FileEnum positionEnum = FileEnum.valueOf(POSITION_CODE.get(position));
		if(positionEnum == null) {
			throw new NullPointerException();
		}else {
			return positionEnum.getDefineCode();
		}
		
	}
	
	public static String findType(int position) {
		FileEnum positionEnum = FileEnum.valueOf(POSITION_TPYE.get(position));
		if(positionEnum == null) {
			throw new NullPointerException();
		}else {
			return positionEnum.getPositionType();
		}
		
	}

}
