package com.ustore.approval.controller;

import java.io.IOException;
import java.io.InputStreamReader;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ustore.approval.dto.ApprDocDto;
import com.ustore.approval.dto.ApprovalDto;
import com.ustore.approval.service.ApprovalService;
import com.ustore.employee.dto.EmployeeDto;

@Controller
public class ApprovalController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalService service;
	
	@GetMapping(value="/approval/newapproval")
	public String newApproval() {
		return "approval/selectDoc";
	}
	@GetMapping(value="/approval/approvalreq")
	public String getApprReqList() {
		return "approval/reqApprDocList";
	}
	@GetMapping(value="/approval/myapproval")
	public String getMyApprList() {
		return "approval/myApprDocList";
	}
	@GetMapping(value="/approval/tempapproval")
	public String getTempApprList() {
		return "approval/tempSaveApprDocList";
	}
	@GetMapping(value="/approval/teamapproval")
	public String getTeamDocList() {
		return "approval/teamApprDocList";
	}
	
	@GetMapping(value="/approval/newapproval/write")
	public String write(@RequestParam int common_idx, Model model, HttpSession session) {
		ApprovalDto dto = new ApprovalDto();
		dto.setCommonIdx(common_idx);
		// common_idx에 따라 다른 JSP 페이지 경로 설정
        String formPage = getFormPageByCommonIdx(common_idx);
        model.addAttribute("formPage", formPage);
        model.addAttribute("common_idx", common_idx);
        return "approval/writeApprDoc";
	}
	
	@GetMapping(value="/getHtml")
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
	
    @GetMapping("/info/{emp_idx}")
    public ResponseEntity<EmployeeDto> getEmployeeInfo(@PathVariable String emp_idx) {
        try {
            // emp_idx에 해당하는 사원 정보 조회
            EmployeeDto empDto = service.getEmployeeInfo(emp_idx);
            return ResponseEntity.ok(empDto);
        } catch (Exception e) {
            e.printStackTrace(); // 로그 출력
            return ResponseEntity.status(500).body(null);
        }
    }
    

    @PostMapping("/saveapprlinedata")
    public ResponseEntity<Map<String, Object>> saveApprLineData(@RequestBody ApprDocDto dto, HttpSession session) {
        try {
            session.setAttribute("approvalLines", dto.getApprovalLines());

            // 성공적으로 저장되었을 때의 응답
            Map<String, Object> response = new HashMap<>();
            response.put("message", "결재선 정보가 성공적으로 저장되었습니다.");
            logger.info("line : "+dto.getApprovalLines());            
            
            response.put("approvalLines", dto.getApprovalLines());
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            e.printStackTrace(); // 로그 출력
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    } 
    
    @PostMapping("/savereceiverdata")
    public ResponseEntity<Map<String, Object>> saveReceiverData(@RequestBody ApprDocDto dto, HttpSession session) {
        try {    	
            session.setAttribute("receivers", dto.getReceivers());

            // 성공적으로 저장되었을 때의 응답
            Map<String, Object> response = new HashMap<>();
            response.put("message", "수신자 정보가 성공적으로 저장되었습니다.");
            logger.info("receivers : "+dto.getReceivers());
            response.put("receivers", dto.getReceivers());
            
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            e.printStackTrace(); // 로그 출력
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    } 
/*    
    @PostMapping(value="/saveappr") 
	public String tempSave(Principal principal, @RequestBody ApprDocDto dto) {
		 
		String emp_idx = principal.getName(); 
		dto.setEmpIdx(emp_idx);
		service.tempSave(dto);
		return "redirect:/approval/newapproval";  
	}  
 */   
    
    
/*
	@PostMapping(value="/sendappr") 
	public ModelAndView sendAppr(Principal principal, @RequestBody ApprovalDto dto, RedirectAttributes rAttr) {
		 ModelAndView mav = new ModelAndView("redirect:/approval/newapproval"); 
		 String emp_idx = principal.getName(); 
		 service.sendAppr(dto);
		 rAttr.addFlashAttribute("msg",  "결재상신 되었습니다.");
		 return mav;
	}
	 */
	
}
