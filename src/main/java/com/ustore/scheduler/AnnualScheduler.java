package com.ustore.scheduler;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.YearMonth;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ustore.scheduler.dao.AnnualDao;
import com.ustore.scheduler.dto.AnnualLeavesDto;
import com.ustore.scheduler.dto.EmpAnnualDto;
import com.ustore.utils.defineEnums.LeaveTypeEnum;

@Component
public class AnnualScheduler {

	@Autowired
	AnnualDao annualDao;
	
	private final String REG_BY = "scheduler";
	
	
//	@Scheduled
	public void grantInitialLeaves() {
		List<EmpAnnualDto> list = annualDao.getInitalAnnualCnt();
		int fullAttendanceDay = getFullAttendanceDay();
		
		for(EmpAnnualDto employee: list) {
			if(employee.getAnnualLeavesCtn()>=fullAttendanceDay) {
				AnnualLeavesDto dto = getAnnualLeavesDto(employee.getEmpIdx(), LeaveTypeEnum.findDefindCode("연차"),1, REG_BY);
				annualDao.insertAnnual(dto);
			}
		}
	}
	
	
	
//	@Scheduled
	public void grantAnnualLeavesForLongService() {
		List<EmpAnnualDto> list = annualDao.getLongService();
		int oneYear = 12;
		int threeYears = 13;
		
		for(EmpAnnualDto employee: list) {
			int lengthOfService = employee.getLengthOfService()/3;
			int currentAnnualLeaves = employee.getAnnualLeavesCtn()*(-1);
			if(lengthOfService <= 0) {
				//근속년수 3년 이하	
				AnnualLeavesDto payAnuualLeaves= getAnnualLeavesDto(
						employee.getEmpIdx(), LeaveTypeEnum.findDefindCode("연차"),currentAnnualLeaves, REG_BY);
				annualDao.insertAnnual(payAnuualLeaves);

				payAnuualLeaves.setLeaveIncdec(oneYear);
				annualDao.insertAnnual(payAnuualLeaves);
				
			}else if(lengthOfService == 1) {
				
				AnnualLeavesDto payAnuualLeaves= getAnnualLeavesDto(
						employee.getEmpIdx(), LeaveTypeEnum.findDefindCode("연차"),currentAnnualLeaves, REG_BY);
				annualDao.insertAnnual(payAnuualLeaves);
				
				payAnuualLeaves.setLeaveIncdec(threeYears);
				annualDao.insertAnnual(payAnuualLeaves);
				
			}else if(lengthOfService>1 && ((lengthOfService-3)/2 == 0)) {
				
				int leaves = (lengthOfService-3)/2 + threeYears;
				
				AnnualLeavesDto payAnuualLeaves= getAnnualLeavesDto(
						employee.getEmpIdx(), LeaveTypeEnum.findDefindCode("연차"),currentAnnualLeaves, REG_BY);
				annualDao.insertAnnual(payAnuualLeaves);
				
				if(leaves>=26) {
					payAnuualLeaves.setLeaveIncdec(26);
				}else {
					payAnuualLeaves.setLeaveIncdec(leaves);
				}
				
				annualDao.insertAnnual(payAnuualLeaves);
			}
			
		}
				
	}
	
	/**
	 * 저번달의 만근일수을 구하는 메서드
	 * @return : 만근일
	 */
	public int getFullAttendanceDay() {
		
		DayOfWeek excludedDayOfWeek = DayOfWeek.THURSDAY;
		LocalDate lastMonth = LocalDate.now().minusMonths(1);
		
		int lastDayOfMonth = lastOfMonth(lastMonth);
		LocalDate lastDate = LocalDate.of(lastMonth.getYear(), lastMonth.getMonth(), lastDayOfMonth);
		LocalDate startDate = LocalDate.of(lastMonth.getYear(), lastMonth.getMonthValue(), 1);
		
		long excludeDays = calculateExcludedWeekdayCount(startDate, lastDate, excludedDayOfWeek);
		long biweeklyDate = getBiweeklyDate(lastDate, startDate);
		
		return (int) (excludeDays- biweeklyDate);
	}
	
	/**
	 * 시작일부터 종료일 까지의 기간 사이에
	 * 격주로 일요일이 얼만큼 있는지 계산하는 메소드
	 * @param startDate : 시작일
	 * @param lastDate : 종료일
	 * @return
	 */
	private long getBiweeklyDate(LocalDate startDate, LocalDate lastDate) {
		int countSundays = 0;

		 while (startDate.isBefore(lastDate)) {
	            if (startDate.getDayOfWeek() == DayOfWeek.SUNDAY) {
	                countSundays++;
	            }
	            startDate = startDate.plusWeeks(2);
	        }
		return countSundays;
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
	
	/**
	 * 날짜를 주면 매개변수의 LocalDate에 해당하는 달의 마지막 날짜를 반환한다.
	 * @param currentDate
	 * @return
	 */
	private int lastOfMonth(LocalDate currentDate) {
		YearMonth currentYearMonth = YearMonth.from(currentDate);
	    LocalDate lastDayOfMonth = currentYearMonth.atEndOfMonth();
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd");
		int lastDay = Integer.parseInt(lastDayOfMonth.format(formatter));
		return lastDay;
	}

	/**
	 * 시작일, 종료일, 요일을 주면 시작일에서부터 종료일까지의 기간에서
	 * 매개변수의 요일을 뺀 일수를 반환한다
	 * @param startDate
	 * @param endDate
	 * @param excludedDayOfWeek
	 * @return
	 */
    private long calculateExcludedWeekdayCount(LocalDate startDate, LocalDate endDate, DayOfWeek excludedDayOfWeek) {
        long totalDays = ChronoUnit.DAYS.between(startDate, endDate) + 1;
        long excludedWeekdays = 0;

        for (LocalDate date = startDate; !date.isAfter(endDate); date = date.plusDays(1)) {
            if (date.getDayOfWeek() != excludedDayOfWeek) {
                excludedWeekdays++;
            }
        }

        return totalDays - excludedWeekdays;
    }
	
}
