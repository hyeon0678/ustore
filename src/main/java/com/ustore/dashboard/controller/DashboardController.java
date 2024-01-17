package com.ustore.dashboard.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ustore.dashboard.dto.DashboardDto;
import com.ustore.dashboard.service.DashboardService;

@Controller
public class DashboardController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	DashboardService service;
// ----------------------------------------------------dash board 임시 -------------------------------------------------------------

	@GetMapping(value = "/accountingdashboard")
	public String dashboardList() {

		return "accounting/dashboard";
	}

	@GetMapping(value = "/accounting/dashboard/produtctlist")
	@ResponseBody
	ArrayList<DashboardDto> accountingDashboard() {

		ArrayList<DashboardDto> DashDto = service.accountingDashboard();

		logger.info("DashDto : " + DashDto);

		return DashDto;
	}

	@GetMapping(value = "/accounting/dashboard/produtctdaylist")
	@ResponseBody
	public ArrayList<DashboardDto> accountingDashbaordDay(@RequestParam("selectedDate") String selectedDate) {

		logger.info("selectedDate :" + selectedDate);

		String firstSelectedDate = selectedDate.substring(0, 10);
		String lastSelectedDate = selectedDate.substring(13, 23);

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDate startDate = LocalDate.parse(firstSelectedDate, formatter);
        LocalDate endDate = LocalDate.parse(lastSelectedDate, formatter);

     
        DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String TrfirstSelectedDate = startDate.format(outputFormatter);
        String TrlastSelectedDate = endDate.format(outputFormatter);

		logger.info("TrlastSelectedDate : " + TrlastSelectedDate);
		logger.info("TrfirstSelectedDate : " + TrfirstSelectedDate);

		return service.accountingDashboardDay(TrfirstSelectedDate, TrlastSelectedDate);
	}

	// dashboardpaymentsHistoryList
	@GetMapping(value = "/accounting/dashboardday/list")
	@ResponseBody
	public Map<String, ArrayList<DashboardDto>> dashboardDataList() {
	    logger.info("파손 컨트롤러 들어옴!!");

	    ArrayList<DashboardDto> list1 = service.dashboardStockHistoryList();
	    ArrayList<DashboardDto> list2 = service.dashboardOrderHistoryList();
	    ArrayList<DashboardDto> list3 = service.dashboardpaymentsHistoryList();

	    Map<String, ArrayList<DashboardDto>> resultMap = new HashMap<>();
	    resultMap.put("list1", list1);
	    resultMap.put("list2", list2);
	    resultMap.put("list3", list3);

	    return resultMap;
	}

	@GetMapping(value = "/accounting/dashboardline/list")
	@ResponseBody
	public ArrayList<DashboardDto> dashboardLineList() {

		return service.dashboardLineList();
	}
  @GetMapping(value = "/accounting/dashboardcategory/list")
  @ResponseBody
  public ArrayList<DashboardDto> dashboardCategory(){
	  
	  logger.info("컨트롤러 접근");
	  
	  ArrayList<DashboardDto> cateDto = service.dashboardCategory();
	  
	  logger.info("cateDto : "+cateDto);
	  
	  return cateDto;
  }	
  
  @GetMapping(value = "/accounting/dashboardcategory/update")
  @ResponseBody
  public ArrayList<DashboardDto> dashboardCategoryUpdate(@RequestParam("selectedCateDate") String selectedCateDate) {
	  
	  logger.info("카테고리 컨트롤러 들어옴 : "+selectedCateDate);

      String firstSelectedDate = selectedCateDate.substring(0, 10);
      String lastSelectedDate = selectedCateDate.substring(13, 23);


      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
      LocalDate startDate = LocalDate.parse(firstSelectedDate, formatter);
      LocalDate endDate = LocalDate.parse(lastSelectedDate, formatter);


      DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
      String TrfirstSelectedDate = startDate.format(outputFormatter);
      String TrlastSelectedDate = endDate.format(outputFormatter);
	  
		logger.info("TrfirstSelectedDate  :"+TrfirstSelectedDate);
	  logger.info("TrlastSelectedDate  :"+TrlastSelectedDate);
	
	  ArrayList<DashboardDto> cateUpDto = service.dashboardCategoryUpdate(TrfirstSelectedDate,TrlastSelectedDate);
	
	  
	  logger.info("데이터 : "+cateUpDto);
	  if (cateUpDto != null && !cateUpDto.isEmpty()) {
		    for (DashboardDto dto : cateUpDto) {
		    	 if (dto == null) {
		             logger.error("dto가 null입니다.");
		             cateUpDto = null;
		             break;
		         }
		    }
		}

	
		return cateUpDto;
  }
  
  
}
