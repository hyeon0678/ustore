<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<!--
Author: Keenthemes
Product Name: Craft 
Product Version: 1.1.4
Purchase: https://themes.getbootstrap.com/product/craft-bootstrap-5-admin-dashboard-theme
Website: http://www.keenthemes.com
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
License: For each use you must have a valid license purchased only from above link in order to legally use the theme for your project.
-->
<html lang="en">
	<!--begin::Head-->
	<head>
<base href="../" />
		<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes</title>
		<meta charset="utf-8" />
	
		

		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="principal"/>
	</sec:authorize>
	
		<!--begin::Theme mode setup on page load-->
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::Main-->
		<!--begin::Root-->
		<jsp:include page="/views/common/header.jsp"></jsp:include>
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid">
				
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 30px; background-color: #fffff8; margin-left: 30px"> 
						<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
						
							
						
							<!--begin::Container-->
							<div class="container-xxl">
								<!--begin::Navbar-->
								<div class="card mb-5 mb-xl-10">
									<div class="card-body pt-9 pb-0">
										<!--begin::Details-->
										<div class="d-flex flex-wrap flex-sm-nowrap mb-3">
											<!--begin: Pic-->
											<div class="me-7 mb-4">
												<div class="symbol symbol-100px symbol-lg-160px symbol-fixed position-relative">
												
												
													<img class="profile-photo" alt="Logo" src="resource/assets/media/profil/blank.png" />
													
													
												</div>
											</div>
											<!--end::Pic-->
											<!--begin::Info-->
											<div class="flex-grow-1">
												<!--begin::Title-->
												<div class="d-flex justify-content-between align-items-start flex-wrap mb-2">
													<div class="d-flex flex-column">
														<div class="d-flex align-items-center mb-2">
															<p class="text-gray-900 fs-2 fw-bold me-1">${employee.empName}</p>
														</div>
														<div class="d-flex flex-wrap fw-semibold fs-6 mb-4 pe-2">
															<a href="#" class="d-flex align-items-center text-gray-500 text-hover-primary me-5 mb-2">
															<i class="ki-duotone ki-profile-circle fs-4 me-1">
															</i>${principal.username}</a>
														</div>
													</div>
													
													<div class="d-flex my-4">
													
													<form action="employee/attendance" method="post">
														<div hidden="true">
															<jsp:useBean id="attendance" class="java.util.Date" />
															<input type="text" name="emp_idx" value="${employee.empIdx}" />
															<fmt:formatDate var="curDt" value="${attendance}" type="DATE" pattern="yyyy-MM-dd" />
															<fmt:formatDate var="curTime" value="${attendance}" type="DATE" pattern="HH:mm:ss" />
															<input type="text" name="event_start_date" value="${curDt}"/>
															<input type="text" name="event_start_time" value="${curTime}"/>
														</div>
														<button class="btn btn-flex btn-primary" id="midnightchecker" style="margin-right: 5px">출근</button>
													</form>
														
														
													<form action="employee/leavework" method="post">
														<div hidden="true">
															<jsp:useBean id="leavework" class="java.util.Date" />
															<input type="text" name="emp_idx" value="${employee.empIdx}" /> 
															<fmt:formatDate var="curDt" value="${leavework}" type="DATE" pattern="yyyy-MM-dd" />
															<fmt:formatDate var="curTime" value="${leavework}" type="DATE" pattern="HH:mm:ss" />
															<input type="text" name="event_start_date" value="${curDt}"/>
															<input type="text" name="event_start_time" value="${curTime}"/>
														</div>
														<button class="btn btn-flex btn-primary" id="midnightchecker">퇴근</button>
													</form>
														
													</div>
												</div>
												
												
																								
												<div class="d-flex flex-wrap flex-stack">
													<div class="d-flex flex-column flex-grow-1 pe-8">
														<div class="d-flex flex-wrap">
															<div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
																<div class="d-flex align-items-center">
																	<div class="text-gray-900 fs-2 fw-bold me-1">오늘의 일정</div>
																</div>
																<!--end::Number-->
																<!--begin::Label-->
																<div class="fw-semibold fs-6 text-gray-500">일정 갯수</div>
																<!--end::Label-->
															</div>
															<!--end::Stat-->
															<!--begin::Stat-->
															<div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
																<!--begin::Number-->
																<div class="d-flex align-items-center">
																	<div class="text-gray-900 fs-2 fw-bold me-1">남은 연차</div>
																</div>
																<!--end::Number-->
																<!--begin::Label-->
																<div class="fw-semibold fs-6 text-gray-500" style="text-align: center;">${annual}개</div>
																<!--end::Label-->
															</div>
															<!--end::Stat-->
															<!--begin::Stat-->
															<div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-6 mb-3">
																<!--begin::Number-->
																<div class="d-flex align-items-center">
																	<div class="text-gray-900 fs-2 fw-bold me-1">주간 근무 시간</div>
																</div>
																<!--end::Number-->
																<!--begin::Label-->
																<div class="fw-semibold fs-6 text-gray-500">총 주간 근무 시간</div>
																<!--end::Label-->
															</div>
															<!--end::Stat-->
														</div>
														<!--end::Stats-->
													</div>
													<!--end::Wrapper-->
												</div>
												<!--end::Stats-->
											</div>
											<!--end::Info-->
										</div>
										<!--end::Details-->
									</div>
								</div>
								<!--end::Navbar-->
								<!--begin::details View-->
								<div class="card mb-5 mb-xl-10" id="kt_profile_details_view">
									<!--begin::Card header-->
									<div class="card-header cursor-pointer">
										<!--begin::Card title-->
										<div class="card-title m-0">
											<h3 class="fw-bold m-0">프로필 상세정보</h3>
										</div>
										<!--end::Card title-->
										<!--begin::Action-->
										<a href="/employee/correction" class="btn btn-sm btn-primary align-self-center">프로필 수정</a>
										<!--end::Action-->
									</div>
									<!--begin::Card header-->
									<!--begin::Card body-->
									<div class="card-body p-9">
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-4 fw-semibold text-muted">이름</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8">
												<span class="fw-bold fs-6 text-gray-800">${employee.empName}</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										<!--begin::Input group-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-4 fw-semibold text-muted">부서</label>
											<!--end::Label-->
											<!--begin::Col-->
 											<div class="col-lg-8 fv-row">
												<span class="fw-bold fs-6 text-gray-800">${employee.deptname}</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Input group-->
										<!--begin::Input group-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-4 fw-semibold text-muted">내선 번호</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8 d-flex align-items-center">
												<span class="fw-bold fs-6 text-gray-800">${employee.empExtNo}</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Input group-->
										<!--begin::Input group-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-4 fw-semibold text-muted">직책</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8">
												<span class="fw-bold fs-6 text-gray-800">${employee.commontype}</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Input group-->
										<!--begin::Input group-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-4 fw-semibold text-muted">입사일 
											</span></label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8">
												<span class="fw-bold fs-6 text-gray-800">${employee.empJoinDate}</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Input group-->
										<!--begin::Input group-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-4 fw-semibold text-muted">전화번호</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8">
												<span class="fw-bold fs-6 text-gray-800">${employee.empPhone}</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Input group-->
										<!--begin::Input group-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-4 fw-semibold text-muted">이메일</label>
											<!--begin::Label-->
											<!--begin::Label-->
											<div class="col-lg-8">
												<span class="fw-bold fs-6 text-gray-800">${employee.empEmail}</span>
											</div>
											<!--begin::Label-->
										</div>
										<div class="row mb-10">
											<label class="col-lg-4 fw-semibold text-muted">주소</label>
											
											<div class="col-lg-8">
												<span class="fw-bold fs-6 text-gray-800">${employee.empRoadAddr}</span>
												<br/>
												<span class="fw-bold fs-6 text-gray-800">${employee.empDetailAddr}</span>
											</div>
										</div>
										
									</div>
								</div>
								
								<div class="row gy-5 g-xl-10">
									
									<div class="col-xl-12 mb-xl-5">
										
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<div class="container-xxl">
								<div class="card">
									<div class="card-header">
										<h2 class="card-title fw-bold">Calendar</h2>
										<div class="card-toolbar">
											<button class="btn btn-flex btn-primary" data-kt-calendar="add">
											<i class="ki-duotone ki-plus fs-2"></i>Add Event</button>
										</div>
									</div>
									<div class="card-body">
										<div id="kt_calendar_app"></div>
									</div>
								</div>
								<div class="modal fade" id="kt_modal_add_event" tabindex-="1" aria-hidden="true" data-bs-focus="false">
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<div class="modal-content">
											<form action="employee/addevent" id="kt_modal_add_event_form" method="post">
												<div class="modal-header">
													<h2 class="fw-bold" data-kt-calendar="title">Add Event</h2>
													<!--end::Modal title-->
													<div class="btn btn-icon btn-sm btn-active-icon-primary" id="kt_modal_add_event_close">
														<i class="ki-duotone ki-cross fs-1">
															<span class="path1"></span>
															<span class="path2"></span>
														</i>
													</div>
												</div>
												<div class="modal-body py-10 px-lg-17">
													<div class="fv-row mb-9">
														
														<div class="form-check form-check-custom form-check-solid">									
															<input class="form-check-input" type="radio" value="notuse" name="schedule_type" checked="checked" hidden="true"/>
															<label class="form-check-label" hidden="true">
																notuse!!!
															</label>
														</div>
														
														<label class="fs-6 fw-semibold required mb-2">일정 종류</label>
														
														<div class="form-check form-check-custom form-check-solid">									
															<input class="form-check-input" type="radio" value="10" name="schedule_type" checked="checked"/>
															<label class="form-check-label">
																개인 일정
															</label>
														</div>
														
														<div class="form-check form-check-custom form-check-solid">
															<input class="form-check-input" type="radio" value="11" name="schedule_type" />
															<label class="form-check-label">
																팀 일정
															</label>
														</div>
														
													</div>
													<div hidden="true">
														<input type="text" value="${employee.empIdx}" name="emp_idx"/>
													</div>
													<div class="fv-row mb-9">
														<label class="fs-6 fw-semibold mb-2">일정</label>
														<input type="text" class="form-control form-control-solid" placeholder="" name="calendar_event_name" />
													</div>
													<div class="fv-row mb-9">
														<label class="fs-6 fw-semibold mb-2">일정 내용</label>
														<input type="text" class="form-control form-control-solid" placeholder="" name="calendar_event_description" />
													</div>
													<div class="fv-row mb-9">
														<div class="form-check form-switch form-check-custom form-check-solid">
															<label class="fs-6 fw-semibold mb-2" for="flexSwitchChecked">
																알림
															</label>
															<input class="form-check-input" type="checkbox" name="url" value="/employee/home" id="flexSwitchChecked" style="margin-left: 5%;"/>
															<input class="form-control form-control-solid" type="text" name="alarm_subject" value="프로필 알림" hidden="true" style="margin-left: 5%;"/>
															<input class="form-control form-control-solid" type="text" name="alarm_content" value="30분 전" hidden="true" style="margin-left: 5%;"/>
														</div>
													</div>
													<div class="row row-cols-lg-2 g-10">
														<div class="col">
															<div class="fv-row mb-9">
																<!--begin::Label-->
																<label class="fs-6 fw-semibold mb-2 required">일정 시작 일</label>
																<input class="form-control form-control-solid" name="event_start_date" placeholder="Pick a start date" id="kt_calendar_datepicker_start_date"/>
															</div>
														</div>
														<div class="col" data-kt-calendar="datepicker">
															<div class="fv-row mb-9">
																<label class="fs-6 fw-semibold mb-2">일정 시작 시간</label>
																<input class="form-control form-control-solid" name="event_start_time" placeholder="Pick a start time" id="kt_calendar_datepicker_start_time" />
															</div>
														</div>
													</div>
													<div class="row row-cols-lg-2 g-10">
														<div class="col">
															<div class="fv-row mb-9">
																<label class="fs-6 fw-semibold mb-2 required">일정 종료 일</label>
																<input class="form-control form-control-solid" name="event_end_date" placeholder="Pick a end date" id="kt_calendar_datepicker_end_date" />
															</div>
														</div>
														<div class="col" data-kt-calendar="datepicker">
															<div class="fv-row mb-9">
																<label class="fs-6 fw-semibold mb-2">일정 종료 시간</label>
																<input class="form-control form-control-solid" name="event_end_time" placeholder="Pick a end time" id="kt_calendar_datepicker_end_time" />
															</div>
														</div>
													</div>
													<div hidden="true">
														<input type="text" value="${employee.empIdx}" name="emp_idx" />
														<input type="text" value="${employee.empName}" name="reg_by" />
													</div>
												</div>
												<div class="modal-footer flex-center">
													<button type="reset" id="kt_modal_add_event_cancel" class="btn btn-light">취소</button>
													<button id="kt_modal_add_event_submit" class="btn btn-primary">
														<span class="indicator-label">추가</span>
														<span class="indicator-progress">Please wait... 
															<span class="spinner-border spinner-border-sm align-middle ms-2"></span>
														</span>
													 </button>
												</div>
											</form>
										</div>
									</div>
								</div>
								
								
								<!-- 이벤트 선택 -->
								<!--begin::Modal - New Product-->
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
														<!--begin::Event name-->
														<div class="d-flex align-items-center mb-2">
															<span class="fs-3 fw-bold me-3" data-kt-calendar="event_name"></span>
															<!-- <span class="badge badge-light-success" data-kt-calendar="all_day"></span> -->
														</div>
														<!--end::Event name-->
														<!--begin::Event description-->
														<div class="fs-6" data-kt-calendar="event_description"></div>
														<div class="fs-6" data-kt-calendar="schedule_type" ></div>
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
												<!-- <div class="d-flex align-items-center">
													begin::Icon
													<i class="ki-duotone ki-geolocation fs-1 text-muted me-5">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</div> -->
												<div class="d-flex align-items-center">
													<!--begin::Icon-->
													
													<!--end::Icon-->
													<!--begin::Event location-->
													<!--end::Event location-->
												</div>
												<!--end::Row-->
											</div>
											<!--end::Modal body-->
										</div>
									</div>
								</div>
								<!--end::Modal - New Product-->
								<!--end::Modals-->
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
										<!--end::Chart widget 5-->
									</div>
									<!--end::Col-->
								
								</div>
								<!--end::Row-->
								
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
					</div>
					<!--end::Content-->
					<!--begin::Footer-->
					<div class="footer py-4 d-flex flex-lg-column" id="kt_footer">
						
					</div>
				</div>
			</div>
		</div>
		
		<script>var hostUrl = "/";</script>
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<script src="resource/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
		<script src="resource/src/js/custom/apps/calendar/profile_calendar.js"></script>
		<script src="resource/assets/js/custom/pages/user-profile/general.js"></script>

	</body>
	<script>
	
	$(function(){headerOnReady()}	)
	
	$(function(){
		console.log("프로필 이미지 로딩");
		$.ajax({
	    	type:'GET',
			data:{'emp_idx':user,'file_type':74},
			url:'/employee/getEmpPhoto.ajax',
			dataType:'JSON',
			success:function(data){
				console.log('profile success')
				let photo = data.photo
				let imgurl = "/ustore/photo/"+photo;
				$('.profile-photo').prop("src", imgurl)
			},error:function(error){
				console.log(error);
			}
		});
	})
	
	
	/* $('#midnightchecker').on('click',function(){
		var $event_start_date = $('input[name="event_start_date"]');
		var $event_start_time = $('input[name="event_start_time"]');
		var $emp_idx = $('input[name="emp_idx"]');
		
		

		console.log("출근 날짜 : "+$event_start_date.val());
		console.log("출근 시간 : "+$event_start_time.val());
		console.log("사원 번호 : "+$emp_idx.val());

		var param = {};
		param.event_start_date = $event_start_date.val();
		param.event_start_time = $event_start_time.val();
		param.emp_idx = $emp_idx.val();

		console.log("출근 parameter : "+param);

		$.ajax({
			type:'post',
			url:'/employee/attendance.ajax',
			data:param,
			dataType:'JSON',
			success:function(data){
				console.log(data);
				console.log("출근 정보 등록 성공");
				location.href="/employee/home?"+"${sessionScope.loginId}";
			},
			error:function(e){
				console.log(e);
			}
		});
	}); */
	
	/* function attSet(){
		var $event_start_date = $('input[name="event_start_date"]');
		var $event_start_time = $('input[name="event_start_time"]');
		var $event_start_time = '00:00:00';
		var $emp_idx = $('input[name="emp_idx"]');

		console.log("출근 날짜 : "+$event_start_date.val());
		console.log("출근 시간 : "+$event_start_time.val());
		console.log("사원 번호 : "+$emp_idx.val());

		var param = {};
		param.event_start_date = $event_start_date.val();
		param.event_start_time = $event_start_time.val();
		param.emp_idx = $emp_idx.val();

		console.log("출근 parameter : "+param);

		$.ajax({
			type:'post',
			url:'/employee/attendancesetting.ajax',
			data:param,
			dataType:'JSON',
			success:function(data){
				console.log(data);
				console.log("출근 초기값 정보 등록 성공");
			},
			error:function(e){
				console.log(e);
			}
		});
	}; */
	
	
	
	
	
	var msg = "${msg}"; // msg값을 받아와서 msg에 넣고
	console.log(msg);
	if (msg != "") { // msg가 null이 아니라면
		alert(msg); // msg를 alert로 메세지창을 띄운다
	}
	
	var curDate = new Date();
	var curDay = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + curDate.getDate();
	var curTime = curDate.getHours() + ":" + curDate.getMinutes() + ":" + curDate.getSeconds();
</script>
</html>