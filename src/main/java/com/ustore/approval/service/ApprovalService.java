package com.ustore.approval.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.ustore.approval.dao.ApprovalDao;
import com.ustore.approval.dto.ApprovalDto;
import com.ustore.employee.dto.EmployeeDto;
import com.ustore.fileSystem.dto.FileDto;
import com.ustore.products.dto.OrderDto;
import com.ustore.utils.SaveFile;

@Service
public class ApprovalService {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired ApprovalDao dao;
	
	// 선택한 직원정보 가져오기(jstree에서 선택 or emp_idx활용)
	public EmployeeDto getEmployeeInfo(String emp_idx) {
		return dao.getEmployeeInfo(emp_idx);
	}

	// 새 결재문서 작성 중 임시저장하기(내용, 결재선, 수신자 함께 저장)
	@Transactional(isolation = Isolation.DEFAULT)
	public void tempSaveAppr(ApprovalDto dto) {
				
		dao.tempSaveContent(dto);
		logger.info("appr_idx : "+dto.getApprIdx());
		
		List<Map<String, String>> apprlist = dto.getApprovalLines();
		for (Map<String, String> emp : apprlist) {
			dto.setEmpIdx(emp.get("empIdx"));
			dto.setApprover(emp.get("name"));
			dto.setApprOrder(Integer.parseInt(emp.get("apprOrder")));
			dto.setApprConfirm(emp.get("apprConfirm"));
			dto.setApprIdx(dto.getApprIdx());
			dto.setApprType(emp.get("apprType"));
			dto.setPositionType(emp.get("positionType"));
			dto.setDeptName(emp.get("department"));
			// apprType이 기안인 경우, 결재여부 1로 처리
			// 해당 결재자의 apprConfirm(결재여부) :  0 미결재, 1 결재, 2 반려처리
			if("기안".equals(emp.get("apprType"))) {  
				dto.setApprConfirm("1");
			}else {
				dto.setApprConfirm("0");
			}
			dao.saveApprLine(dto);
		}
		List<Map<String, String>> recvlist = dto.getReceivers();
		for (Map<String, String> recv : recvlist) {
			dto.setEmpIdx(recv.get("empIdx"));
			dto.setReceiver(recv.get("name"));
			dto.setPositionType(recv.get("positionType"));
			dto.setDeptName(recv.get("department"));
			dao.saveApprRecv(dto);						    
		}
	}

	// 새 결재문서 결재 상신하기(내용, 결재선, 수신자 함께 저장)
	@Transactional(isolation = Isolation.DEFAULT)
	public void sendAppr(ApprovalDto dto) {
		
		dao.saveContent(dto);
		logger.info("appr_idx : "+dto.getApprIdx());		
		
		List<Map<String, String>> apprlist = dto.getApprovalLines();
		for (Map<String, String> emp : apprlist) {
			dto.setEmpIdx(emp.get("empIdx"));
			dto.setApprover(emp.get("name"));
			dto.setApprOrder(Integer.parseInt(emp.get("apprOrder")));
			dto.setApprConfirm(emp.get("apprConfirm"));
			dto.setApprIdx(dto.getApprIdx());
			dto.setApprType(emp.get("apprType"));
			dto.setPositionType(emp.get("positionType"));
			dto.setDeptName(emp.get("department"));
			// apprType이 기안인 경우, 결재여부 1로 처리
			// 해당 결재자의 apprConfirm(결재여부) :  0 미결재, 1 결재, 2 반려처리
			if("기안".equals(emp.get("apprType"))) {  
				dto.setApprConfirm("1");
			}else {
				dto.setApprConfirm("0");
			}
			dao.saveApprLine(dto);
		}
		List<Map<String, String>> recvlist = dto.getReceivers();
		for (Map<String, String> recv : recvlist) {
			dto.setEmpIdx(recv.get("empIdx"));
			dto.setReceiver(recv.get("name"));
			dto.setPositionType(recv.get("positionType"));
			dto.setDeptName(recv.get("department"));
			dao.saveApprRecv(dto);						    
		}	
		
	/*	if(files != null && files.length!=0) {
					
					SaveFile savefile = new SaveFile();
					List<FileDto> fileList = new ArrayList<FileDto>();
					fileList = savefile.returnFileList(files, 75, Integer.toString(dto.getApprIdx()));			
				} */
	}

	// 임시저장 문서 리스트 가져오기
	public ArrayList<ApprovalDto> getTempList(String emp_idx) {
		return dao.getTempList(emp_idx);
	}
		
	// 임시저장문서 다시 저장시 해당 기안번호가 문서테이블에 있는지 체크
	public boolean chkRecordExists(Integer apprIdx) {
		int count = dao.chkRecordExists(apprIdx);
		return count > 0;
	}
	
	// 임시저장 문서 재 저장하기
	@Transactional(isolation = Isolation.DEFAULT)	
	public void updateTempDoc(ApprovalDto dto) {
		dao.updateTempDoc(dto);	
		dao.delTempApprLine(dto);
		dao.delTempRecv(dto);
		
		logger.info("apprIdx: "+dto.getApprIdx());
		
		List<Map<String, String>> apprlist = dto.getApprovalLines();
		for (Map<String, String> emp : apprlist) {
			dto.setEmpIdx(emp.get("empIdx"));
			dto.setApprover(emp.get("name"));
			dto.setApprOrder(Integer.parseInt(emp.get("apprOrder")));
			dto.setApprConfirm(emp.get("apprConfirm"));
			dto.setApprIdx(dto.getApprIdx());
			dto.setApprType(emp.get("apprType")); // 기안, 결재
			dto.setPositionType(emp.get("positionType"));
			dto.setDeptName(emp.get("department"));
			// apprType이 기안인 경우 결재여부 1로 처리하고, 나머지(apprType이 결재)는 0으로 두어서, 결재하면 1로, 반려하면 2로 update
			// 해당 결재자의 apprConfirm(결재여부) :  0 미결재, 1 결재, 2 반려처리
			if("기안".equals(emp.get("apprType"))) {  
				dto.setApprConfirm("1");
			}else {
				dto.setApprConfirm("0");
			}
			dao.saveApprLine(dto);
		}
		List<Map<String, String>> recvlist = dto.getReceivers();
		for (Map<String, String> recv : recvlist) {
			dto.setEmpIdx(recv.get("empIdx"));
			dto.setReceiver(recv.get("name"));
			dto.setPositionType(recv.get("positionType"));
			dto.setDeptName(recv.get("department"));
			dao.saveApprRecv(dto);						    
		}
	}


	// 해당 기안번호에 대한 문서 내용 가져오기
	public ApprovalDto getContent(int apprIdx, int common_idx) {
		return dao.getContent(apprIdx, common_idx);
	}

	// 결재선 가져오기
	public ArrayList<Map<String, Object>> getApprLine(int apprIdx) {
		return dao.getApprLine(apprIdx);
	}
	
	// 수신자 가져오기
	public ArrayList<Map<String, Object>> getRecv(int apprIdx) {
		return dao.getRecv(apprIdx);
	}

	// 발주날짜에 따른 발주번호 리스트 가져오기
	public List<OrderDto> getOrderList(String orderDate) {
		return dao.getOrderList(orderDate);
	}
	
	// 결재요청문서 리스트 가져오기
	public ArrayList<ApprovalDto> getReqApprList(String emp_idx) {		
		return dao.getReqApprList(emp_idx);
	}

	// 내결재문서 리스트 가져오기
	public ArrayList<ApprovalDto> getMyApprList(String emp_idx) {
		return dao.getMyApprList(emp_idx);
	}

	// 로그인한 직원의 부서 결재완료 문서 불러오기
	public ArrayList<ApprovalDto> getTeamApprList(String emp_idx) {
		return dao.getTeamApprList(emp_idx);
	}
	
	// 점장이 로그인 시 전체 결재완료 문서 불러오기
	public ArrayList<ApprovalDto> getAllApprList() {
		return dao.getAllApprList();
	}
	
	// 내 결재문서 회수하기
	public int retrieveAppr(int apprIdx) {		
		return dao.retrieveAppr(apprIdx);
	}
	
	// 결재하기(결재자 정보 update)
	public void updateAppr(ApprovalDto dto) {
		dao.updateAppr(dto);
	}
	
	// 남은 결재자 확인
	public int chkRemainApprover(ApprovalDto dto) {
		return dao.chkRemainApprover(dto);
	}
	
	// 기존 결재완료 문서의 최종결재일의 연도 뽑아내기
	public Date getFnApprDate(String fnApprEmp_idx, Integer apprIdx) {
		return dao.getFnApprDate(fnApprEmp_idx, apprIdx);
	}
	
	// 결재완료시 문서 번호 생성을 위해 기존 문서의 최대값 가져오기(없으면 0으로 가지고 가서 +1해주고 0001로 생성)
	public int getMaxDocId(String iniDeptName, String fnApprYear) {
		int maxDocId = dao.getMaxDocId(iniDeptName, fnApprYear);		
		return (maxDocId == 0)? 0: maxDocId;
	}	

	
	// 결재문서 상태 바꾸기(결재완료) - 결재문서 상태(41) 변경 및 문서번호 생성 
	public void updateApprStatus(ApprovalDto dto) {
		dao.updateApprStatus(dto);
	}
	
	// 결재문서 순서 update(docStep과 결재자 리스트의 현재 결재자의 순서가 같게 처리)
	public void updateApprDocStep(ApprovalDto dto) {
		dao.updateApprDocStep(dto);
	}
	
	// 반려하기
	public void rejectApprDoc(Integer apprIdx, String comment, int common_idx) {
		dao.rejectApprDoc(apprIdx, comment, common_idx);
	}
	
	// 임시저장 문서 삭제
	public void apprDocDel(Integer apprIdx) {
		dao.apprDocDel(apprIdx);
	}

	// 휴가신청서 기안자의 기안문 정보 확인
	public ApprovalDto getEmpLeaveInfo(String drafterEmpIdx, Integer apprIdx) {
		return dao.getEmpLeaveInfo(drafterEmpIdx, apprIdx);
	}
	
	// 휴가종류가 연차일때 연차테이블에 insert시키기
	public void insertAnnualLeaveInfo(String drafterEmpIdx, Date date, int leaveType, int totalLeaveDays) {
		dao.insertAnnualLeaveInfo(drafterEmpIdx, date, leaveType, totalLeaveDays);
	}

	// 휴가종류가 연차가 아닐때 연차테이블에 insert시키기
	public void insertOtherLeaveInfo(String drafterEmpIdx, Date date, int leaveType, int totalLeaveDays) {
		dao.insertOtherLeaveInfo(drafterEmpIdx, date, leaveType, totalLeaveDays);
	}

	public int getTotalLeaveDays(String drafterEmpIdx) {
		return dao.getTotalLeaveDays(drafterEmpIdx);
	}

	

	

}
	

	

	
	

	

	

	
	

