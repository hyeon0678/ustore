package com.ustore.utils.dfineEnums;

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

    private static final Map<String, String> POSITION = Collections.unmodifiableMap(
    			Stream.of(values()).collect(Collectors.toMap(PositionEnum::getPositionType, PositionEnum::name)));
	
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
	
	public static int findDefindCode(String position) {
		PositionEnum positionEnum = PositionEnum.valueOf(POSITION.get(position));
		if(positionEnum == null) {
			throw new NullPointerException();
		}else {
			return positionEnum.getDefineCode();
		}
		
	}

}
