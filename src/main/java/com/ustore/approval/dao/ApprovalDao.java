package com.ustore.approval.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.approval.dto.ApprovalDto;
import com.ustore.employee.dto.EmployeeDto;
import com.ustore.products.dto.OrderDto;

@Mapper
public interface ApprovalDao {
	
	EmployeeDto getEmployeeInfo(String emp_idx);

	int tempSaveContent(ApprovalDto dto);

	void saveApprLine(ApprovalDto approvalDto);

	void saveApprRecv(ApprovalDto approvalDto);

	int saveContent(ApprovalDto dto);

	ArrayList<ApprovalDto> getTempList(String emp_idx);

	void updateTempDoc(ApprovalDto dto);

	ApprovalDto getContent(int apprIdx, int common_idx);

	ArrayList<Map<String, Object>> getApprLine(int apprIdx);

	ArrayList<Map<String, Object>> getRecv(int apprIdx);

	int chkRecordExists(Integer apprIdx);

	List<OrderDto> getOrderList(String orderDate);

	int delTempApprLine(ApprovalDto dto);

	int delTempRecv(ApprovalDto dto);

	ArrayList<ApprovalDto> getReqApprList(String emp_idx);

	ArrayList<ApprovalDto> getMyApprList(String emp_idx);

	ArrayList<ApprovalDto> getTeamApprList(String emp_idx);

	int retrieveAppr(int apprIdx);

	ArrayList<Integer> getApprOrder(String emp_idx);

	void updateAppr(ApprovalDto dto);

	int chkRemainApprover(ApprovalDto dto);

	void rejectApprDoc(Integer apprIdx, String comment, int common_idx);

	void apprDocDel(Integer apprIdx);

	void updateApprStatus(ApprovalDto dto);

	void updateApprDocStep(ApprovalDto dto);

	int getMaxDocId(String iniDeptName, String fnApprYear);

	Date getFnApprDate(String fnApprEmp_idx, Integer apprIdx);

	ArrayList<ApprovalDto> getAllApprList();

	ApprovalDto getEmpLeaveInfo(String drafterEmpIdx, Integer apprIdx);

	void insertAnnualLeaveInfo(String drafterEmpIdx, Date date, int leaveType, int totalLeaveDays);

	void insertOtherLeaveInfo(String drafterEmpIdx, Date date, int leaveType, int totalLeaveDays);

	int getTotalLeaveDays(String drafterEmpIdx);









	

	
	
	
}
