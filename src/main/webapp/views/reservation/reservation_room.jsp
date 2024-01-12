<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<!--begin::Head-->
	<head>
	<base href="../" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes</title>
    <meta charset="utf-8" />
	<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
		<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="canonical" href="https://preview.keenthemes.com/craft" />
		<link rel="stylesheet" href="resource/assets/css/jquery.scheduler.css" />
		<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />

		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->

		<!--end::Global Stylesheets Bundle-->


    <style>
        body {
            padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
        }
        #logs{
            border: solid 1px #bbb;
            padding: 16px;
            background: #eee;
        }
        #logs .table{
            margin-bottom: 0;
        }
        #logs .table td,
        #logs .table th{
            border: none;
        }
        #schedule .sc_bar_insert{
            background-color: #ff678a;
        }
        #schedule .example2{
            background-color: #3eb698;
        }
        #schedule .example3{
            color: #2c0000;
            font-weight: bold;
            background-color: #c7ae50;
        }
        #schedule .sc_bar.sc_bar_photo .head,
        #schedule .sc_bar.sc_bar_photo .text{
            padding-left: 60px;
        }
        #schedule .sc_bar.sc_bar_photo .photo{
            position: absolute;
            left: 10px;
            top: 10px;
            width: 38px;
        }
        #schedule .sc_bar.sc_bar_photo .photo img{
            max-width: 100%;
        }

    </style>
</head>

<body>
<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
		<jsp:include page="/views/common/header.jsp"></jsp:include>
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
		<div class="d-flex flex-column flex-root">
			<div class="page d-flex flex-row flex-column-fluid">
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 90px;">
						<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">${resourceType} 예약</h1>
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									
								</div>
								<div class="card-toolbar">
									<button type="button" class="btn btn-primary mx-2" data-bs-toggle="modal" data-bs-target="#kt_modal_1">자원 추가하기</button>
									<button type="button" class="btn btn-primary mx-2" data-bs-toggle="modal" data-bs-target="#kt_modal_2" id="delResourceModal">자원 삭제하기</button>
								</div>
							</div>
						</div>
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<div class="container-xxl">
								<div class="card">
									<div class="card-header">
						                <h2 class="card-title">자원 예약</h2>
						                <div>						                
										<input class="fs-6" type="date" id="dateInput"  onchange="dateChanged()">
						                </div>
						            </div>
									<div class="card-body">
									<div class="hover-scroll-x h-auto px-5">
									    <div style="width: 1200px">
        									<div id="scheduler" style="padding-bottom: 30px;"></div>
									    </div>
									</div>
									</div>
								</div>
									
									
								<div class="modal fade" tabindex="-1" id="kt_modal_0">
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<div class="modal-content">
											<div class="modal-header">
												<h3 class="modal-title">예약</h3>

												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close" onclick="closeModal()">
													<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
												</div>
												<!--end::Close-->
											</div>

											<div class="modal-body">
												<!-- 모달창 몸통 테이블 시작-->
												<div class="py-3" style="margin-top: -40px;">
													<div class="table-responsive">
														<table class="table table-row-dashed table-row-gray-300 gy-7">
															<thead>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>자원 종류</th>
																	<th class="resourceType">${resourceType}</th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
															</thead>
															<tbody>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>예약 내용</th>
																	<th style="width: 50%"><input type="text" class="form-control" placeholder="예약 내용을 입력하세요" id="text"/></th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>예약 일시</th>
																	<th id="day"></th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>예약 시간</th>
																	<th id="time"></th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!-- 모달창 몸통 테이블 끝-->
											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-primary submit_btn" id="addBookingBut">예약</button>
												<button type="button" class="btn btn-light" id="cancelBookingBut">취소</button>
											</div>
										</div>
									</div>
								</div>
								
								
								
								
								
								<div class="modal fade" tabindex="-1" id="kt_modal_0_1">
									<<div class="modal-dialog modal-dialog-centered mw-650px">
										<div class="modal-content">
											<div class="modal-header">
												<h3 class="modal-title">예약 정보</h3>

												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
													<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
												</div>
												<!--end::Close-->
											</div>

											<div class="modal-body">
												<!-- 모달창 몸통 테이블 시작-->
												<div class="py-3" style="margin-top: -40px;">
													<div class="table-responsive">
														<table class="table table-row-dashed table-row-gray-300 gy-7">
															<thead>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>예약 정보</th>
																	<th id="resourceModal"></th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
															</thead>
															<tbody>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>예약 일시</th>
																	<th id="resourceModalDay"></th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>예약 시간</th>
																	<th id="resourceModalTime"></th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>이름</th>
																	<th id="resourceModalName"></th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>부서</th>
																	<th id="resourceModalDept"></th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>내선 번호</th>
																	<th id="resourceModalInNum"></th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>예약 내용</th>
																	<th id="resourceModalText"></th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!-- 모달창 몸통 테이블 끝-->
											</div>

											<div class="modal-footer" id="bookingFooter">
												
											</div>
										</div>
									</div>
								</div>
								

								<div class="modal fade" tabindex="-1" id="kt_modal_1">
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<div class="modal-content">
											<div class="modal-header">
												<h3 class="modal-title">자원 추가</h3>
												<div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
													<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
												</div>
												<!--end::Close-->
											</div>

											<div class="modal-body">
												<!-- 모달창 몸통 테이블 시작-->
												<div class="py-5" style="margin-top: -40px;">
													<div class="table-responsive">
														<table class="table table-row-dashed table-row-gray-300 gy-7">
															<thead>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>자원 종류</th>
																	<th id="resourceType">${resourceType}</th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td style="padding-top: 30px;">자원명</td>
																	<td style="padding-top: 30px;">
																		<input type="text" class="form-control" placeholder="자원명을 입력하세요" id="resourceName"/>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!-- 모달창 몸통 테이블 끝-->
											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-primary submit_btn" id="addReservation">추가</button>
												<button type="button" class="btn btn-light">취소</button>
											</div>
										</div>
									</div>
								</div>
								
								
								
								
								
								<div class="modal fade" tabindex="-1" id="kt_modal_2">
									<<div class="modal-dialog modal-dialog-centered mw-650px">
										<div class="modal-content">
											<div class="modal-header">
												<h3 class="modal-title">자원 삭제</h3>

												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
													<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
												</div>
												<!--end::Close-->
											</div>

											<div class="modal-body">
												<!-- 모달창 몸통 테이블 시작-->
												<div class="py-5" style="margin-top: -40px;">
													<div class="table-responsive">
														<table class="table table-row-dashed table-row-gray-300 gy-7">
															<thead>
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>자원 종류</th>
																	<th>${resourceType}</th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td style="padding-top: 30px;">자원명</td>
																	<td style="padding-top: 30px;">
																	
																		<select class="form-select" aria-label="Select example" id="optionResourceName">
    																		<option value=""></option>
    																		<option value=""></option>
    																		<option value=""></option>
																		</select>
																	
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!-- 모달창 몸통 테이블 끝-->
											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-primary submit_btn" id="delResource">삭제</button>
												<button type="button" class="btn btn-light">취소</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
						

		<script>var hostUrl = "resource/assets/";</script>

		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		
		<script src="resource/assets/js/date.format.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
		<script src="resource/assets/js/jquery.scheduler.js"></script>

				</body>
		

		<script>
	    console.log('${resourceType}');
		// 오늘의 날짜를 얻기 위해 JavaScript Date 객체를 사용
	    var today = new Date();
		
	    // 년, 월, 일을 YYYY-MM-DD 형식으로 변환
	    var formattedDate = today.toISOString().split('T')[0];
		console.log(formattedDate);
	    // id가 "dateInput"인 요소를 찾아서 초기값을 설정
	    document.getElementById("dateInput").value = formattedDate;
	
	var resourceType = '';


	var dateInputValue = $('#dateInput').val();
	var updatedTime = $.fn.updateTime(dateInputValue);

	 function dateChanged() {
		 dateInputValue = $('#dateInput').val();
		 updatedTime = $.fn.updateTime(dateInputValue);
		 $.fn.updateDefaults();
		 drawresource();
	    }
	
	
	
	
	
	
	drawresource();

		function drawresource(){
			$.ajax({
		        type: 'get',
		        url: 'reservation/drawResource.ajax',
		        dataType: 'json',
		        data: {
    	            'day': dateInputValue,
    	            'resourceType': '${resourceType}'
    	        },
		        success: function (data) {
					console.log(data);
					if(data.item.length != 0){
						resourceType=data.item[0].resourceType+'_';
						resource(data.item, data.booking);	
					}
					
		        },
		        error: function (e) {
		            console.log(e);
		        }
		    });
		}
		
		
		
		function resource(item,booking){
			$('#scheduler').empty();

		

		// 예제 항목 배열
		var printers = [];	
		item.forEach(function(item,idx){
			if (!printers[idx]) {
			    printers[idx] = ''; // 인덱스에 대한 초기값 설정
			  }
			  printers[idx] += item.resourceName;	  
			});

		console.log(printers);
		

		// 예약 예제 데이터 배열
		var reservations = [];
		booking.forEach(function (booking, idx) {
			var index = 0;
			for (var i = 0; i < item.length; i++) {
			    if (item[i].resourceIdx === booking.resourceIdx) {
			        index = i;
			        break;
			    }
			}
		    if (!reservations[idx]) {
		        reservations[idx] = {};
		    }
		    reservations[idx].date = booking.bookingStartDate;
		    reservations[idx].start = booking.bookingStartTime;
		    reservations[idx].end = booking.bookingEndTime;
		    reservations[idx].row = index;
		});
		



		// 초기화
	    // 여기에 스케줄러 플러그인 초기화 코드를 넣으세요
	    $(document).ready(function(){
	    	
		$('#scheduler').scheduler({ items: printers, reservations: reservations, timeslotHeight: 70, timeslotWidth: 100 });
	
		


		
		// 각 예약 항목에 고유한 ID 추가
		for(var i = 0; i<item.length; i++){
			var itemElement = $(".cell").eq(i);
			itemElement.attr("id",item[i].resourceIdx);
			itemElement.attr('data-product-id', i);
		}

		// 각 예약 요소에 고유한 ID 추가
		for (var i = 0; i < reservations.length; i++) {
	    var reservationElement = $(".reservation").eq(i);
	    reservationElement.attr("id", booking[i].bookingIdx);
	    reservationElement.attr('data-product-id',booking[i].empIdx);
	    var maxLength = 6; // 표시하고자 하는 최대 글자 수
	    var bookingContent = booking[i].bookingContent;

	    if (bookingContent.length > maxLength) {
	        bookingContent = bookingContent.substring(0, maxLength) + '...';
	    }

	    reservationElement.text(bookingContent);

	    // 텍스트 가운데 정렬을 위한 CSS 스타일 적용
	    reservationElement.css({
	        'text-align': 'center',
	        'line-height': reservationElement.height() + 'px'
	    });
	}
});

}
		
		// 예약 삭제를 허용
		$(document).on('click', ".reservation", function () {
		    console.log($(this).attr('id'));
		    $('#kt_modal_0_1').modal('show');
		    infoBooking($(this).attr('id'),$(this).attr('data-product-id'));
		});
		var bookingId = '';
		function infoBooking(bookingIdx,empIdx){
			bookingId = bookingIdx;
			$.ajax({
		        type: 'get',
		        url: 'reservation/infoBooking.ajax',
		        dataType: 'json',
		        data: {
    	            'bookingIdx': bookingIdx
    	        },
		        success: function (data) {
					console.log(data);
					$('#resourceModal').text(data[0].resourceType+'_'+data[0].resourceName);
					$('#resourceModalDay').text(data[0].bookingStartDate+' ~ '+data[0].bookingEndDate);
					$('#resourceModalTime').text(data[0].bookingStartTime+' ~ '+data[0].bookingEndTime);
					$('#resourceModalName').text(data[0].empName);
					$('#resourceModalDept').text(data[0].deptName);
					$('#resourceModalInNum').text(data[0].empExtNo);
					$('#resourceModalText').text(data[0].bookingContent);
					var content = '';
					console.log(data[0].bookingStartDate+formattedDate);
					if(empIdx == data[0].empIdx && data[0].bookingStartDate >= formattedDate){
						content += '<button type="button" class="btn btn-light" id="okDelBookingBut">삭제</button>';
					}
					content += '<button type="button" class="btn btn-primary" id="okBookingBut">확인</button>';
					$('#bookingFooter').empty();
					$('#bookingFooter').append(content);
		        },
		        error: function (e) {
		            console.log(e);
		        }
		    });

		}
		
		$(document).on('click', '#okBookingBut', function () {
		    $('#kt_modal_0_1').modal('hide');
		});

		$(document).on('click', '#okDelBookingBut', function () {
		    $('#kt_modal_0_1').modal('hide');
		    $.ajax({
		        type: 'get',
		        url: 'reservation/infoBookingDel.ajax',
		        dataType: 'json',
		        data: {
    	            'bookingIdx': bookingId
    	        },
		        success: function (data) {
					console.log(data);
					if(data){
						drawresource();
					}else{
						alert('예약 삭제에 실패하였습니다. 다시 시도해 주세요');
					}
		        },
		        error: function (e) {
		            console.log(e);
		        }
		    });

		});	
		
		
		function qq(startTop,startWidth,finalWidth){
			if($('.date').text()>= formattedDate){
				var endWidth = Math.ceil(finalWidth / 100) * 100;

			console.log('startTop',startTop);
			console.log('startWidth',startWidth);
			
			console.log('endWidth',Math.ceil(finalWidth / 100) * 100);
			
			console.log(startTop/70);
			

			// startTop을 기반으로 'product-id'가 일치하는 요소를 선택합니다. row값을 가져오기 위한 코드
			var row = $('.cell').filter('[data-product-id="' + (startTop / 70) + '"]');

			// 선택된 요소의 'id' 속성값을 가져옵니다.
			var resourceIdx = row.attr('id');

			// 가져온 'id' 값을 출력합니다.
			console.log('id:', resourceIdx);
			
			var startTime = '';
			var endTime = '';
			if((startWidth/100).toString().length < 2){
				startTime = '0'+startWidth/100+':'+'00';
			}else{
				startTime = startWidth/100+':'+'00';
			}
			if((startWidth/100+endWidth/100).toString().length < 2){
				endTime = '0'+(startWidth/100+endWidth/100)+':'+'00';
			}else{
				endTime = (startWidth/100+endWidth/100)+':'+'00';
			}
			console.log(startTime);
			console.log(endTime);
			$('.resourceType').text(resourceType+row.text());
			

			
			$('#day').text($('.date').text());
			$('#time').text(startTime+'~'+endTime);
            $('#kt_modal_0').modal('show');
            $('#addBookingBut').off('click');
            $('#addBookingBut').on('click',function(){
            	$.ajax({
        	        type: 'get',
        	        url: 'reservation/addBooking.ajax',
        	        data: {
        	            'day': $('.date').text(),
        	            'startTime': startTime,
        	            'endTime': endTime,
        	            'text': $('#text').val(),
        	            'resourceIdx':resourceIdx
        	        },
        	        dataType: 'json',
        	        success: function (data) {
        				console.log(data);
        				if(data){
        					$('#kt_modal_0').modal('hide');
        					drawresource();		
        				}else{
        					alert('오류가 발생했습니다. 다시 시도해 주세요');
        				}
        				
        	        },
        	        error: function (e) {
        	            console.log(e);
        	        }
        	    });
            });
		}else{
			alert('날짜를 확인해 주세요.');
			drawresource();
		}
		}
		
	$('#cancelBookingBut').on('click',function(){
		drawresource();
		$('#kt_modal_0').modal('hide');
	});
	
	
	
	$('#addReservation').on('click',function(){
		var resourceName = $('#resourceName	').val();
		var resourceType = $('#resourceType').text();
		addReservation(resourceName,resourceType);
	});
	
	function addReservation(resourceName,resourceType){
		$.ajax({
	        type: 'get',
	        url: 'reservation/addResource.ajax',
	        data: {
	            'resourceName': resourceName,
	            'resourceType': resourceType
	        },
	        dataType: 'json',
	        success: function (data) {
				console.log(data);
				if(!data){
					alert('자원 추가 실패 다시 확인해주세요');
				}else{
					drawresource();
					$('#kt_modal_1').modal('hide');
				}
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	}
	
	$('#delResourceModal').on('click',function(){
		resourceInfo();
	});
	
	function resourceInfo(){
		$.ajax({
	        type: 'get',
	        url: 'reservation/resourceInfo.ajax',
	        data: {
	        	'resourceType': '${resourceType}'
	        },
	        dataType: 'json',
	        success: function (data) {
				console.log(data);
				var content='';
				data.forEach(function(item,idx){
					content += '<option value="' + item.resourceIdx + '">' + item.resourceName + '</option>';
				});
				$('#optionResourceName').empty();
				$('#optionResourceName').append(content);
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	}
	
	$('#delResource').on('click',function(){
		delResource($('#optionResourceName').val());
	})
	
	function delResource(resourceIdx){
		$.ajax({
	        type: 'get',
	        url: 'reservation/delResource.ajax',
	        data: {
	            'resourceIdx': resourceIdx
	        },
	        dataType: 'json',
	        success: function (data) {
				console.log(data);
				drawresource();
				$('#kt_modal_2').modal('hide');		
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	}
	
	function closeModal() {
		drawresource();
    }
</script>
		

		</html>