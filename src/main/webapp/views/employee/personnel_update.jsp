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
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" data-bs-spy="scroll" data-bs-target="#kt_account_settings" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
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
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content">
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
											<div class="card-header border-0 cursor-pointer" role="button" data-bs-toggle="collapse" data-bs-target="#kt_account_profile_details" aria-expanded="true" aria-controls="kt_account_profile_details">
												<!--begin::Card title-->
												<div class="card-title m-0">
												</div>
												<!--end::Card title-->
											</div>
											<!--begin::Card header-->
											<!--begin::Content-->
											<div id="kt_account_settings_profile_details" class="collapse show">
												<!--begin::Form-->
												<form id="kt_account_profile_details_form" class="form">
													<!--begin::Card body-->
													<div class="card-body border-top p-9">
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">사진</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Image input-->
																<div class="image-input image-input-outline" data-kt-image-input="true" style="background-image: url('/media/svg/avatars/blank.svg')">
																	<!--begin::Preview existing avatar-->
																	<div class="image-input-wrapper w-125px h-125px" style="background-image: url(/media/avatars/300-1.jpg)"></div>
																	<!--end::Preview existing avatar-->
																	<!--begin::Label-->
																	<label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="change" data-bs-toggle="tooltip" title="Change avatar">
																		<i class="ki-duotone ki-pencil fs-7">
																			<span class="path1"></span>
																			<span class="path2"></span>
																		</i>
																		<!--begin::Inputs-->
																		<input type="file" name="avatar" accept=".png, .jpg, .jpeg" />
																		<input type="hidden" name="avatar_remove" />
																		<!--end::Inputs-->
																	</label>
																	<!--end::Label-->
																	<!--begin::Cancel-->
																	<span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="cancel" data-bs-toggle="tooltip" title="Cancel avatar">
																		<i class="ki-duotone ki-cross fs-2">
																			<span class="path1"></span>
																			<span class="path2"></span>
																		</i>
																	</span>
																	<!--end::Cancel-->
																	<!--begin::Remove-->
																	<span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="remove" data-bs-toggle="tooltip" title="Remove avatar">
																		<i class="ki-duotone ki-cross fs-2">
																			<span class="path1"></span>
																			<span class="path2"></span>
																		</i>
																	</span>
																	<!--end::Remove-->
																</div>
																<!--end::Image input-->
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
																		<span class="col-lg-4 col-form-label fw-semibold fs-4">김동동</span>
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
																<select class="form-select w-50" aria-label="Select option">
																	<option value="1">매장관리팀</option>
																	<option value="2">고객관리팀</option>
																	<option value="3">회계팀</option>
																	<option value="4">인사팀</option>
																	<!-- 추가적인 옵션들을 필요에 따라 추가할 수 있습니다 -->
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
																<select class="form-select w-50" aria-label="Select option">
																	<option value="1">팀장</option>
																	<option value="2">매니저</option>
																	<option value="3">팀원</option>
																	<!-- 추가적인 옵션들을 필요에 따라 추가할 수 있습니다 -->
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
																		<span class="col-lg-4 col-form-label fw-semibold fs-4">qqqq@test</span>
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
																		<span class="col-lg-4 col-form-label fw-semibold fs-4">20230001</span>
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
																		<span class="col-lg-4 col-form-label fw-semibold fs-4">2023-12-21</span>
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
																		<input type="text" name="fname" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" value="연차 갯수" />
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
																		<input type="text" name="number" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" value="0000" />
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
																		<input type="text" name="number" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" value="기존 비상 연락망" />
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
																		<input type="text" name="fname" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" value="기존 전화번호" />
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
															<label class="col-lg-4 col-form-label fw-semibold fs-6">생년월일</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<span class="col-lg-4 col-form-label fw-semibold fs-4">2023-12-21</span>
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
																	<div class="form-check form-check-custom form-check-solid">
																		<input class="form-check-input" type="radio" value="" id="flexRadioDefault" name="scheduleType" checked/>
																		<label class="form-check-label" for="flexRadioDefault">
																			남자
																		</label>
																		<input class="form-check-input" type="radio" value="" name="scheduleType" style="margin-left: 30px;"/>
																		<label class="form-check-label">
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
																			<input class="form-control form-control-solid" placeholder="기존 생년 월일" id="kt_datepicker_2"/>
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
																		<span class="col-lg-4 col-form-label fw-semibold fs-4">도로명 주소</span>
																		</br>
																		<span class="col-lg-4 col-form-label fw-semibold fs-4">상세주소</span>
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
																<select class="form-select w-50" aria-label="Select option">
																	<option value="1">대학교 4년제 졸업</option>
																	<option value="2">대학교 2년제 졸업</option>
																	<option value="3">대학교 초졸</option>
																	<option value="4">고졸</option>
																	<!-- 추가적인 옵션들을 필요에 따라 추가할 수 있습니다 -->
																</select>
																<!--begin::Row-->
																</br>
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<input type="text" name="number" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" value="기존 대학교" />
																	</div>
																	<!--end::Col-->
																</div>
																<!--end::Row-->
																</br>
																<!--begin::Row-->
																<div class="row">
																	<!--begin::Col-->
																	<div class="col-lg-6 fv-row">
																		<input type="text" name="number" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0" value="기존 전공" />
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
													<!--begin::Actions-->
													<div class="card-footer d-flex justify-content-between">
														<button class="btn btn-primary">삭제하기</button>
														<div>
															<button class="btn btn-light btn-active-light-primary me-2">돌아가기</button>
															<button class="btn btn-primary">저장</button>
														</div>
													</div>
													<!--end::Actions-->
												</form>
												<!--end::Form-->
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
		<script src="resource/assets/js/custom/account/settings/signin-methods.js"></script>
		<script src="resource/assets/js/custom/account/settings/profile-details.js"></script>
		<script src="resource/assets/js/custom/account/settings/deactivate-account.js"></script>
		<script src="resource/assets/js/custom/pages/user-profile/general.js"></script>
		<script src="resource/assets/js/widgets.bundle.js"></script>
		<script src="resource/assets/js/custom/widgets.js"></script>
		<script src="resource/assets/js/custom/apps/chat/chat.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/type.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/budget.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/settings.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/team.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/targets.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/files.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/complete.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/main.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/two-factor-authentication.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/users-search.js"></script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
		<!-- 생년월일 데이트 피커-->
		$("#kt_datepicker_2").flatpickr();	
	</script>
</html>