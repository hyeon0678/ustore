package com.ustore.approval.controller;

import java.io.IOException;
import java.io.InputStreamReader;
import java.security.Principal;
import java.sql.Date;
import java.text.SimpleDateFormat;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ustore.approval.dto.ApprovalDto;
import com.ustore.approval.service.ApprovalService;
import com.ustore.employee.dao.GroupManageDao;
import com.ustore.employee.dto.EmployeeDto;
import com.ustore.products.dto.OrderDto;
import com.ustore.utils.DateCalculator;


@Controller
public class ApprovalController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalService service;
	@Autowired GroupManageDao gmdao;
	private DateCalculator dateCalc = new DateCalculator();
	
	// 새결재진행 (문서양식 선택 페이지)
	@GetMapping(value="/approval/newapproval")
	public String newApproval() {
		return "approval/selectDoc";
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
	
	// html파일 로드 시 읽는 코드
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
	
	
	// common_idx에 따라 다른 양식 폼(html파일)을 resources/static에서 가져오게 하기
    private String getFormPageByCommonIdx(int common_idx) {
        String formPage = null;
        switch (common_idx) {
            case 30: // 업무기안문
                formPage = "static/business_draft_test.html";
                break;
            case 31: // 대금지급결의서
                formPage = "static/payment_resolution_test.html";
                break;
            case 32: // 휴가신청서
                formPage = "static/reqVac_test.html";
                break;
        }
        return formPage;
    }	
	
    // jstree 노드에서 선택한 직원의 emp_idx를 추출해서 해당 직원의 정보 가져오기
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
    
    // 결재선 저장(새 결재문서 작성시 결재정보 설정 모달창에서 결재선 설정 후 확인버튼 누르면 해당 정보가 세션에만 일단 저장)
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
    
    // 수신자 저장(새 결재문서 작성시 결재정보 설정 모달창에서 수신자 설정 후 확인버튼 누르면 해당 정보가 세션에만 일단 저장)
    @PostMapping("/savereceiverdata")
    public ResponseEntity<Map<String, Object>> saveReceiverData(@RequestBody ApprovalDto dto, HttpSession session) {
        try {    	
            session.setAttribute("receivers", dto.getReceivers());

            Map<String, Object> response = new HashMap<>();
            response.put("message", "수신자 정보가 성공적으로 저장되었습니다.");
            logger.info("receivers : "+dto.getReceivers());
            response.put("receivers", dto.getReceivers());
            
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            e.printStackTrace(); 
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    } 
    
    // 대금지급결의서 발주번호 검색(modal) -> 특정 일자의 발주번호 리스트 가져오기
    @GetMapping(value="/getorderlist")
    public ResponseEntity<List<OrderDto>> getOrderList(@RequestParam String orderDate) {
    	List<OrderDto> orderlist = service.getOrderList(orderDate);    	
    	return new ResponseEntity<>(orderlist, HttpStatus.OK);
    }
    
    
    // 임시 저장하기(새결재문서 / 임시저장함)
    @PostMapping(value="/tempsaveappr") 
	public ResponseEntity<String> tempSave(Principal principal, @RequestBody ApprovalDto dto, RedirectAttributes rAttr) {
		 
		String emp_idx = principal.getName(); 
		dto.setEmpIdx(emp_idx);
		logger.info("문서번호 : "+dto.getApprIdx());	
		
		boolean recordExists = service.chkRecordExists(dto.getApprIdx());
		logger.info("번호 중복여부 : "+recordExists);
		if(!recordExists) {
			service.tempSaveAppr(dto);		
		}else {
			service.updateTempDoc(dto);
		}
		return ResponseEntity.ok("문서가 저장되었습니다.");  
	}      

    // 결재문서 상신하기(새결재문서)
	@PostMapping(value="/sendappr") 
	public ResponseEntity<String> sendAppr(Principal principal, @RequestBody ApprovalDto dto, RedirectAttributes rAttr) {
		 
		 String emp_idx = principal.getName();
		 dto.setEmpIdx(emp_idx);
		 service.sendAppr(dto);
		 return ResponseEntity.ok("문서가 결재상신 되었습니다.");
	}
	
	// 내결재문서(리스트)
	@GetMapping(value="/approval/myapproval")
	public ModelAndView getMyApprList(Principal principal) {
		String emp_idx = principal.getName();
		ArrayList<ApprovalDto> myapprlist = service.getMyApprList(emp_idx);
		ModelAndView mav = new ModelAndView("approval/myApprDocList");
		mav.addObject("myapprlist", myapprlist);
		return mav;
	}
	
	// 내결재문서 detail보기
	@Transactional(isolation = Isolation.DEFAULT)
	@GetMapping(value="/approval/myapproval/detail")
	public ModelAndView myApprDetail(@RequestParam Integer apprIdx, @RequestParam int apprTypeIdx) throws JsonProcessingException {
		ModelAndView mav = new ModelAndView("approval/myApprDocDetail");
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
	
	
	// 내결재문서 중 결재 진행중인 문서 회수하기
	@PostMapping(value="/retrieveappr")
	public ResponseEntity<String> retrieveAppr(@RequestParam Integer apprIdx) {
		try {
			int row = service.retrieveAppr(apprIdx);
			if(row>0) {
				return new ResponseEntity<>("결재회수가 성공적으로 처리되었습니다.", HttpStatus.OK);				
			}else {
				return new ResponseEntity<>("결재회수가 실패하였습니다.", HttpStatus.NOT_FOUND);
			}
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("결재회수 중 오류가 발생했습니다.", HttpStatus.INTERNAL_SERVER_ERROR);
        }		
	}
	
	
	// 결재요청함 (리스트)
	@GetMapping(value="/approval/approvalreq")
	public ModelAndView getApprReqList(Principal principal) {
		String emp_idx = principal.getName();
		
		ArrayList<ApprovalDto> reqapprlist = service.getReqApprList(emp_idx);
		ModelAndView mav = new ModelAndView("approval/reqApprDocList");
		mav.addObject("reqapprlist", reqapprlist);
		return mav;
	}

	// 결재요청 온 문서 detail 보기
	@Transactional(isolation = Isolation.DEFAULT)
	@GetMapping(value="/approval/approvalreq/detail")
    public ModelAndView signDocRead(Principal principal, @RequestParam Integer apprIdx, @RequestParam int apprTypeIdx) throws JsonProcessingException {
		
		ModelAndView mav = new ModelAndView("approval/reqApprDocDetail");
		String emp_idx = principal.getName();
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

	
	// 결재하기
	@Transactional(isolation = Isolation.DEFAULT)
	@PostMapping(value="/signapprdoc")
    public ModelAndView signApprDoc(Principal principal, @RequestBody ApprovalDto dto, RedirectAttributes rAttr) {

		ModelAndView mav = new ModelAndView("redirect:/approval/approvalreq");
		
		// 결재자의 결재상태 update(appr_confirm 0 : 미결재 -> 1 : 결재, 결재일자 update)
		service.updateAppr(dto);
        
		// 남은 결재자가 있는지 체크
		int cnt = service.chkRemainApprover(dto);
		logger.info("남은 사람 : "+cnt);
		if(cnt==0) {
			logger.info("dto : "+dto);
			// 남은 결재자가 없다면, apprStatus를 dto에 setApprStatus(41)하고, 해당 dto로 db에 apprStatus를 update
			dto.setApprStatus(41);
			
			// 결재완료되면 최종 결재일자 기준, 문서번호 생성하여 dto에 set하여 넣기
			List<Map<String, String>> approvalLines = dto.getApprovalLines();
			String drafterEmpIdx="";
			if (approvalLines != null && !approvalLines.isEmpty()) {
				Map<String, String> drafterInfo = approvalLines.get(0);
			    drafterEmpIdx = drafterInfo.get("empIdx");
			}						
			logger.info("기안자 empIdx : "+drafterEmpIdx);
			EmployeeDto empDto = service.getEmployeeInfo(drafterEmpIdx);
			String drafterDeptName = empDto.getDeptName();
			String iniDeptName = drafterDeptName.substring(0, 2);
			logger.info("기안자 부서명 : "+iniDeptName);
			
			String fnApprEmp_idx = principal.getName();
			logger.info("최종 결재자 : "+fnApprEmp_idx);	
			Integer apprIdx = dto.getApprIdx();
			Date finalApprDate = service.getFnApprDate(fnApprEmp_idx, apprIdx);
			logger.info("최종 결재일자 : "+finalApprDate);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
			String curYear = sdf.format(new java.util.Date());
			String year = sdf.format(finalApprDate);
			
			int maxDocId = service.getMaxDocId(year, iniDeptName);
			logger.info("doc_id 가장 큰 값 : "+maxDocId);
			String docNum = String.format("%04d", maxDocId+1);
			
			if(!curYear.equals(year)) {
				docNum = "0001";			
			}
			
			String docId = year+"-"+iniDeptName+"-"+docNum;
			dto.setDocId(docId);
			service.updateApprStatus(dto);
						
			
			mav.addObject("docId", docId);  
			
			// 결재가 완료되면 추가해야 할 것들
			// 3. 대금지급결의서라면 해당 금액 -(지출) 처리
			// 4. 휴가신청서라면 휴가 일자 차감처리
			// 5. 수신자가 있는 경우, 해당 수신자의 팀 문서함에도 들어가게? 
			
			// 더 해야할 것
			// 파일 첨부, 다운로드
			// 반려시 의견 결재정보에 보이게 하기
			// 리스트 페이징 처리
			
			
			
		}else {
			// 그게 아니라면 결재문서의 단계 상태 update
			service.updateApprDocStep(dto);
		}		
		
        return mav;
    }
	
	// 반려하기
	@PostMapping(value="/rejectapprdoc")
    public ModelAndView rejectApprDoc(@RequestParam Integer apprIdx, @RequestParam String comment, @RequestParam int common_idx) {

		ModelAndView mav = new ModelAndView("redirect:/approval/approvalreq");
		service.rejectApprDoc(apprIdx, comment, common_idx);
		
        return mav;
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
	public ModelAndView tempDetail(@RequestParam Integer apprIdx, @RequestParam int apprTypeIdx) throws JsonProcessingException {
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
	
	// 임시저장문서 삭제
	@PostMapping(value="/apprdocdel")
	public ModelAndView apprDocDel(@RequestParam Integer apprIdx, RedirectAttributes rAttr) {
		ModelAndView mav = new ModelAndView("redirect:/approval/tempapproval");
		service.apprDocDel(apprIdx);
		rAttr.addFlashAttribute("msg", "해당 문서가 삭제되었습니다.");
		return mav;
	}
		
	
	// 부서문서함(리스트, 결재완료문서)
	@GetMapping(value="/approval/teamapproval")
	public ModelAndView getTeamDocList(Principal principal) {
		String emp_idx = principal.getName();
		ArrayList<ApprovalDto> teamapprlist = service.getTeamApprList(emp_idx);
		ModelAndView mav = new ModelAndView("approval/teamApprDocList");
		mav.addObject("teamapprlist", teamapprlist);
		return mav;
	}
	
		
	// 부서문서함 detail보기
	@Transactional(isolation = Isolation.DEFAULT)
	@GetMapping(value="/approval/teamapproval/detail")
	public ModelAndView teamDocDetail(@RequestParam Integer apprIdx, @RequestParam int apprTypeIdx) throws JsonProcessingException {
		ModelAndView mav = new ModelAndView("approval/teamApprDocDetail");
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
	
	
}
