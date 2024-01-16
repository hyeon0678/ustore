package com.ustore.fileSystem.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.ustore.utils.FileDefine;

@Controller
public class FileController {
	Logger logger = LoggerFactory.getLogger(getClass());
		
	@GetMapping(value = "/ustore/photo/{file}")
	public ResponseEntity<Resource> showImage(@PathVariable String file) throws IOException {
		String path = FileDefine.FILEPATH+"/" +file;
		logger.info(FileDefine.FILEPATH+"/" +file);
		
		//본문(파일)
		Resource resource = new FileSystemResource(path); //파일시스템의 특정 파일을 읽어오는 기능
		
		//헤더(본문에 대한 정보)
		HttpHeaders headers = new HttpHeaders();
		String type = Files.probeContentType(Paths.get(path));
		
		headers.add("Content-type", type);
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK); //바디, 헤더, 상태
	}
	
//파일 다운로드
	@GetMapping(value = "/download.do")
	public ResponseEntity<Resource> download(String file) throws IOException {
		
		String path = FileDefine.FILEPATH+"/" +file;
		logger.info(FileDefine.FILEPATH+"/" +file);
		logger.info("file값 : " + file);
		
		String ext = file.substring(file.lastIndexOf("."));
		logger.info("ext값 : " + ext);
//		//본문(파일)
		Resource resource = new FileSystemResource(path); //파일시스템의 특정 차일ㅇ르 읽어오는 기능
		
		int randomnum =  (int)(Math.random()*10000000);
		long MillisTime = System.currentTimeMillis();
		long RandomPhotoName = randomnum+MillisTime;
		logger.info("무작위 난수 : " + RandomPhotoName);
//		더미 코드 : 파일 이름 불러오기 방식에 따라 비활성화 할 것
		
//		//보여주기와 다운로드는 헤더 속성 값의 차이
		HttpHeaders headers = new HttpHeaders();
		String type = Files.probeContentType(Paths.get(path));
//		// text/... : 묹자열, image/... : 이미지, applidation/octet-stream:바이너리
		headers.add("Content-type", "application/actet-stream");
//		//content-Disposition : 내려보낼 내용이 문자(inline)인지 파일(attachment)인지 명시
//		//파일일 경우 파일명이 들어가는데, 한글은 다 깨진다.
//		//DB에서 원본 파일명을 가져왔다고 가정하자
//		String oriFileName=URLEncoder.encode(randomnum+ext, "utf-8");
		String oriFileName=URLEncoder.encode(file, "utf-8");
//		 //"attachment;fileName="원본.jpg""
		headers.add("content-Disposition", "attachment;fileName=\""+oriFileName+"\"");
//		
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK); //바디, 헤더, 상태
	}
}
