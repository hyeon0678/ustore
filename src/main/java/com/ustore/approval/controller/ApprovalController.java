package com.ustore.approval.controller;

import java.io.IOException;
import java.io.InputStreamReader;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ustore.approval.service.ApprovalService;

@Controller
public class ApprovalController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalService service;
	
	@GetMapping(value="/newapproval")
	public String newApproval() {
		return "approval/selectDoc";
	}
	@GetMapping(value="/approvalreq")
	public String getApprReqList() {
		return "approval/reqApprDocList";
	}
	@GetMapping(value="/myapproval")
	public String getMyApprList() {
		return "approval/myApprDocList";
	}
	@GetMapping(value="/tempapproval")
	public String getTempApprList() {
		return "approval/tempSaveApprDocList";
	}
	@GetMapping(value="/teamapproval")
	public String getTeamDocList() {
		return "approval/teamApprDocList";
	}
	
	@GetMapping(value="/newapproval/write")
	public String write(@RequestParam int common_idx, Model model) {
		// common_idx에 따라 다른 JSP 페이지 경로 설정
        String formPage = getFormPageByCommonIdx(common_idx);

        // 모델에 양식 페이지 경로를 추가
        model.addAttribute("formPage", formPage);
        model.addAttribute("common_idx", common_idx);
        // 양식 작성 페이지로 이동
        return "approval/writeApprDoc";
	}
	
	@GetMapping("/getHtml")
	public ResponseEntity<byte[]> getHtml(@RequestParam int common_idx) throws IOException {
	    String filePath = getFormPageByCommonIdx(common_idx);
	    ClassPathResource classPathResource = new ClassPathResource(filePath);
	    InputStreamReader reader = new InputStreamReader(classPathResource.getInputStream());
	    char[] buffer = new char[1024];
	    StringBuilder builder = new StringBuilder();
	    int bytesRead;
	    while ((bytesRead = reader.read(buffer)) != -1) {
	        builder.append(buffer, 0, bytesRead);
	    }

	    byte[] htmlBytes = builder.toString().getBytes();
	    HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.TEXT_HTML);
	    headers.setContentLength(htmlBytes.length);
	    return new ResponseEntity<>(htmlBytes, headers, HttpStatus.OK);
	}
	
	
	 // common_idx에 따라 다른 html을 가져오게 하기
    private String getFormPageByCommonIdx(int common_idx) {
        String formPage = null;
        switch (common_idx) {
            case 30:
                formPage = "static/business_draft_test.html";
                break;
            case 31:
                formPage = "static/payment_resolution_test.html";
                break;
            case 32:
                formPage = "static/reqVac_test.html";
                break;
        }
        return formPage;
    }
	
	
	// HTML 파일을 저장할 폴더 경로
    private static final String HTML_FOLDER_PATH = "C:\\ustoreUpload\\html";
	
   
	
    @PostMapping("/approval/saveHtml")
    public void saveHtmlByCommonIdx(@RequestParam String html, @RequestParam int common_idx) {
        service.saveHtmlByCommonIdx(html, common_idx);
    }

    
	
	@GetMapping(value="/approval/approvalReq") 
	public String datatable() {
		return "approval/apprDoc";
	}
	
	@GetMapping(value="/apprtree")
	public String apprtree() {
		return "employee/personnel_management";
	}
	 
	
}
