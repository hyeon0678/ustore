package com.ustore.scheduler;

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
	
	
	@Scheduled(cron="0/10 * * * * *")
	public void grantInitialLeaves() {
		logger.info("----------------------- grantInitialLeaves() -----------------------");
		
		List<EmpAnnualDto> list = annualDao.getInitalAnnualCnt();
		int fullAttendanceDay = getFullAttendanceDay();
		if(list != null) {
			for(EmpAnnualDto employee: list) {
				if(employee.getAnnualLeavesCtn()>=fullAttendanceDay) {
					AnnualLeavesDto dto = getAnnualLeavesDto(employee.getEmpIdx(), LeaveTypeEnum.findDefindCode("연차"),1, REG_BY);
					annualDao.insertAnnual(dto);
				}
			}			
		}
		
	}
	
	
	
	@Scheduled(cron="0/10 * * * * *")
	public void grantAnnualLeavesForLongService() {
		logger.info("----------------------- grantAnnualLeavesForLongService() -----------------------");
		List<EmpAnnualDto> list = annualDao.getLongService();
		if(list != null) {
			for(EmpAnnualDto employee: list) {
				int lengthOfService = employee.getLengthOfService();
				int currentAnnualLeaves = employee.getAnnualLeavesCtn()*(-1);
				int threeYearIncrements = lengthOfService/THREE_YEARS;
				int oneYearIncrements = lengthOfService%ONE_YEAR;
				
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
				
			}
		}
				
	}
	
	
	/**
	 * 연차 히스토리에 연차를 지급해주는 메소드
	 * 연차를 없앤 후 발생연차를 지급해준다.
	 * @param employee
	 * @param currentAnnualLeaves
	 * @param annualLeavesCtn
	 */
	public void annualPay(EmpAnnualDto employee, int currentAnnualLeaves, int annualLeavesCtn) {
		
		AnnualLeavesDto anuualLeavesHistory= getAnnualLeavesDto(
				employee.getEmpIdx(), LeaveTypeEnum.findDefindCode("연차"),currentAnnualLeaves, REG_BY);
		
		logger.info(employee.getEmpIdx());
		
		annualDao.insertAnnual(anuualLeavesHistory);
		
		anuualLeavesHistory.setLeaveIncdec(annualLeavesCtn);
		annualDao.insertAnnual(anuualLeavesHistory);
	}
	
	
	/**
	 * 저번달의 만근일수을 구하는 메서드
	 * @return : 만근일
	 */
	public int getFullAttendanceDay() {
		
		DayOfWeek excludedDayOfWeek = DayOfWeek.THURSDAY;
		LocalDate lastMonth = LocalDate.now().minusMonths(1);
		
		int lastDayOfMonth = dateCalculator.lastOfMonth(lastMonth);
		LocalDate lastDate = LocalDate.of(lastMonth.getYear(), lastMonth.getMonth(), lastDayOfMonth);
		LocalDate startDate = LocalDate.of(lastMonth.getYear(), lastMonth.getMonthValue(), 1);
		
		long excludeDays = dateCalculator.calculateExcludedWeekdayCount(startDate, lastDate, excludedDayOfWeek);
		long biweeklyDate = dateCalculator.getBiweeklyDate(lastDate, startDate);
		
		return (int) (excludeDays- biweeklyDate);
	}
	
	/**
	 * 파라미터에 해당하는 필드 값을 갖는 dto를 반환한다.
	 * @param empIdx : 사원번호
	 * @param annualType : 연차의 종류
	 * @param annualCnt : 연차 개수
	 * @param regBy : 등록자
	 * @return
	 */
	private AnnualLeavesDto getAnnualLeavesDto(String empIdx, int leaveType, int leaveIncdec, String regBy) {
		AnnualLeavesDto dto = new AnnualLeavesDto();
		dto.setEmpIdx(empIdx);
		dto.setRegBy(regBy);
		dto.setLeaveType(leaveType);
		dto.setLeaveIncdec(leaveIncdec);
		return dto;
	}
	
	
	
}
