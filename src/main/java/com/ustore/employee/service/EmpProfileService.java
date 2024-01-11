package com.ustore.employee.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.ustore.employee.dao.EmpProfileDao;
import com.ustore.employee.dto.EmpProrileDto;
import com.ustore.employee.dto.EmployeeDto;
import com.ustore.fileSystem.dao.FileDao;
import com.ustore.fileSystem.dto.FileDto;
import com.ustore.utils.SaveFile;
import com.ustore.utils.defineEnums.FileEnum;
import com.ustore.utils.defineEnums.FileTypeEnum;

@Service
public class EmpProfileService {

	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired EmpProfileDao dao;
	@Autowired FileDao fileDao;
	@Autowired PasswordEncoder encoder;
	SaveFile saveFile = new SaveFile();

	public EmpProrileDto homeProfileDetail(String emp_idx) {

		return dao.homeProfileDetail(emp_idx);
	}
	
	@Transactional
	public void addevent(Map<String, String> params) {
		logger.info("service_params : " + params);
		dao.addevent(params);
		dao.addalarmevent(params);
	}

	public List<Map<String, Object>> profilecalendar(String empIdx) {
		return dao.profilecalendar(empIdx);
	}

	public String attendance(Map<String, String> params) {
		String msg = "출근 데이터 입력";
		
		if(dao.attCheck(params.get("emp_idx"))==0) {
			logger.info("출근 데이터 : " + params);
			int row = dao.attendance(params);
			logger.info("출근 입력 성공");
			msg = row > 0 ? "출근 데이터 입력 성공":"출근 데이터 입력 실패";
			logger.info("얼럿 값 출력 : "+msg);
		}
		return msg;
	}
	
	public String leavework(Map<String, String> params) {
		String msg = "퇴근 데이터 입력";
		if(dao.levCheck(params.get("emp_idx"))==0) {
			logger.info("퇴근 데이터 : "+params);
			int row = dao.leavework(params);
			logger.info("퇴근 입력 성공");
			msg = row > 0 ? "퇴근 데이터 입력 성공":"퇴근 데이터 입력 실패";
			logger.info("얼럿 값 출력 : "+msg);
		}
		return msg;
	}

	public int employeDel(String sch_idx) {
		logger.info("일정 삭제 service " + sch_idx);
		int employeDel = dao.employeDel(sch_idx);
		return employeDel;
	}

	public int scheduleDel(String sch_idx) {
		return dao.scheduleDel(sch_idx);
	}

	@Transactional
	public EmployeeDto getEmpUpdateData(String name) {
		EmployeeDto empInfo= dao.selectEmpUpdateData(name);
		
		String photo = getEmpPhoto(Integer.parseInt(name));
		empInfo.setPhoto(photo);
		return empInfo;
	}
	
	public String getEmpPhoto(int connIdx) {
		HashMap<String, String> file = dao.selectEmpPhoto(connIdx,FileTypeEnum.findDefindCode("employee"));
		String photo  = "";
		logger.info("file : "+file);
		if(file != null) {
			
			photo = file.get("new_file_name")+file.get("extension");	
		}else {
			photo = "blank.png";
		}
		return photo;
	}

	public void addLeaveEvent(Map<String, String> params) {
		dao.addLeaveEvent(params);
	}

	@Transactional
	public int modifyEmpInfo(String name, MultipartFile avatar, EmployeeDto dto) throws IOException {
		dto.setEmpIdx(name);
		dto.setEmpPhone(dto.getEmpPhone().replace("-", ""));
		int row = 0;
		if(dto.getIsChangePw() != null){
			String newPw = encoder.encode(dto.getEmpPw());
			dto.setEmpPw(newPw);
			row += dao.updateEmpInfoAll(dto);
		}else {
			row += dao.updateEmpInfo(dto);			
		}
		
		HashMap<String, String> file = dao.selectEmpPhoto(Integer.parseInt(name),FileTypeEnum.findDefindCode("employee"));
		
		if(avatar.getBytes().length != 0&&file!=null) {
			logger.info("file name : {}",avatar.getOriginalFilename());
			FileDto fileDto =  saveFile.returnFileList(avatar, FileEnum.findDefindCode("employee") , name);
			saveFile.saveFile(fileDto);
			row+=fileDao.updateFile(fileDto);			
		}else if(avatar.getBytes().length != 0&&file==null){
			FileDto fileDto =  saveFile.returnFileList(avatar, FileEnum.findDefindCode("employee") , name);
			saveFile.saveFile(fileDto);
			fileDao.saveFile(fileDto);
		}
		return row;
	}

	
}
