package com.ustore.approval.controller;

import java.io.IOException;
import java.io.InputStreamReader;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
	
	@GetMapping(value="/approval/teamapproval")
	public String getTeamDocList() {
		return "approval/teamApprDocList";
	}
	// 임시저장함(리스트)
	@GetMapping(value="/approval/tempapproval")
	public ModelAndView getTempApprList(Principal principal) {
		
		String emp_idx = principal.getName();
		ArrayList<ApprovalDto> templist = service.getTempList(emp_idx);
		ModelAndView mav = new ModelAndView("approval/tempSaveApprDocList");
		mav.addObject("templist", templist);
		
		return mav;
	}
	
	// 임시저장 detail보기
	@Transactional(isolation = Isolation.DEFAULT)
	@GetMapping(value="/approval/tempapproval/detail")
	public ModelAndView tempDetail(@RequestParam int apprIdx, @RequestParam int apprTypeIdx) throws JsonProcessingException {
		ModelAndView mav = new ModelAndView("approval/tempSaveApprDocDetail");
		logger.info("apprIdx : "+apprIdx);
		logger.info("apprTypeIdx : "+apprTypeIdx);
		
		int common_idx = apprTypeIdx;
		logger.info("common_idx : "+common_idx);
		String formPage = getFormPageByCommonIdx(common_idx);
		mav.addObject("common_idx", common_idx);
		mav.addObject("formPage", formPage);
		
		ApprovalDto content = service.getContent(apprIdx, common_idx);
		List<Map<String, Object>> apprline = new ArrayList<Map<String,Object>>();
		List<Map<String, Object>> receiver = new ArrayList<Map<String, Object>>();
		apprline.addAll(service.getApprLine(apprIdx));
		receiver.addAll(service.getRecv(apprIdx));
		
		ObjectMapper objectMapper = new ObjectMapper();
		String apprlineJson = objectMapper.writeValueAsString(apprline);
		String receiverJson = objectMapper.writeValueAsString(receiver);
		
		mav.addObject("apprIdx", apprIdx);
		mav.addObject("content", content);
		mav.addObject("apprline", apprlineJson);
		mav.addObject("receiver", receiverJson);
		
		return mav;
	}	
	
	// 결재 작성 페이지(선택한 양식에 따라 다른 양식 html파일 로드)
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
	
	@GetMapping(value="/gethtml")
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
            EmployeeDto empDto = service.getEmployeeInfo(emp_idx);
            return ResponseEntity.ok(empDto);
        } catch (Exception e) {
            e.printStackTrace(); // 로그 출력
            return ResponseEntity.status(500).body(null);
        }
    }
    

    @PostMapping("/saveapprlinedata")
    public ResponseEntity<Map<String, Object>> saveApprLineData(@RequestBody ApprovalDto dto, HttpSession session) {
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
    public ResponseEntity<Map<String, Object>> saveReceiverData(@RequestBody ApprovalDto dto, HttpSession session) {
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
    
    
    @GetMapping(value="/getorderlist")
    public String getOrderList(@RequestBody String orderDate) {
    	service.getOrderList(orderDate);
    	
    	return "";
    }
    
    
    
    @PostMapping(value="/tempsaveappr") 
	public String tempSave(Principal principal, @RequestBody ApprovalDto dto, RedirectAttributes rAttr) {
		 
		String emp_idx = principal.getName(); 
		dto.setEmpIdx(emp_idx);
		logger.info("해당문서 기안번호 : "+dto.getApprIdx());
		boolean recordExists = service.chkRecordExists(dto.getApprIdx());
		
		if(!recordExists) {
			service.tempSaveAppr(dto);		
		}else {
			service.updateTempDoc(dto);
		}
		rAttr.addFlashAttribute("msg",  "저장되었습니다.");
		return "redirect:/approval/newapproval";  
	}      

	@PostMapping(value="/sendappr") 
	public String sendAppr(Principal principal, @RequestBody ApprovalDto dto, RedirectAttributes rAttr) {
		 
		 String emp_idx = principal.getName();
		 dto.setEmpIdx(emp_idx);
		 service.sendAppr(dto);
		 rAttr.addFlashAttribute("msg",  "결재상신 되었습니다.");
		 return "redirect:/approval/newapproval";
	}	
	 
	@GetMapping(value="/approval/tempapproval/modify")
	public String reSaveTempDoc(Principal principal, @RequestBody ApprovalDto dto, RedirectAttributes rAttr) {
		String emp_idx = principal.getName();
		 dto.setEmpIdx(emp_idx);
		 service.updateTempDoc(dto);
		 rAttr.addFlashAttribute("msg",  "결재상신 되었습니다.");
		 return "redirect:/approval/newapproval";
	}
	
}
