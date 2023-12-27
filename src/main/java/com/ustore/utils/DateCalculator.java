package com.ustore.utils;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.YearMonth;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class DateCalculator {
	
	/**
	 * 시작일부터 종료일 까지의 기간 사이에
	 * 격주로 일요일이 얼만큼 있는지 계산하는 메소드
	 * @param startDate : 시작일
	 * @param lastDate : 종료일
	 * @return
	 */
	public long getBiweeklyDate(LocalDate startDate, LocalDate lastDate) {
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
	 * 날짜를 주면 매개변수의 LocalDate에 해당하는 달의 마지막 날짜를 반환한다.
	 * @param currentDate
	 * @return
	 */
	public int lastOfMonth(LocalDate currentDate) {
		YearMonth currentYearMonth = YearMonth.from(currentDate);
	    LocalDate lastDayOfMonth = currentYearMonth.atEndOfMonth();
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd");
		int lastDay = Integer.parseInt(lastDayOfMonth.format(formatter));
		return lastDay;
	}

	/**
	 * 시작일, 종료일, 요일을 주면 시작일에서부터 종료일까지의 기간에서
	 * 특정 기간에서 특정 요일의 개수를 뺀 일수를 반환한다.
	 * @param startDate
	 * @param endDate
	 * @param excludedDayOfWeek
	 * @return
	 */
    public long calculateExcludedWeekdayCount(LocalDate startDate, LocalDate endDate, DayOfWeek excludedDayOfWeek) {
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
