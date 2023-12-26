package com.ustore.scheduler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class annualScheduler {

	@Autowired
	
	
	// 입사년도가 1년이 안 되는 사람은 1개월 만근 시 연차 +1 
		// 현재 날짜 기준 입사 년도가 1년이 안 되는 사람들의 출퇴근 기록을 가져온다 -> 휴일 + 격주마다 쉬는 거 제외 
	@Scheduled
	public void grantInitialLeaves() {
		
	}
	
	// 입사 년도가 1년 이상인 사람들을 가져온다.
		// 모든 연차 소진
		// 입사년도가 1년 이상 -> 정해진 연차 지급
		
		// 근속년수 첫 3년 -> +1
		
		// 이 후 2년 마다 +1
	
	@Scheduled
	public void grantAnnualLeavesForLongService() {
		
	}
	
	
	
	
	
	
}
