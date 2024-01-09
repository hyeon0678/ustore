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
		<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->

		<!--end::Global Stylesheets Bundle-->

<script src="resource/assets/js/date.format.min.js"></script>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="resource/assets/js/jquery.scheduler.js"></script>
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
        								<div id="scheduler" style="padding-top: 50px;"></div>
									</div>
								</div>
									
									
								<div class="modal fade" tabindex="-1" id="kt_modal_0">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Form-->
											<form class="form" action="#" id="kt_modal_add_event_form">
												<!--begin::Modal header-->
												<div class="modal-header">
													<!--begin::Modal title-->
													<h3 class="modal-title">예약</h3>
													<!--end::Modal title-->
													<!--begin::Close-->
													<div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
														<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
													</div>
													<!--end::Close-->
												</div>
												<!--end::Modal header-->
												<!--begin::Modal body-->
												<div class="modal-body py-10 px-lg-17">
													<!--begin::Input group-->
													<div class="fv-row mb-9">
														<!-- 시작::라벨 -->
														<label class="fs-6 fw-semibold required mb-2">자원명</label>
														<!-- 끝::라벨 -->
														
														<!-- 시작::입력 -->
														<div class="form-check form-check-custom form-check-solid">
															<input class="form-control" type="text" value="" id="" name="resource_name" readonly="readonly" style="border: 0px"/>
														</div>

														<!-- 끝::입력 -->
													</div>
													<!--end::Input group-->
													<!--begin::Input group-->
													<div class="fv-row mb-9">
														<!--begin::Label-->
														<label class="fs-6 fw-semibold mb-2">예약 내용</label>
														<!--end::Label-->
														<!--begin::Input-->
														<input type="text" class="form-control" placeholder="" name="event_description" />
														<!--end::Input-->
													</div>
													<!--end::Input group-->
													<!--begin::Input group-->
													
													<!--end::Input group-->
													<!--begin::Input group-->
													<div class="fv-row mb-9">
														<!--begin::Label-->
														<!--end::Label-->
														<!--begin::Input-->
														

														<!--end::Input-->
													</div>
													<!--end::Input group-->
													<!--begin::Input group-->
													<div class="row row-cols-lg-2 g-10">
														<div class="col">
															<div class="fv-row mb-9">
																<!--begin::Label-->
																<label class="fs-6 fw-semibold mb-2 required">예약 일시</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input type="date" class="form-control form-control-solid" name="data"  />
																<!--end::Input-->
															</div>
														</div>
														<div class="col" >
															<div class="fv-row mb-9">
																<!--begin::Label-->
																<label class="fs-6 fw-semibold mb-2">예약 기간</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input type="time" class="form-control form-control-solid" name="starttime" placeholder="start time" />
																<input type="time" class="form-control form-control-solid" name="endtime" placeholder="end time" />
																<!--end::Input-->
															</div>
														</div>
													</div>
													<!--end::Input group-->
													<!--begin::Input group-->
													
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-primary submit_btn">예약</button>
												</div>
											</form>
											<!--end::Form-->
										</div>
									</div>
								</div>
								<!--end::Modal - New Product-->
								
								
								
								
								
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
														예약 정보
														<div class="d-flex align-items-center mb-2">
															자원명 
															<div>
																<input type="text" name="" value="" readonly="readonly" style="border: 0px"/>
															</div>
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
												<div class="d-flex align-items-center mb-9">
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
		
		

				</body>
		

		<script>
		
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

	// 초기화
	$(document).ready(function() {
    // 여기에 스케줄러 플러그인 초기화 코드를 넣으세요
	$('#scheduler').scheduler({ items: printers, reservations: reservations, timeslotHeight: 70, timeslotWidth: 100 });
    });

	// 예약 삭제를 허용
	$(document).on('click', ".reservation", function () {
	    console.log(this);
	});

	// 각 예약 요소에 고유한 ID 추가
	for (var i = 0; i < reservations.length; i++) {
	    $(".reservation").eq(i).attr("id", "reservation-" + i);
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