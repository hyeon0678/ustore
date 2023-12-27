package com.ustore.utils.defineEnums;

import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public enum LeaveTypeEnum {
	ANNUAL_LEAVE("연차", 50),
	SICK_LEAVE("공가", 51),
	OFFICIAL_LEAVE("병가", 52);

    private static final Map<String, String> LEAVETYPE = Collections.unmodifiableMap(
    			Stream.of(values()).collect(Collectors.toMap(LeaveTypeEnum::getPositionType, LeaveTypeEnum::name)));
	
	private final String LeaveType;
    private final int defindCode;
    
    
    LeaveTypeEnum(String LeaveType, int defindCode) {
    	this.LeaveType = LeaveType;
    	this.defindCode = defindCode;
	}

	public String getPositionType() {
    	return LeaveType;
    }
	
	public int getDefineCode() {
		return defindCode;
	}
	
	/**
	 * 팀이름을 한글로 넘기면 그에 맞는 정의 코드를 반환합니다.
	 * 한글명으로 된 팀 이름 예) 인사팀, 회계팀
	 * 예외) 최상위 팀인 UStore는 영문 그대로 넘겨주시면 됩니다
	 * @param department
	 * @return 정의 코드
	 */
	public static int findDefindCode(String department) {
		LeaveTypeEnum departmentEnum = LeaveTypeEnum.valueOf(LEAVETYPE.get(department));
		if(departmentEnum == null) {
			throw new NullPointerException();
		}else {
			return departmentEnum.getDefineCode();
		}
		
	}

}
