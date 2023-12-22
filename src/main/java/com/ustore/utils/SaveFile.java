package com.ustore.utils;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.multipart.MultipartFile;

import com.ustore.utils.dao.FileDao;
import com.ustore.utils.dto.FileDto;

public class SaveFile {
	@Value("${filePath}")
	private String filePath;
	
	@Value("${imgFilePath}")
	private String imgFilePath;
	
	@Value("${imgExtensions}")
	private List<String> imgExtList;
	
	@Autowired
	private FileDao fileDao;
	
	/**
	 * 파일 저장
	 * 파라미터 : MultipartFile [], int type
	 * int type : 파일의 구분
	 * String connIdx : 파일 연결 번호
	 */
	
	public void saveFile(MultipartFile[] files, String fileType, String connIdx){
		if(files == null) {
			throw new NullPointerException();
		}
		if(files.length <0) {
			
		}
		
		if(files != null && files.length > 0 ) {
			for(int i=0; i<files.length; i++) {	
				FileDto params = new FileDto();
				
				int extPosition = files[i].getOriginalFilename().indexOf(".");
				String oriFileName = files[i].getOriginalFilename().substring(0, extPosition);
				String ext = files[i].getOriginalFilename().substring(extPosition);
				String newFileName = System.currentTimeMillis() + RandomStringUtils.random(8);
				
				params.setFileName(oriFileName);
				params.setNewFileName(newFileName);
				params.setExtension(ext);
				params.setConnIdx(Integer.parseInt(connIdx));
				params.setFileType(fileType);
				params.setFilePath(returnPath(ext));
				
				int row = fileDao.saveFile(params);
				
			}
			
		}
	}
	
	private String returnPath(String ext){
		if(imgExtList.contains(ext)) {
			return imgFilePath;
		}
		return filePath;
	}
	
	
}
