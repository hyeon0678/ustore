package com.ustore.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ustore.fileSystem.dao.FileDao;
import com.ustore.fileSystem.dto.FileDto;

public class SaveFile {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	/**
	 * 클라이언트에서 넘어온 파일의 새로운 이름과 확장자,
	 * 파일 경로를 생성해 FileDto객체에 각각의 값을 바인딩 후 
	 * 리스트로 반환해주는 함수입니다
	 * @param files
	 * @param fileType : 파일의 구분 (파일이 어떠한 분류에 속해있는 지(테이블 명)) 
	 * @param connIdx : 파일 연결 번호
	 * @return FileDto객체 리스트 반환
	 */
	public List<FileDto> returnFileList(MultipartFile[] files, int fileType, String connIdx){
		List<FileDto> fileList = null;
		if(files == null) {
			throw new NullPointerException();
		}
		if(files.length <0) {
			throw new NullPointerException();
		}
		
		if(files != null && files.length > 0 ) {
			fileList = new ArrayList<FileDto>();
			
			for(int i=0; i<files.length; i++) {	
				FileDto file = new FileDto();
				
				int extPosition = files[i].getOriginalFilename().indexOf(".");
				String oriFileName = files[i].getOriginalFilename().substring(0, extPosition);
				String ext = files[i].getOriginalFilename().substring(extPosition);
				String newFileName = System.currentTimeMillis() + RandomStringUtils.random(8);
				
				file.setFileName(oriFileName);
				file.setNewFileName(newFileName);
				file.setExtension(ext);
				file.setConnIdx(Integer.parseInt(connIdx));
				file.setFileType(fileType);
				file.setFilePath(FileDefine.FILEPATH);
				
				fileList.add(file);
			}
		}
		
		return fileList;
	}
	
	/**
	 * 클라이언트에서 넘어온 파일의 새로운 이름과 확장자,
	 * 파일 경로를 생성해 FileDto객체에 각각의 값을 바인딩 후 
	 * FileDto객체를 반환합니다
	 * @param file
	 * @param fileType : 파일의 구분 (파일이 어떠한 분류에 속해있는 지(테이블 명)) 
	 * @param connIdx : 파일 연결 번호
	 * @return FileDto객체 반환
	 */
	public FileDto returnFileList(MultipartFile file, int fileType, String connIdx){
		FileDto fileDto = null;
		if(file == null) {
			throw new NullPointerException();
		}else{
			
			fileDto = new FileDto();
			
			int extPosition = file.getOriginalFilename().indexOf(".");
			String oriFileName = file.getOriginalFilename().substring(0, extPosition);
			String ext = file.getOriginalFilename().substring(extPosition);
			String newFileName = System.currentTimeMillis() + RandomStringUtils.random(8, true, true);
			
			fileDto.setFile(file);
			fileDto.setFileName(oriFileName);
			fileDto.setNewFileName(newFileName);
			fileDto.setExtension(ext);
			fileDto.setConnIdx(Integer.parseInt(connIdx));
			fileDto.setFileType(fileType);
			fileDto.setFilePath(FileDefine.FILEPATH);
		}
		
		return fileDto;
	}
	
	
	/**
	 * 파일 저장 (서버)
	 * @throws IOException 
	 * FileDto 객체를 매개변수로 전달하면 서버에 파일을 저장합니다
	 * 해당 메소드는 SaveFile 클래스의 
	 * returnFileList 혹은 returnFile 메소드 호출 후 
	 * 호출하는 것을 권장합니다
	 */
	public void saveFile(FileDto file) throws IOException {
		String pathName = file.getFilePath()+"//"+file.getNewFileName()+file.getExtension();
		Path path = Paths.get(pathName);
		byte[] fileBytes = file.getFile().getBytes();
		Files.write(path, fileBytes);
	}
	
}
