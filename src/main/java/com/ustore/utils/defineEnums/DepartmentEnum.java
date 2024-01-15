package com.ustore.utils.defineEnums;

import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public enum DepartmentEnum {
	USTORE("UStore", 1),
	HUMAN_RESOURCES_TEAM("매장관리팀", 2),
	ACCOUNTING_TEAM("인사팀", 3),
	CUSTOMER_TEAM("회계팀", 4),
	STORE_TEMA("고객관리팀", 5),
	FOOD_TEAM("식품팀", 6),
	NECESSARIES_TEAM("생필품팀", 7),
	ELECTRONICS_TEAM("전자제품팀", 8);

    private static final Map<String, String> DEPARTMENT_TYPE = Collections.unmodifiableMap(
    			Stream.of(values()).collect(Collectors.toMap(DepartmentEnum::getPositionType, DepartmentEnum::name)));
    private static final Map<Integer, String> DEPARTMENT_CODE = Collections.unmodifiableMap(
			Stream.of(values()).collect(Collectors.toMap(DepartmentEnum::getDefineCode, DepartmentEnum::name)));
	
	private final String departmentType;
    private final int defindCode;
    
    
    DepartmentEnum(String departmentType, int defindCode) {
    	this.departmentType = departmentType;
    	this.defindCode = defindCode;
	}

	public String getPositionType() {
    	return departmentType;
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
		DepartmentEnum departmentEnum = DepartmentEnum.valueOf(DEPARTMENT_TYPE.get(department));
		if(departmentEnum == null) {
			throw new NullPointerException();
		}else {
			return departmentEnum.getDefineCode();
		}
		
	}
	
	public static String findDefindType(String department) {
		DepartmentEnum departmentEnum = DepartmentEnum.valueOf(DEPARTMENT_CODE.get(department));
		if(departmentEnum == null) {
			throw new NullPointerException();
		}else {
			return departmentEnum.getPositionType();
		}
		
	}

}
