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
		<meta property="og:locale" content="en_US" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes" />
		<meta property="og:url" content="https://themes.getbootstrap.com/product/craft-bootstrap-5-admin-dashboard-theme" />
		<meta property="og:site_name" content="Craft by Keenthemes" />
		<link rel="canonical" href="https://preview.keenthemes.com/craft" />
		<link rel="shortcut icon" href="/media/logos/favicon.ico" />

    	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    	<link rel="stylesheet" type="text/css" href="resource/scheduler/dist/css/style.min.css" />
		<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />

		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />

		<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />
		
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>


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
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<div class="d-flex flex-column flex-root">
			<div class="page d-flex flex-row flex-column-fluid">
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 90px;">
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<h1 class="text-gray-900 fw-bold my-1 fs-2">자원 예약</h1>
									<ul class="breadcrumb fw-semibold fs-base my-1">
										<li class="breadcrumb-item text-muted">
											<a href="index.html" class="text-muted text-hover-primary">Home</a>
										</li>
										<li class="breadcrumb-item text-muted">자원 관리</li>
										<li class="breadcrumb-item text-gray-900">회의실 예약</li>
									</ul>
								</div>
								<div class="card-toolbar">
									<button type="button" class="btn btn-primary mx-2" data-bs-toggle="modal" data-bs-target="#kt_modal_1">자원 추가하기</button>
									<button type="button" class="btn btn-primary mx-2" data-bs-toggle="modal" data-bs-target="#kt_modal_2">자원 삭제하기</button>
								</div>
							</div>
						</div>
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<div class="container-xxl">
								<div class="card">
									<div class="card-header">
										<h2 class="card-title fw-bold">Calendar</h2>
										<div class="card-toolbar">
											<button class="btn btn-flex btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_0">Add Event</button>
										</div>
									</div>
									<div class="card-body">
        								<div id="schedule"></div>
									</div>
									
									
									
									
									<div class="modal fade" id="kt_modal_add_event" tabindex-="1" aria-hidden="true" data-bs-focus="false">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Form-->
											<form class="form" action="#" id="kt_modal_add_event_form">
												<!--begin::Modal header-->
												<div class="modal-header">
													<!--begin::Modal title-->
													<h2 class="fw-bold" data-kt-calendar="title">Add Event</h2>
													<!--end::Modal title-->
													<!--begin::Close-->
													<div class="btn btn-icon btn-sm btn-active-icon-primary" id="kt_modal_add_event_close">
														<i class="ki-duotone ki-cross fs-1">
															<span class="path1"></span>
															<span class="path2"></span>
														</i>
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
															<input class="form-control form-control-solid" type="text" value="1호 차량" id="" name="calendar_event_name" readonly="readonly"/>
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
														<input type="text" class="form-control form-control-solid" placeholder="" name="calendar_event_description" />
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
																<label class="fs-6 fw-semibold mb-2 required">일정 시작 일</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input class="form-control form-control-solid" name="calendar_event_start_date" placeholder="Pick a start date" id="kt_calendar_datepicker_start_date" />
																<!--end::Input-->
															</div>
														</div>
														<div class="col" data-kt-calendar="datepicker">
															<div class="fv-row mb-9">
																<!--begin::Label-->
																<label class="fs-6 fw-semibold mb-2">일정 시작 시간</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input class="form-control form-control-solid" name="calendar_event_start_time" placeholder="Pick a start time" id="kt_calendar_datepicker_start_time"  />
																<!--end::Input-->
															</div>
														</div>
													</div>
													<!--end::Input group-->
													<!--begin::Input group-->
													<div class="row row-cols-lg-2 g-10">
														<div class="col">
															<div class="fv-row mb-9">
																<!--begin::Label-->
																<label class="fs-6 fw-semibold mb-2 required">일정 종료 일</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input class="form-control form-control-solid" name="calendar_event_end_date" placeholder="Pick a end date" id="kt_calendar_datepicker_end_date" />
																<!--end::Input-->
															</div>
														</div>
														<div class="col" data-kt-calendar="datepicker">
															<div class="fv-row mb-9">
																<!--begin::Label-->
																<label class="fs-6 fw-semibold mb-2">일정 종료 시간</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input class="form-control form-control-solid" name="calendar_event_end_time" placeholder="Pick a end time" id="kt_calendar_datepicker_end_time" />
																<!--end::Input-->
															</div>
														</div>
													</div>
													<!--end::Input group-->
												</div>
												<!--end::Modal body-->
												<!--begin::Modal footer-->
												<div class="modal-footer flex-center">
													<!--begin::Button-->
													<button type="reset" id="kt_modal_add_event_cancel" class="btn btn-light">취소</button>
													<!--end::Button-->
													<!--begin::Button-->
													<button type="button" id="kt_modal_add_event_submit" class="btn btn-primary submit_btn">
														<span class="indicator-label">추가</span>
														<span class="indicator-progress">Please wait... 
														<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
													</button>
													<!--end::Button-->
												</div>
												<!--end::Modal footer-->
											</form>
											<!--end::Form-->
										</div>
									</div>
								</div>
								
								
								
								<div class="modal fade" id="kt_modal_view_event" tabindex="-1" data-bs-focus="false" aria-hidden="true">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Modal header-->
											<div class="modal-header border-0 justify-content-end">
												<!--begin::Edit-->
												<div class="btn btn-icon btn-sm btn-color-gray-500 btn-active-icon-primary me-2" data-bs-toggle="tooltip" data-bs-dismiss="click" title="Edit Event" id="kt_modal_view_event_edit">
													<i class="ki-duotone ki-pencil fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</div>
												<!--end::Edit-->
												<!--begin::Edit-->
												<div class="btn btn-icon btn-sm btn-color-gray-500 btn-active-icon-danger me-2" data-bs-toggle="tooltip" data-bs-dismiss="click" title="Delete Event" id="kt_modal_view_event_delete">
													<i class="ki-duotone ki-trash fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
														<span class="path3"></span>
														<span class="path4"></span>
														<span class="path5"></span>
													</i>
												</div>
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
													<!--end::Icon-->
													<div class="mb-9">
														예약 정보
														<!--begin::Event name-->
														<div class="d-flex align-items-center mb-2">
															자원명
															<span class="fs-3 fw-bold me-3" data-kt-calendar="event_name"></span>
															<span class="badge badge-light-success" data-kt-calendar="all_day"></span>
														</div>
														<!--end::Event name-->
														<!--begin::Event description-->
														<div class="fs-6" data-kt-calendar="event_description"></div>
														<!--end::Event description-->
													</div>
												</div>
												<!--end::Row-->
												<!--begin::Row-->
												<div class="d-flex align-items-center mb-2">
													<!--begin::Bullet-->
													<span class="bullet bullet-dot h-10px w-10px bg-success ms-2 me-7"></span>
													<!--end::Bullet-->
													<!--begin::Event start date/time-->
													<div class="fs-6">
														일시
														<span class="fw-bold">Starts</span>
														<span data-kt-calendar="event_start_date"></span>
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
														<span data-kt-calendar="event_end_date"></span>
													</div>
													<!--end::Event end date/time-->
												</div>
												<!--end::Row-->
												<!--begin::Row-->
												<div class="d-flex align-items-center">
													<!--begin::Icon-->
													<i class="ki-duotone ki-geolocation fs-1 text-muted me-5">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
													<!--end::Icon-->
													<!--begin::Event location-->
													<div class="fs-6" data-kt-calendar="event_location"></div>
													<!--end::Event location-->
												</div>
												<!--end::Row-->
											</div>
											<!--end::Modal body-->
										</div>
									</div>
								</div>
								
								
								<div class="modal fade" id="kt_modal_view_event" tabindex="-1" data-bs-focus="false" aria-hidden="true">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Modal header-->
											<div class="modal-header border-0 justify-content-end">
												<!--begin::Edit-->
												<div class="btn btn-icon btn-sm btn-color-gray-500 btn-active-icon-primary me-2" data-bs-toggle="tooltip" data-bs-dismiss="click" title="Edit Event" id="kt_modal_view_event_edit">
													<i class="ki-duotone ki-pencil fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</div>
												<!--end::Edit-->
												<!--begin::Edit-->
												<div class="btn btn-icon btn-sm btn-color-gray-500 btn-active-icon-danger me-2" data-bs-toggle="tooltip" data-bs-dismiss="click" title="Delete Event" id="kt_modal_view_event_delete">
													<i class="ki-duotone ki-trash fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
														<span class="path3"></span>
														<span class="path4"></span>
														<span class="path5"></span>
													</i>
												</div>
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
													<!--end::Icon-->
													<div class="mb-9">
														예약 정보
														<!--begin::Event name-->
														<div class="d-flex align-items-center mb-2">
															자원명
															<span class="fs-3 fw-bold me-3" data-kt-calendar="event_name"></span>
															<span class="badge badge-light-success" data-kt-calendar="all_day"></span>
														</div>
														<!--end::Event name-->
														<!--begin::Event description-->
														<div class="fs-6" data-kt-calendar="event_description"></div>
														<!--end::Event description-->
													</div>
												</div>
												<!--end::Row-->
												<!--begin::Row-->
												<div class="d-flex align-items-center mb-2">
													<!--begin::Bullet-->
													<span class="bullet bullet-dot h-10px w-10px bg-success ms-2 me-7"></span>
													<!--end::Bullet-->
													<!--begin::Event start date/time-->
													<div class="fs-6">
														일시
														<span class="fw-bold">Starts</span>
														<span data-kt-calendar="event_start_date"></span>
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
														<span data-kt-calendar="event_end_date"></span>
													</div>
													<!--end::Event end date/time-->
												</div>
												<!--end::Row-->
												<!--begin::Row-->
												<div class="d-flex align-items-center">
													<!--begin::Icon-->
													<i class="ki-duotone ki-geolocation fs-1 text-muted me-5">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
													<!--end::Icon-->
													<!--begin::Event location-->
													<div class="fs-6" data-kt-calendar="event_location"></div>
													<!--end::Event location-->
												</div>
												<!--end::Row-->
											</div>
											<!--end::Modal body-->
										</div>
									</div>
								</div>
								
								
								
								<div class="modal fade" tabindex="-1" id="kt_modal_1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h3 class="modal-title">자원 추가</h3>

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
																		<input type="text" class="form-control" placeholder="자원명을 입력하세요" name="re"/>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!-- 모달창 몸통 테이블 끝-->
											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-primary submit_btn">추가</button>
												<button type="button" class="btn btn-light">취소</button>
											</div>
										</div>
									</div>
								</div>
								
								
								
								<div class="modal fade" tabindex="-1" id="kt_modal_2">
									<div class="modal-dialog">
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
																	
																		<select class="form-select" aria-label="Select example">
    																		<option value="1호차량">1호차량</option>
    																		<option value="2호차량">2호차량</option>
    																		<option value="3호차량">3호차량</option>
    																		<option value="4호차량">4호차량</option>
    																		<option value="5호차량">5호차량</option>
    																		<option value="6호차량">6호차량</option>
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
												<button type="button" class="btn btn-primary submit_btn">삭제</button>
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
	</div>
						

<script>var hostUrl = "/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<script src="resource/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
		<script src="resource/src/js/custom/apps/calendar/calendar.js"></script>
<script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.min.js" type="text/javascript" language="javascript"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="resource/scheduler/dist/js/jq.schedule.min.js"></script>
<script type="text/javascript">
    function addLog(type, message){
        var $log = $('<tr />');
        $log.append($('<th />').text(type));
        $log.append($('<td />').text(message ? JSON.stringify(message) : ''));
        $("#logs table").prepend($log);
    }
    $(function(){
        $("#logs").append('<table class="table">');
        var isDraggable = true;
        var isResizable = true;
        var $sc = $("#schedule").timeSchedule({
            startTime: "07:00", // schedule start time(HH:ii)
            endTime: "21:00",   // schedule end time(HH:ii)
            widthTime: 60 * 30,  // cell timestamp example 10 minutes
            timeLineY: 60,       // height(px)
            verticalScrollbar: 20,   // scrollbar (px)
            timeLineBorder: 4,   // border(top and bottom)
            bundleMoveWidth: 6,  // width to move all schedules to the right of the clicked time line cell
            draggable: isDraggable,
            resizable: isResizable,
            resizableLeft: true,
            rows : {
                '0' : {
                    title : 'Title Area1',
                    schedule:[
                        {
                            start: '09:00',
                            end: '12:00',
                            text: 'Text Area',
                            data: {
                            }
                        },
                        {
                            start: '11:00',
                            end: '14:00',
                            text: 'Text Area',
                            data: {
                            }
                        }
                    ]
                },
                '1' : {
                    title : 'Title Area2',
                    schedule:[
                        {
                            start: '15:00',
                            end: '16:00',
                            text: 'Text Area',
                            data: {
                            }
                        }
                    ]
                },
                '2' : {
                    title : 'Title Area3',
                    schedule:[
                        {
                            start: '17:00',
                            end: '18:00',
                            text: 'Text Area',
                            data: {
                            }
                        }
                    ]
                },
                '3' : {
                    title : 'Title Area4',
                    schedule:[
                        {
                            start: '19:00',
                            end: '20:00',
                            text: 'Text Area',
                            data: {
                            }
                        }
                    ]
                }
            },
            onChange: function(node, data){
                addLog('onChange', data);
            },
            onInitRow: function(node, data){
                addLog('onInitRow', data);
            },
            onClick: function(node, data){
                addLog('onClick', data);
            },
            onAppendRow: function(node, data){
                addLog('onAppendRow', data);
            },
            onAppendSchedule: function(node, data){
                addLog('onAppendSchedule', data);
                if(data.data.class){
                    node.addClass(data.data.class);
                }
                if(data.data.image){
                    var $img = $('<div class="photo"><img></div>');
                    $img.find('img').attr('src', data.data.image);
                    node.prepend($img);
                    node.addClass('sc_bar_photo');
                }
            },
            onScheduleClick: function(node, time, timeline){
                var start = time;
                var end = $(this).timeSchedule('formatTime', $(this).timeSchedule('calcStringTime', time) + 3600);
                $(this).timeSchedule('addSchedule', timeline, {
                    start: start,
                    end: end,
                    text:'Insert Schedule',
                    data:{
                        class: 'sc_bar_insert'
                    }
                });
                addLog('onScheduleClick', time + ' ' + timeline);
            },
        });
        $('#event_timelineData').on('click', function(){
            addLog('timelineData', $sc.timeSchedule('timelineData'));
        });
        $('#event_scheduleData').on('click', function(){
            addLog('scheduleData', $sc.timeSchedule('scheduleData'));
        });
        $('#event_resetData').on('click', function(){
            $sc.timeSchedule('resetData');
            addLog('resetData');
        });
        $('#event_resetRowData').on('click', function(){
            $sc.timeSchedule('resetRowData');
            addLog('resetRowData');
        });
        $('#event_setDraggable').on('click', function(){
            isDraggable = !isDraggable;
            $sc.timeSchedule('setDraggable', isDraggable);
            addLog('setDraggable', isDraggable ? 'enable' : 'disable');
        });
        $('#event_setResizable').on('click', function(){
            isResizable = !isResizable;
            $sc.timeSchedule('setResizable', isResizable);
            addLog('setResizable', isResizable ? 'enable' : 'disable');
        });
        $('.ajax-data').on('click', function(){
            $.ajax({url: './data/'+$(this).attr('data-target')})
                .done( (data) => {
                    addLog('Ajax GetData', data);
                    $sc.timeSchedule('setRows', data);
                });
        });
        $('#clear-logs').on('click', function(){
            $('#logs .table').empty();
        });
    });
</script>
</body>
</html>