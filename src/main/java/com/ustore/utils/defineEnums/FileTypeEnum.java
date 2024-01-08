package com.ustore.utils.defineEnums;

import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public enum FileTypeEnum {
	NOTICE("notic", 70),
	ANONY_BOARD("anonyBoard", 71),
	SEND_MAIL("sendMail", 72),
	RECEIVE_MAIL("receiveMail", 73),
	EMPLOYEE("employee", 74),
	APPROVAL("approval", 75),
	MEMBERS("members", 76);

    private static final Map<String, String> FILE_CODE = Collections.unmodifiableMap(
    			Stream.of(values()).collect(Collectors.toMap(FileTypeEnum::getFileType, FileTypeEnum::name)));
    
    private static final Map<Integer, String> FILE_TPYE = Collections.unmodifiableMap(
			Stream.of(values()).collect(Collectors.toMap(FileTypeEnum::getDefineCode, FileTypeEnum::name)));
	
	private final String fileType;
    private final int defindCode;
    
    
    FileTypeEnum(String fileType, int defindCode) {
    	this.fileType = fileType;
    	this.defindCode = defindCode;
	}

	public String getFileType() {
    	return fileType;
    }
	
	public int getDefineCode() {
		return defindCode;
	}
	
	/**
	 * 파일 타입을 영어로 넘기면 그에 맞는 정의 코드를 반환합니다
	 * 영어로 넘겨지는 파일 타입은 카멜케이스여야합니다
	 * 직책 한글명 예) notice, sendMail...
	 * @param fileType
	 * @return 정의 코드
	 */
	public static int findDefindCode(String position) {
		FileTypeEnum fileTypeEnum  = FileTypeEnum.valueOf(FILE_CODE.get(position));
		if(fileTypeEnum  == null) {
			throw new NullPointerException();
		}else {
			return fileTypeEnum.getDefineCode();
		}
		
	}
	
	/**
	 * 파일 타입을 코드로 넘기면 코드에 맞는 영어를 반환합니다
	 * 직책 코드 예) 20, 21
	 * @param 정의 코드
	 * @return 파일 타입
	 */
	public static String findType(int position) {
		FileTypeEnum fileTypeEnum = FileTypeEnum.valueOf(FILE_TPYE.get(position));
		if(fileTypeEnum  == null) {
			throw new NullPointerException();
		}else {
			return fileTypeEnum .getFileType();
		}
		
	}

}
