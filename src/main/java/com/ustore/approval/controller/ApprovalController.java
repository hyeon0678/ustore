package com.ustore.approval.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
		return "board/admin_board_detail";
	}
	
	@GetMapping(value="/write")
	public String write(@RequestParam int common_idx, Model model) {
		// common_idx에 따라 다른 JSP 페이지 경로 설정
        String formPage = getFormPageByCommonIdx(common_idx);

        // 모델에 양식 페이지 경로를 추가
        model.addAttribute("formPage", formPage);

        // 양식 작성 페이지로 이동
        return "approval/writeApprDoc";
	}
	
	 // common_idx에 따라 다른 html을 가져오게 하기
    private String getFormPageByCommonIdx(int common_idx) {
        String formPage = null;
        switch (common_idx) {
            case 30:
                formPage = "resource/business_draft_test.html";
                break;
            case 31:
                formPage = "resource/payment_resolution_test.html";
                break;
            case 32:
                formPage = "resource/reqVac_test.html";
                break;
        }
        return formPage;
    }
	
	
	// HTML 파일을 저장할 폴더 경로
    private static final String HTML_FOLDER_PATH = "C:\\ustoreUpload\\html";
	
   
	
    @PostMapping("/approval/saveHtml")
    public void saveHtmlByCommonIdx(@RequestParam String html, @RequestParam Integer common_idx) {
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
