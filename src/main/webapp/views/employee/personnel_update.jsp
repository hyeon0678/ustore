<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

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
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css"/>

		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
 <style>
        .image-input-placeholder {
            background-image: url('resource/assets/media/icon/blank.svg');
            /* 다른 스타일 속성도 필요하다면 여기에 추가하세요 */
        }
    </style>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" data-bs-spy="scroll" data-bs-target="#kt_account_settings" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
		<jsp:include page="/views/common/header.jsp"></jsp:include>
		<!--begin::Theme mode setup on page load-->
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::Main-->
		<!--begin::Root-->
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
								<div class="d-flex flex-column flex-lg-row">
									<!--begin::Layout-->
									<div class="flex-md-row-fluid ms-lg-12">
													<h3 class="fw-bold m-0 mb-5">직원 수정</h3>
										<!--begin::Basic info-->
										<div class="card mb-5 mb-xl-10">
											<!--begin::Card header-->
											<div class="card-header border-0 cursor-pointer"data-bs-toggle="collapse" data-bs-target="#kt_account_profile_details" aria-expanded="true" aria-controls="kt_account_profile_details">
												<!--begin::Card title-->
												<div class="card-title m-0">
												</div>
												<!--end::Card title-->
											</div>
											<!--begin::Card header-->
											<!--begin::Content-->
											<div id="kt_account_settings_profile_details" class="collapse show">
												<!--begin::Form-->
												<form id="uploadForm" action="employee/modify" method="post" enctype="multipart/form-data">
													<!--begin::Card body-->
													<div class="card-body border-top p-9">
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">사진</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																
																
																
																
																
																
																
															<!--end::Image input placeholder-->
															
															<!--begin::Image input-->
															<!-- 이미지 파일 -->
															
															
															
															<!--begin::Image input-->
															
															<div class="image-input image-input-empty image-input-placeholder" data-kt-image-input="true">
														    <!--begin::Image preview wrapper-->
														    
														    <c:if test="${not empty list and not empty list[0].newFileName and list[0].newFileName ne null and not empty list[0].extension}">														    
														    <div class="image-input-wrapper w-125px h-125px" style="background-image: url(/ustore/photo/${list[0].newFileName}${list[0].extension})"></div>
														    </c:if>
														    
														    <c:if test="${empty list or empty list[0].newFileName or list[0].newFileName eq null or empty list[0].extension}">
															  <div class="image-input-wrapper w-125px h-125px"></div>
															</c:if>
															
														    <!--end::Image preview wrapper-->
														
														    <!--begin::Edit button-->
														    <label class="btn btn-icon btn-circle btn-color-muted btn-active-color-primary w-25px h-25px bg-body shadow"
														    data-kt-image-input-action="change"
														    data-bs-toggle="tooltip"
														    data-bs-dismiss="click"
														    title="Change avatar">
														        <i class="ki-duotone ki-pencil fs-6"><span class="path1"></span><span class="path2"></span></i>
														
														        <!--begin::Inputs-->
														        <input type="file" name="uploadFile" id="file-input" accept=".png, .jpg, .jpeg" />
															    <input type="hidden" name="emp_idx" id="emp_idx" value="${list.get(0).empIdx}"/>
														        <input type="hidden" name="avatar_remove" />
														        <!--end::Inputs-->
														    </label>
														    <!--end::Edit button-->
														
														    <!--begin::Cancel button-->
														    <span class="btn btn-icon btn-circle btn-color-muted btn-active-color-primary w-25px h-25px bg-body shadow"
														    data-kt-image-input-action="cancel"
														    data-bs-toggle="tooltip"
														    data-bs-dismiss="click"
														    title="Cancel avatar">
														        <i class="ki-outline ki-cross fs-3"></i>
														    </span>
														    <!--end::Cancel button-->
														
														    <!--begin::Remove button-->
														    <span class="btn btn-icon btn-circle btn-color-muted btn-active-color-primary w-25px h-25px bg-body shadow"
														    data-kt-image-input-action="remove"
														    data-bs-toggle="tooltip"
														    data-bs-dismiss="click"
														    title="Remove avatar">
														        <i class="ki-outline ki-cross fs-3"></i>
														    </span>
														    <!--end::Remove button-->
														</div>
															<!--end::Image input-->
																														
															
															
															
															
															
															
															
															<!-- 
															<div class="symbol symbol-100px symbol-lg-160px symbol-fixed position-relative">
															<c:if test="${not empty list and not empty list[0].newFileName and list[0].newFileName ne null and not empty list[0].extension}">
															   
															    <img src="/ustore/photo/${list[0].newFileName}${list[0].extension}" id="empImg" />
															</c:if>
															<c:if test="${empty list or empty list[0].newFileName or list[0].newFileName eq null or empty list[0].extension}">
															  
															    <img src="resource/assets/media/icon/blank.svg" id="blankImg" />
															</c:if>
															</div>
															</br>
															    <input type="file" name="uploadFile" id="file-input" accept=".png, .jpg, .jpeg" />
															    <input type="hidden" name="emp_idx" id="emp_idx" value="${list.get(0).empIdx}"/>
														
 -->
															<!--end::Image input-->
															<!-- 이미지 파일 끝 -->
															
							
							
							
							
							
							
							
							
							
							
																<!--begin::Hint-->
																<div class="form-text">file types: png, jpg, jpeg.</div>
																<!--end::Hint-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">이름</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<span class="col-lg-4 col-form-label fw-semibold fs-4" value="${list.get(0).empName}">${list.get(0).empName}</span>
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">부서명</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<!-- 셀렉트 박스 -->
																<select class="form-select w-50" aria-label="Select option"  name = "dept_name" id="dept_name">
																    <option value="고객관리팀" ${list.get(0).deptName eq '고객관리팀' ? 'selected' : ''}>고객관리팀</option>
																    <option value="회계팀" ${list.get(0).deptName eq '회계팀' ? 'selected' : ''}>회계팀</option>
																    <option value="인사팀" ${list.get(0).deptName eq '인사팀' ? 'selected' : ''}>인사팀</option>
																	<option value="매장관리팀" ${list.get(0).deptName eq '매장관리팀' ? 'selected' : ''}>매장관리팀</option>
																	<option value="식품팀" ${list.get(0).deptName eq '식품팀' ? 'selected' : ''}>매장관리팀(식품팀)</option>
																	<option value="생필품팀" ${list.get(0).deptName eq '생필품팀' ? 'selected' : ''}>매장관리팀(생필품팀)</option>
																	<option value="전자제품팀" ${list.get(0).deptName eq '전자제품팀' ? 'selected' : ''}>매장관리팀(전자제품팀)</option>
																</select>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">

																<span>직책</span>
															</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<select class="form-select w-50" aria-label="Select option" name = "common_type" id="common_type">
																	<option value="점장" ${list.get(0).positionType eq '점장' ? 'selected' : ''}>점장</option>
																	<option value="팀장" ${list.get(0).positionType eq '팀장' ? 'selected' : ''}>팀장</option>
																	<option value="매니저" ${list.get(0).positionType eq '매니저' ? 'selected' : ''}>매니저</option>
																	<option value="사원" ${list.get(0).positionType eq '사원' ? 'selected' : ''}>사원</option>
																</select>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">이메일</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<span class="col-lg-4 col-form-label fw-semibold fs-4" value="${list.get(0).empEmail}">${list.get(0).empEmail}</span>
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">사원번호</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<span class="col-lg-4 col-form-label fw-semibold fs-4" id="emp_idx" value="${list.get(0).empIdx}">${list.get(0).empIdx}</span>
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->

														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">입사일</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<span class="col-lg-4 col-form-label fw-semibold fs-4" value="${list.get(0).empJoinDate}">${list.get(0).empJoinDate}</span>
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->


														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">
																<span>연차</span>
															</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<input type="text" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" name ="leave_incdec" id="leave_incdec" value="${list.get(0).leaveIncdec}" />
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->



														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">내선 번호</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<input type="text" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" name="emp_ext_no" id="emp_ext_no" value="${list.get(0).empExtNo}" />
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->






														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">비상 연락망</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<input type="text"  class="form-control form-control-lg form-control-solid mb-3 mb-lg-0"  name="emp_emergency_phone" id="emp_emergency_phone" value="${list.get(0).empEmergencyPhone}" />
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">
																<span>전화번호</span>
															</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<input type="text"  class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" name ="emp_phone" id="emp_phone" value="${list.get(0).empPhone}" />
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->







														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">성별</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<div class="col-lg-8 fv-row">
																	<!-- 시작::입력 -->
																	<div class="form-check form-check-custom form-check-solid" id="emp_gender">
																	    <input class="form-check-input" type="radio" value="M" id="maleRadio" name="gender" ${list.get(0).empGender eq 'M' ? 'checked' : ''}/>
																	    <label class="form-check-label" for="maleRadio">
																	        남자
																	    </label>
																	    <input class="form-check-input" type="radio" value="W" id="femaleRadio" name="gender" ${list.get(0).empGender eq 'W' ? 'checked' : ''} style="margin-left: 30px;"/>
																	    <label class="form-check-label" for="femaleRadio">
																	        여자
																	    </label>
																	</div>
																</div>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">생년월일</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<div class="mb-0">
																			<input class="form-control form-control-solid"  name ="emp_birth" value="${list.get(0).empBirth}" id="kt_datepicker_2"/>
																		</div>
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">주소</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<span class="col-lg-4 col-form-label fw-semibold fs-4" id="emp_roadAddr" >${list.get(0).empRoadAddr}</span>
																		</br>
																		<span class="col-lg-4 col-form-label fw-semibold fs-4" id="emp_detailAddr" >${list.get(0).empDetailAddr}</span>
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">학력</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<!-- 셀렉트 박스 -->
																<select class="form-select w-50" aria-label="Select option" name ="education" id="education">
																	<option value="초등학교 졸업" ${list.get(0).education eq '초등학교 졸업' ? 'selected' : ''}>초등학교 졸업</option>
																	<option value="중학교 졸업" ${list.get(0).education eq '중학교 졸업' ? 'selected' : ''}>중학교 졸업</option>
																	<option value="고등학교 졸업" ${list.get(0).education eq '고등학교 졸업' ? 'selected' : ''}>고등학교 졸업</option>
																	<option value="대학교 졸업" ${list.get(0).education eq '대학교 졸업' ? 'selected' : ''}>대학교 졸업</option>
																	<option value="직업전문학원·학교 및 기타학력 졸업" ${list.get(0).education eq '직업전문학원·학교 및 기타학력 졸업' ? 'selected' : ''}>직업전문학원·학교 및 기타학력 졸업</option>
																	<option value="" ${list.get(0).education eq null ? 'selected' : ''}></option>
																	<!-- 추가적인 옵션들을 필요에 따라 추가할 수 있습니다 -->
																</select>
																<!--begin::Row-->
																</br>
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<input type="text"  class="form-control form-control-lg form-control-solid mb-3 mb-lg-0"  name="school_name" id="school_name" value="${list.get(0).schoolName}" />
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
																</br>
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<input type="text" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0"  name="major"  id="major" value="${list.get(0).major}" />
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
															</div>
															
															<!--end::Col-->
														</div>
														<!--end::Input group-->
													</div>
													<!--end::Card body-->
														</form>
													<!--begin::Actions-->
													<div class="card-footer d-flex justify-content-between">
														<a href="#" class="btn btn-primary" id=delete>삭제하기</a>
														<div>
															<a href="/employee/management" class="btn btn-light btn-active-light-primary me-2">돌아가기</a>
															<a href="#" class="btn btn-primary" id="modify">프로필 수정</a>
														</div>
														
													</div>
													<!--end::Actions-->

											</div>
											<!--end::Content-->
										</div>
										<!--end::Basic info-->
									</div>
									<!--end::Layout-->
								</div>
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
					</div>
					<!--end::Content-->
					<!--begin::Footer-->
					<div class="footer py-4 d-flex flex-lg-column" id="kt_footer">
						<!--begin::Container-->
						<div class="container-fluid d-flex flex-column flex-md-row flex-stack">
							<!--begin::Copyright-->
							<div class="text-gray-900 order-2 order-md-1">
								<span class="text-muted fw-semibold me-2">2023&copy;</span>
								<a href="https://keenthemes.com" target="_blank" class="text-gray-800 text-hover-primary">Keenthemes</a>
							</div>
							<!--end::Copyright-->
							<!--begin::Menu-->
							<ul class="menu menu-gray-600 menu-hover-primary fw-semibold order-1">
								<li class="menu-item">
									<a href="https://keenthemes.com" target="_blank" class="menu-link px-2">About</a>
								</li>
								<li class="menu-item">
									<a href="https://devs.keenthemes.com" target="_blank" class="menu-link px-2">Support</a>
								</li>
								<li class="menu-item">
									<a href="https://themes.getbootstrap.com/product/craft-bootstrap-5-admin-dashboard-theme" target="_blank" class="menu-link px-2">Purchase</a>
								</li>
							</ul>
							<!--end::Menu-->
						</div>
						<!--end::Container-->
					</div>
					<!--end::Footer-->
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		
		<!--begin::Scrolltop-->
		<div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
			<i class="ki-duotone ki-arrow-up">
				<span class="path1"></span>
				<span class="path2"></span>
			</i>
		</div>
		<!--end::Scrolltop-->
		<!--end::Modals-->
		<!--begin::Javascript-->
		<script>var hostUrl = "/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		
		<!--begin::Vendors Javascript(used for this page only)-->
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->

		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
		<!-- 생년월일 데이트 피커-->
		$("#kt_datepicker_2").flatpickr();	
		

		
		<!-- 수정하기 -->
	
		$(document).ready(function () {
		       $("#delete").on("click",function(e){
					e.preventDefault();
					var emp_idx = $("#emp_idx").text();
					var url = "employee/delete?emp_idx="+emp_idx;
					window.location.href = url;
				});
		       
		       
	        $("#modify").on("click", function (e) {
	            e.preventDefault(); 
	     
	            
	            $("#uploadForm").submit();

	        });
	    });



	</script>
</html>