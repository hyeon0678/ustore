package com.ustore.scheduler;

import java.sql.Date;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.ustore.scheduler.dao.AnnualSchedulerDao;
import com.ustore.scheduler.dto.AnnualLeavesDto;
import com.ustore.scheduler.dto.EmpAnnualDto;
import com.ustore.utils.DateCalculator;
import com.ustore.utils.defineEnums.LeaveTypeEnum;

@Component
public class AnnualScheduler {
	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	AnnualSchedulerDao annualDao;
	
	private final int ONEYEAR_LEAVES = 12;
	private final int THREEYEARS_LEAVES = 13;
	private final int MAX_ANNUAL_LEAVES = 26;
	private final int THREE_YEARS = 365*3;
	private final int ONE_YEAR = 365;
	
	private final String REG_BY = "scheduler";
	DateCalculator dateCalculator = new DateCalculator();
	
	// 사람 가지고 오는것  얼마나 출근했는지 + 회원번호 들고온다. 그런데 emp_idx가 null이 떨어진다.
	// 조건 한달에 한번씩만 돌려야 한다. 아니면 한달마다 끊어서 해당 보유자의 만근 여부를 판단해야 한다.
	@Scheduled(cron = "0 0 0 1 * ?") // 매달 1일에 시작된다.
	public void grantInitialLeaves() {
		logger.info("----------------------- grantInitialLeaves() -----------------------");
		
		List<EmpAnnualDto> list = annualDao.getInitalAnnualCnt();   // 반환값 emp_idx, length_of_service(한달간 근무 일수)
		int fullAttendanceDay = getFullAttendanceDay();
		logger.info("만근일 갯수 확인 : "+fullAttendanceDay);

		if(list != null) {
			for(EmpAnnualDto employee: list) {
				if(employee.getAnnualLeavesCtn()>=fullAttendanceDay) {
					AnnualLeavesDto dto = getAnnualLeavesDto(employee.getEmpIdx(), dateCalculator.dateNow(),60/*LeaveTypeEnum.findDefindCode("연차")*/,1, REG_BY);
					annualDao.insertAnnual(dto);
				}
			}			
		}

	}
	
	
	// 입사일 1년이 지난 사람들
	@Scheduled(cron = "0 0 0 * * *")
	public void grantAnnualLeavesForLongService() {
		logger.info("----------------------- grantAnnualLeavesForLongService() -----------------------");
		List<EmpAnnualDto> list = annualDao.getLongService();
		if(list != null) {
			for(EmpAnnualDto employee: list) {
				int lengthOfService = employee.getLengthOfService();  // 근무일수 찍히는곳
				int currentAnnualLeaves = employee.getAnnualLeavesCtn()*(-1);  // 보유 연차 갯수
				int threeYearIncrements = lengthOfService/THREE_YEARS;  // 근무일수를 3년으로 나눈 값
				int oneYearIncrements = lengthOfService%ONE_YEAR;   // 근무일수를 1년으로 나누고 남은 나머지 값
				
				logger.info("threeYearIncrements : "+threeYearIncrements);
				logger.info("oneYearIncrements : "+ oneYearIncrements);
				
				if(oneYearIncrements == 0) {
					if (threeYearIncrements>0) {
						annualPay(employee, currentAnnualLeaves, ONEYEAR_LEAVES+threeYearIncrements);
					} else {
						annualPay(employee, currentAnnualLeaves, ONEYEAR_LEAVES);
					}
				}
				
				/*
				if((threeYearIncrements < 0) && (oneYearIncrements  == 0)) {
					annualPay(employee, currentAnnualLeaves, ONEYEAR_LEAVES);
					
				}else if((threeYearIncrements==1) && (oneYearIncrements == 0)) {
					
					annualPay(employee, currentAnnualLeaves,THREEYEARS_LEAVES);
					
				}else if((threeYearIncrements>1) && (oneYearIncrements == 0)) {
					
					int leaves = (lengthOfService-3)/2 + THREEYEARS_LEAVES;
					if(leaves>=26) {
						annualPay(employee, currentAnnualLeaves, MAX_ANNUAL_LEAVES);
					}else {
						annualPay(employee, currentAnnualLeaves, leaves);
					}
				}
				*/
			}
		}
				
	}

	
	
	
	
	/**
	 * 연차 히스토리에 연차를 지급해주는 메소드
	 * 연차를 없앤 후 발생연차를 지급해준다.
	 * @param employee
	 * @param currentAnnualLeaves  보유 연차 갯수
	 * @param annualLeavesCtn 지급 연차갯수
	 */
	public void annualPay(EmpAnnualDto employee, int currentAnnualLeaves, int annualLeavesCtn) {
		
		AnnualLeavesDto anuualLeavesHistory= getAnnualLeavesDto(
				employee.getEmpIdx(),dateCalculator.dateNow() ,61/*LeaveTypeEnum.findDefindCode("연차")*/,currentAnnualLeaves, REG_BY);
		if(anuualLeavesHistory.getLeaveIncdec()!=0) {			
			annualDao.insertAnnual(anuualLeavesHistory);
		}
		
		anuualLeavesHistory.setLeaveIncdec(annualLeavesCtn);
		anuualLeavesHistory.setLeaveType(60);
		annualDao.insertAnnual(anuualLeavesHistory);
	}
	
	
	/**
	 * 저번달의 만근일수을 구하는 메서드
	 * @return : 만근일
	 */
	public int getFullAttendanceDay() {
		
		DayOfWeek excludedDayOfWeek = DayOfWeek.MONDAY;
		LocalDate lastMonth = LocalDate.now().minusMonths(1);
		
		int lastDayOfMonth = dateCalculator.lastOfMonth(lastMonth);// 확인 완료
		LocalDate lastDate = LocalDate.of(lastMonth.getYear(), lastMonth.getMonth(), lastDayOfMonth);
		LocalDate startDate = LocalDate.of(lastMonth.getYear(), lastMonth.getMonthValue(), 1);
		logger.info("lastDayOfMonth : "+lastDayOfMonth);
		logger.info("lastDate : "+lastDate);
		logger.info("startDate : "+startDate);  
		
		long excludeDays = dateCalculator.calculateExcludedWeekdayCount(startDate, lastDate, excludedDayOfWeek);
		logger.info("excludeDays : "+excludeDays); // 월요일의 갯수를 구해준다.
		lastDayOfMonth -=(excludeDays+2);
		// long biweeklyDate = dateCalculator.getBiweeklyDate(startDate,lastDate);
		// logger.info("biweeklyDate : "+biweeklyDate); 일요일의 갯수를 구하는건데 필요가 없다 무조건 2일씩 빠지기 때문
		
		return lastDayOfMonth;
	}
	
	/**
	 * 파라미터에 해당하는 필드 값을 갖는 dto를 반환한다.
	 * @param empIdx : 사원번호
	 * @param leaveDate : 등록날짜
	 * @param annualType : 연차의 종류
	 * @param annualCnt : 연차 개수
	 * @param regBy : 등록자
	 * @return
	 */
	private AnnualLeavesDto getAnnualLeavesDto(String empIdx, Date leaveDate, int leaveType, int leaveIncdec, String regBy) {
		AnnualLeavesDto dto = new AnnualLeavesDto();
		dto.setEmpIdx(empIdx);
		dto.setRegBy(regBy);
		dto.setLeaveType(leaveType);
		dto.setLeaveIncdec(leaveIncdec);
		dto.setLeaveDate(leaveDate);
		return dto;
	}
	
	
	
}
