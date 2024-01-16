package com.ustore.products.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ustore.products.dao.OrderDao;
import com.ustore.products.dto.OrderDto;
import com.ustore.products.dto.StockDto;
import com.ustore.products.service.StockService;

@Controller
public class StockController {

	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	StockService service;
	@Autowired 
	OrderDao dao;


	@PostMapping(value = "/stock/stockmanagement/insert")
	public String Stock_managementInsert(Model model, @RequestParam Map<String, String> params, HttpSession session) {
		logger.info("parmas : " + params);
		session.setAttribute("data", params);

		Object ProNum = service.stock_insert(params);
		logger.info("상품 번호 최종 : " + ProNum);
		session.setAttribute("proNum", ProNum);
		return "redirect:/stock/stockmanagement/insert2";
	}

	@RequestMapping(value = "/stock/stockmanagement/insert2", method = { RequestMethod.GET, RequestMethod.POST })
	public String Stock_managementInsert2(Model model, HttpSession session) {
		Map<String, String> data = (Map<String, String>) session.getAttribute("data");
		Object proNumObject = session.getAttribute("proNum");
		String proNums = proNumObject != null ? proNumObject.toString() : null;

		logger.info("data : " + data);
		logger.info("proNums: " + proNums);

		String proNums1 = proNums.substring(3);
		String proNumsHead = proNums.substring(0, 3);

		int proNums2 = Integer.parseInt(proNums1) + 1;
		String proNums3 = String.format("%04d", proNums2);
		String proNum = proNumsHead + proNums3;

		logger.info("상품번호+1 :" + proNum);

		service.stock_insert2(proNum, data);

		return "redirect:/stock/stockmanagement/list";
	}

	@RequestMapping(value = "/stock/stockmanagement/list")
	public String stock_management(Model model) {

		ArrayList<StockDto> list = service.list();
		model.addAttribute("list", list);
		logger.info("list : " + list);

		return "products/stock_management";
	}
	@PostMapping("/stock/stockmanagement/delete")
	public ResponseEntity<String> stockManagementDelete(@RequestParam("productId")String productId) {
		

		ArrayList<StockDto> proList = service.infoListTrue(productId);
		if(proList == null || proList.isEmpty()) {
			
			logger.info("값이 없습니다.");
			service.stockManagementDelete(productId);
			return ResponseEntity.ok("물품이 삭제 되었습니다.");
			
		}else {
			
			logger.info("proList 값이 있을경우 : "+proList);
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("해당 물품은 아직 입고처리중인 상품입니다.");
		}

		
	}
// ---------------------------------------------------------------------- 제품 상세보기 --------------------------

	@RequestMapping(value = "/stock/stockdetail/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String showStockDetailListPage(@RequestParam("productId") String productId,Model model) {
	
		logger.info("상품 id : "+productId);
		ArrayList<OrderDto> incomingList = service.addIncomingList(productId);
		
		model.addAttribute("incomingList",incomingList);
		
		
		
		return "products/stock_detail";
	}

	@RequestMapping(value = "/stock/stockdetail/data", method = RequestMethod.GET)
	@ResponseBody
	public ArrayList<StockDto> getStockDetailData(@RequestParam("productId") String productId) {
		logger.info("productId : " + productId);
		ArrayList<StockDto> detailList = service.stockDetailList(productId);
		logger.info("데이터 불러왔는지? : " + detailList);

		return detailList;
	}

	@PostMapping("/stock/stockdetailpu/update")
	@ResponseBody
	public String stockDetailpuUpdate(@RequestParam("purchasePrice") String purchasePrice,
			@RequestParam("empIdx") String empIdx,@RequestParam("productId") String productId) {
		
		logger.info("단가 :" +purchasePrice);
		logger.info("등록자 :" +empIdx);
		logger.info("상품 번호 :"+productId);
	
	
			service.stockDetailpuUpdate(purchasePrice,empIdx,productId);
	
	

		return "수정 완료";
	}
	@PostMapping("/stock/stockdetailun/update")
	@ResponseBody
	public String stockDetailunUpdate(@RequestParam("unitQuantity") String unitQuantity,
			@RequestParam("empIdx") String empIdx,@RequestParam("productId") String productId) {
		
		logger.info("단위 :" +unitQuantity);
		logger.info("등록자 :" +empIdx);
		logger.info("상품 번호 :"+productId);
	
	
			service.stockDetailunUpdate(unitQuantity,empIdx,productId);
	
	

		return "수정 완료";
	}
	
	//-------------------------------폐기/파손----------------------------------------
	
	@PostMapping("/stock/stockdetailhistory/insert")
	@ResponseBody
	public String stockHistoryInsert(@RequestParam("operationType")String operationType,
			@RequestParam("quantity")String quantity,@RequestParam("reason")String reason,
			@RequestParam("productId")String productId,@RequestParam("empIdx") String empIdx) {
		
		
		String extractedQuantity = quantity.replaceAll("[^0-9]", "");
		
	
		
		logger.info("분류 코드 : " +operationType );
		logger.info("수량 : " +extractedQuantity );
		logger.info("사유 : " +reason );
		logger.info("상품 번호 : " +productId );
		logger.info("등록자 : " +empIdx );
		
		service.stockHistoryInsert(operationType,extractedQuantity,reason,productId,empIdx);
		int minQuantity = service.minQuantity(productId);
		
		if(minQuantity != 0) {
			int finalQuantity = Integer.parseInt(extractedQuantity);
			
			int finalminQuantity = minQuantity-finalQuantity;

			service.finalStock(finalminQuantity,productId);
			
		}
		
		
		
		
		
		return "폐기/파손 등록 처리가 완료 되었습니다.";
	}
	
	@GetMapping(value = "/stock/stockdetailhistory/list")
	@ResponseBody
	public ArrayList<StockDto> stockHistoryList(@RequestParam("productId") String productId) {
		logger.info("파손 리스트 상품 아이디 : "+productId);
		
		
		ArrayList<StockDto> HistoryList = service.stockHistoryList(productId);
		
		
		return HistoryList;
	}
	// ---------------------------------------입고 리스트---------------------------------

	
	
	@GetMapping(value = "/stock/incoming/list")
	public String incomingList(Model model){
		
		ArrayList<OrderDto>incomList = service.incomingList();
		
		
		model.addAttribute("incomList",incomList);

		return "products/incoming";
	}
	
	@GetMapping(value = "/stock/incomingmodal/list")
	@ResponseBody
	public ArrayList<OrderDto> incomingModalList(@RequestParam("orderIdx") int orderIdx){
		
		logger.info("발주 번호 : "+orderIdx);
		ArrayList<OrderDto>incomModalList = service.incomModalList(orderIdx);
		
		
		
		
		return incomModalList;
	}
	
	@PostMapping(value = "/stock/incomingmodal/update")
	@ResponseBody
	public boolean incomingModalUpdate(@RequestParam("productId") String productId,
			@RequestParam("totalQuantity") int totalQuantity,@RequestParam("orderIdx") int orderIdx) {
		
		logger.info("productId : "+productId);
		logger.info("totalQuantity : " +totalQuantity);
		logger.info("orderIdx : "+orderIdx);
		
		int driverIdx = service.drvierSelect(orderIdx);
		String dateIdx = service.dateIdx(orderIdx);
		service.incomingModalUpdate(productId,orderIdx);
		service.addProductQuantity(productId,totalQuantity);
		boolean allOff = service.allOffSelect(orderIdx);
		
	
		logger.info("기사 번호 : "+driverIdx);
		logger.info("값이 담긴여부 : "+allOff);
		logger.info("입고 날짜 : "+dateIdx);
		if(allOff) {
			
			service.driverDelete(driverIdx,dateIdx);
		}
		
		return allOff;
	}
	
	@PostMapping(value = "/stock/incoming/insert")
	@ResponseBody
	public String incomingInsert(@RequestParam("orderIdx") int orderIdx) {
		
		logger.info("컨트롤러 들어옴");
		logger.info("orderIdx 최종? =  "+ orderIdx);
		
		
		return "처리 완료";
	}
	
	@GetMapping("/stock/incomingcalendar/list")
	@ResponseBody
	public ArrayList<OrderDto> calendarList(@RequestParam("selectedDate")String selectedDate){
		
		logger.info("selectedDate : "+selectedDate);
		
		String firstDateString = selectedDate.substring(0,10);
		String lastDateString = selectedDate.substring(13,23);
		
		
	
		
		
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		
		LocalDate firstDateStringLatter = LocalDate.parse(firstDateString, formatter);
		
		DateTimeFormatter firstDateStringLast = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		String  firstDate = firstDateStringLatter.format(firstDateStringLast);
		
		
		//----------
		
		
        DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		
		LocalDate lastDateStringLatter = LocalDate.parse(lastDateString, formatter);
		
		DateTimeFormatter lastDateStringLast = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		String  lastDate = lastDateStringLatter.format(lastDateStringLast);
		
		
		logger.info("fistDate : "+firstDate);
		logger.info("lastDate : "+lastDate);
		
		
		ArrayList<OrderDto> CaList = service.calendarList(firstDate,lastDate);
		
		return CaList;
	}

// ----------------------------------------------------dash board 임시 -------------------------------------------------------------
	
	
	
}
