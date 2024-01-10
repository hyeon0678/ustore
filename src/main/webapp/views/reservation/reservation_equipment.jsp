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
						<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">물류 장비 예약</h1>
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
										<h2 class="card-title fw-bold">자원 예약</h2>
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
									<<div class="modal-dialog modal-dialog-centered mw-650px">
										<div class="modal-content">
											<div class="modal-header">
												<h3 class="modal-title">예약</h3>

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
																	<th>자원 종류</th>
																	<th class="resourceType">물류 장비</th>
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
												<button type="button" class="btn btn-light">취소</button>
											</div>
										</div>
									</div>
								</div>
								
								
								
								
								
								<div class="modal fade" tabindex="-1" id="kt_modal_0_1">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Modal header-->
											<div class="modal-header border-0 justify-content-end">
												
												
												<!--end::Edit-->
												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-color-gray-500 btn-active-icon-primary" data-bs-toggle="tooltip" title="Hide Event" data-bs-dismiss="modal">
													<i class="ki-duotone ki-cross fs-2x">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</div>
												<!--end::Close-->
											</div>
											<!--end::Modal header-->
											<!--begin::Modal body-->
											<div class="modal-body pt-0 pb-20 px-lg-17">
												<!--begin::Row-->
												<div class="d-flex">
													<!--begin::Icon-->
													<i class="ki-duotone ki-calendar-8 fs-1 text-muted me-5">
														<span class="path1"></span>
														<span class="path2"></span>
														<span class="path3"></span>
														<span class="path4"></span>
														<span class="path5"></span>
														<span class="path6"></span>
													</i>
													<div class="mb-9">
														<h3>예약 정보</h3>
														<div class="d-flex align-items-center">
															<p class="resourceType">자원명</p> 
															
														</div>
													</div>
												</div>
												<div class="d-flex align-items-center mb-2">
													<span class="bullet bullet-dot h-10px w-10px bg-success ms-2 me-7"></span>
													
													<div class="fs-6">
														<span class="fw-bold">Starts</span>
														<div>
															<input type="text" name="" value="" readonly="readonly" style="border: 0px"/>
														</div>
													</div>
													<!--end::Event start date/time-->
												</div>
												<!--end::Row-->
												<!--begin::Row-->
												<div class="d-flex align-items-center">
													<!--begin::Bullet-->
													<span class="bullet bullet-dot h-10px w-10px bg-danger ms-2 me-7"></span>
													<!--end::Bullet-->
													<!--begin::Event end date/time-->
													<div class="fs-6">
														<span class="fw-bold">Ends</span>
														<div>
															<input type="text" name="" value="" readonly="readonly" style="border: 0px"/>
														</div>
													</div>
												</div>
												<div>
													이름 <div class="fs-6"><input type="text" name="" value="" readonly="readonly" style="border: 0px"/></div>
												</div>
												<div>
													부서 <div class="fs-6"><input type="text" name="" value="" readonly="readonly" style="border: 0px"/></div>
												</div>
												<div>
													예약 내용 <div class="fs-6"><input type="text" name="" value="" readonly="readonly" style="border: 0px"/></div>
												</div>
												<div>
													내선 번호 <div class="fs-6"><input type="text" name="" value="" readonly="readonly" style="border: 0px"/></div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary submit_btn">삭제</button>
												<button type="button" class="btn btn-light">취소</button>
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
																	<th id="resourceType">물류 장비</th>
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
																	<th>물류 장비</th>
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

	
		var resourceType = '';
		
		var date = new Date(),
	    day = date.getDate(),
	    date1 = new Date(),
	    date2 = new Date(),
	    date3 = new Date();
	date1.setDate(day);
	date2.setDate(day + 1);
	date3.setDate(day + 2);
	date1 = date1.format('Y-m-d');
	date2 = date2.format('Y-m-d');
	date3 = date3.format('Y-m-d');

	// 예약 예제 데이터 배열
	var reservations = [
	    { date: date3, start: '11:00', end: '13:00', row: 0 },
	    { date: date1, start: '8:00', end: '16:00', row: 1 },
	    { date: date1, start: '7:00', end: '9:00', row: 3 },
	    { date: date1, start: '12:00', end: '20:00', row: 5 },
	    { date: date2, start: '12:00', end: '18:00', row: 5 },
	    { date: date3, start: '8:00', end: '18:00', row: 4 }
	];

	// 예제 항목 배열
	var printers = ['jQuery', 'Script', 'Net', 'AngularJS', 'ReactJS', 'VueJS'];
	$("#scheduler").scheduler({ items: printers, reservations: reservations, timeslotHeight: 70, timeslotWidth: 100 });

		
	drawresource();
		
		function drawresource(){
			$.ajax({
		        type: 'get',
		        url: 'reservation/drawResource.ajax',
		        dataType: 'json',
		        data: {
    	            'day': $('.date').text()
    	        },
		        success: function (data) {
					console.log(data);
					resourceType=data.item[0].resourceType+'_';
					resource(data.item);
		        },
		        error: function (e) {
		            console.log(e);
		        }
		    });
		}
		
		
		
		function resource(item){
			$('#scheduler').empty();
			var date = new Date(),
		    day = date.getDate(),
		    date1 = new Date();
		date1.setDate(day);
		date1 = date1.format('Y-m-d');
		// 예약 예제 데이터 배열
		var reservations = [
		    { date: date1, start: '11:00', end: '13:00', row: 0 },
		    { date: date1, start: '8:00', end: '16:00', row: 1 },
		    { date: date1, start: '7:00', end: '9:00', row: 3 },
		    { date: date1, start: '8:00', end: '18:00', row: 4 }
		];

		// 예제 항목 배열
		var printers = [];
		
		
		item.forEach(function(item,idx){
			if (!printers[idx]) {
			    printers[idx] = ''; // 인덱스에 대한 초기값 설정
			  }
			  printers[idx] += item.resourceName;	  
			});

		console.log(printers);
		


		// 초기화
	    // 여기에 스케줄러 플러그인 초기화 코드를 넣으세요
		$('#scheduler').scheduler({ items: printers, reservations: reservations, timeslotHeight: 70, timeslotWidth: 100 });


		// 예약 삭제를 허용
		$(document).on('click', ".reservation", function () {
		    console.log(this);
		});
		
		// 각 예약 항목에 고유한 ID 추가
		for(var i = 0; i<item.length; i++){
			var itemElement = $(".cell").eq(i);
			itemElement.attr("id",item[i].resourceIdx);
			itemElement.attr('data-product-id', i);
		}

		// 각 예약 요소에 고유한 ID 추가
		for (var i = 0; i < reservations.length; i++) {
	    var reservationElement = $(".reservation").eq(i);
	    reservationElement.attr("id", "reservation-" + i);
	    
	    reservationElement.text(i);

	    // 텍스트 가운데 정렬을 위한 CSS 스타일 적용
	    reservationElement.css({
	        'text-align': 'center',
	        'line-height': reservationElement.height() + 'px'
	    });
	}
		

}
		
		
		function qq(startTop,startWidth,endWidth){
			console.log('startTop',startTop);
			console.log('startWidth',startWidth);
			console.log('endWidth',endWidth);
			
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
			$('.resourceType').text(resourceType);
			
			var currentDate = new Date();

			// 년, 월, 일을 추출
			var year = currentDate.getFullYear();
			var month = ('0' + (currentDate.getMonth() + 1)).slice(-2); // 월은 0부터 시작하므로 1을 더해줌
			var day = ('0' + currentDate.getDate()).slice(-2);

			// "yyyy-mm-dd" 형식으로 조합
			var formattedDate = year + '-' + month + '-' + day;
			
			$('#day').text($('.date').text());
			$('#time').text(startTime+'~'+endTime);
            $('#kt_modal_0').modal('show');
            
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
        				
        	        },
        	        error: function (e) {
        	            console.log(e);
        	        }
        	    });
            });
		}
		
	
	
	
	
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
				$('#kt_modal_2').modal('hide');
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	}
	
</script>
		

		</html>