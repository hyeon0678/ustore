<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
	<!--begin::Head-->
	<base href="../../" />
	<head>
		<title></title>
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
		<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
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
	<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
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
					<!--begin::Header-->
					<div style="height: 90; background-color: #255000;">
					<div id="kt_header" class="header" data-kt-sticky="true" data-kt-sticky-name="header" data-kt-sticky-offset="{default: '200px', lg: '300px'}">
						<!--begin::Container-->
						<div class="container-fluid d-flex align-items-stretch justify-content-between">
							<!--begin::Logo bar-->
							<div class="d-flex align-items-center flex-grow-1 flex-lg-grow-0">
								<!--begin::Aside Toggle-->
								<div class="d-flex align-items-center d-lg-none">
									<div class="btn btn-icon btn-active-color-primary ms-n2 me-1" id="kt_aside_toggle">
										<i class="ki-duotone ki-abstract-14 fs-1">
											<span class="path1"></span>
											<span class="path2"></span>
										</i>
									</div>
								</div>
								<!--end::Aside Toggle-->
								<!--begin::Aside toggler-->
								
								<!--end::Aside toggler-->
							</div>
							<!--end::Logo bar-->
							<!--begin::Topbar-->
							<div class="d-flex align-items-stretch justify-content-between flex-lg-grow-1">
								<!--begin::Search-->
								<div class="d-flex align-items-stretch me-1">
									<!--begin::Search-->
									<div id="kt_header_search" class="header-search d-flex align-items-center w-100 w-lg-300px" data-kt-search-keypress="true" data-kt-search-min-length="2" data-kt-search-enter="enter" data-kt-search-layout="menu" data-kt-search-responsive="lg" data-kt-menu-trigger="auto" data-kt-menu-permanent="true" data-kt-menu-placement="bottom-start">
										<!--begin::Tablet and mobile search toggle-->
										<div data-kt-search-element="toggle" class="search-toggle-mobile d-flex d-lg-none align-items-center">
										</div>
										<!--end::Tablet and mobile search toggle-->
										<!--begin::Form(use d-none d-lg-block classes for responsive search)-->
										<!--end::Form-->
									</div>
									<!--end::Search-->
								</div>
								<!--end::Search-->
								<!--begin::Toolbar wrapper-->
								<div class="d-flex align-items-stretch flex-shrink-0">
									<!--begin::Activities-->
									<div class="d-flex align-items-center ms-1 ms-lg-2">
										<!--begin::Drawer toggle-->										
										<!--end::Drawer toggle-->
									</div>
									<!--end::Activities-->
									<!--begin::Quick links-->
									<div class="d-flex align-items-center ms-1 ms-lg-2">
										<!--begin::Menu wrapper-->										
										<!--begin::Menu-->
										<div class="menu menu-sub menu-sub-dropdown menu-column w-250px w-lg-325px" data-kt-menu="true">
											<!--begin::Heading-->
											<div class="d-flex flex-column flex-center bgi-no-repeat rounded-top px-9 py-10" style="background-image:url('resource/assets/media/misc/menu-header-bg.jpg')">
												<!--begin::Title-->
												<h3 class="text-white fw-semibold mb-3">Quick Links</h3>
												<!--end::Title-->
												<!--begin::Status-->
												<span class="badge bg-primary text-inverse-primary py-2 px-3">25 pending tasks</span>
												<!--end::Status-->
											</div>
											<!--end::Heading-->
											<!--begin:Nav-->
											<div class="row g-0">												
											</div>
											<!--end:Nav-->
											<!--begin::View more-->
											
											<!--end::View more-->
										</div>
										<!--end::Menu-->
										<!--end::Menu wrapper-->
									</div>
									<!--end::Quick links-->
									<!--begin::Chat-->
									<div class="d-flex align-items-center ms-1 ms-lg-2">
										<!--begin::Menu wrapper-->
										<div class="btn btn-icon w-30px h-30px w-md-40px h-md-40px position-relative" id="kt_drawer_chat_toggle">
											<!--begin::Svg Icon | path: /var/www/preview.keenthemes.com/keenthemes/craft/docs/core/html/src/media/icons/duotune/communication/com007.svg-->
											<span class="svg-icon svg-icon-2x svg-icon-white"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path opacity="0.3" d="M8 8C8 7.4 8.4 7 9 7H16V3C16 2.4 15.6 2 15 2H3C2.4 2 2 2.4 2 3V13C2 13.6 2.4 14 3 14H5V16.1C5 16.8 5.79999 17.1 6.29999 16.6L8 14.9V8Z" fill="currentColor"/>
											<path d="M22 8V18C22 18.6 21.6 19 21 19H19V21.1C19 21.8 18.2 22.1 17.7 21.6L15 18.9H9C8.4 18.9 8 18.5 8 17.9V7.90002C8 7.30002 8.4 6.90002 9 6.90002H21C21.6 7.00002 22 7.4 22 8ZM19 11C19 10.4 18.6 10 18 10H12C11.4 10 11 10.4 11 11C11 11.6 11.4 12 12 12H18C18.6 12 19 11.6 19 11ZM17 15C17 14.4 16.6 14 16 14H12C11.4 14 11 14.4 11 15C11 15.6 11.4 16 12 16H16C16.6 16 17 15.6 17 15Z" fill="currentColor"/>
											</svg>
											</span>
											<!--end::Svg Icon-->											
											<span class="bullet bullet-dot bg-success h-6px w-6px position-absolute translate-middle top-0 start-50 animation-blink"></span>
										</div>
										<!--end::Menu wrapper-->
									</div>
									<!--end::Chat-->
									<!--====================================================================헤더 알림 모달 ============================================================================-->
									<!--begin::Notifications-->
									<div class="d-flex align-items-center ms-1 ms-lg-2">
										<!--begin::Menu wrapper-->
										<div class="btn btn-icon w-30px h-30px w-md-40px h-md-40px"
											data-kt-menu-trigger="{default: 'click', lg: 'hover'}"
											data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
											<!--begin::Svg Icon | path: /var/www/preview.keenthemes.com/keenthemes/craft/docs/core/html/src/media/icons/duotune/general/gen007.svg-->
											<span class="svg-icon svg-icon-2x svg-icon-white">
												<svg width="24"	height="24" viewBox="0 0 24 24" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path opacity="0.3"
														d="M12 22C13.6569 22 15 20.6569 15 19C15 17.3431 13.6569 16 12 16C10.3431 16 9 17.3431 9 19C9 20.6569 10.3431 22 12 22Z"
														fill="currentColor" />
													<path
														d="M19 15V18C19 18.6 18.6 19 18 19H6C5.4 19 5 18.6 5 18V15C6.1 15 7 14.1 7 13V10C7 7.6 8.7 5.6 11 5.1V3C11 2.4 11.4 2 12 2C12.6 2 13 2.4 13 3V5.1C15.3 5.6 17 7.6 17 10V13C17 14.1 17.9 15 19 15ZM11 10C11 9.4 11.4 9 12 9C12.6 9 13 8.6 13 8C13 7.4 12.6 7 12 7C10.3 7 9 8.3 9 10C9 10.6 9.4 11 10 11C10.6 11 11 10.6 11 10Z"
														fill="currentColor" />
												</svg>
											</span>
											<!--end::Svg Icon-->

										</div>
										<!--begin::Menu-->
										<div class="menu menu-sub menu-sub-dropdown menu-column w-350px w-lg-375px"
											data-kt-menu="true" id="kt_menu_notifications">
											<!--begin::Heading-->
											<div class="d-flex flex-column bgi-no-repeat rounded-top"
												style="background-color: #C6DA52;">
												<!--begin::Title-->
												<h3 class="text-white fw-semibold px-9 mt-10 mb-6">Notifications

												</h3>
												<!--end::Title-->
												<!--begin::Tabs-->
												<ul class="nav nav-line-tabs nav-line-tabs-2x nav-stretch fw-semibold px-9 "
													style="display: flex; justify-content: space-between; ">
													<li class="nav-item">
														<a class="nav-link text-white opacity-75 opacity-state-100 pb-4 active"
															data-bs-toggle="tab"
															href="#kt_topbar_notifications_1">Alerts</a>
													</li>
													<li class="nav-item">
														<input type="button" value="전체삭제"
															style="color: white; background-color:#C6DA52; width: 70px; height: 30px; border: none;" />
													</li>

												</ul>
												<!--end::Tabs-->
											</div>
											<!--end::Heading-->
											<!--begin::Tab content-->
											<div class="tab-content">
												<!--begin::Tab panel-->
												<div class="tab-pane fade show active" id="kt_topbar_notifications_2"
													role="tabpanel">
													<!--begin::Items-->
													<div class="scroll-y mh-325px my-5 px-8" style="height: 500px;">
														<!--====================알림 리스트가 그려지는 시작 공간============================-->

														<!--begin::Item >>> 리스트 예시 -->
														<div class="d-flex flex-stack py-4">
															<!--begin::Section-->
															<div class="d-flex align-items-center">
																<!--begin::Title-->
																<div class="mb-0 me-2">
																	<a href="#"
																		class="fs-6 text-gray-800 text-hover-primary fw-bold">라면이
																		들어오는 일정</a>

																	<div class="text-gray-500 fs-7">오뚜기 라면 예정 13:00이니까
																		준비를 해야.....</div>
																</div>
																<!--end::Title-->
															</div>
															<!--end::Section-->
															<!--begin::Label-->
															<div class="mb-0 me-2">
																<span style="float: right; margin-bottom: 5px;"
																	class="badge badge-light fs-8">X</span><br>
																<span class="badge badge-light fs-8">YYYY.MM.DD.HH:mm</span>
																<!--end::Label-->
															</div>
														</div>
														<!--end::Item >>> 리스트 예시 끝-->


													</div>
													<!--end::Items-->

												</div>
												<!--end::Tab panel-->
												<!--================================================알림 모달창 끝=================================================================-->

											</div>
											<!--end::Tab content-->
										</div>
										<!--end::Menu-->
										<!--=========================================================================여기 까지 헤더 의 알림 모달??======================================================================================================-->
										<!--end::Menu wrapper-->
									</div>
									<!--end::Notifications-->
									<!--begin::User-->
									<div class="d-flex align-items-center ms-2 ms-lg-3" id="kt_header_user_menu_toggle">
										<!--begin::Menu wrapper-->
										<div class="cursor-pointer symbol symbol-35px symbol-lg-35px" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
											<img alt="Pic" src="resource/assets/media/profil/blank.png" />
										</div>
										<!--begin::User account menu-->
										<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-color fw-semibold py-4 fs-6 w-275px" data-kt-menu="true">
											<!--begin::Menu item-->
											<div class="menu-item px-3">
												<div class="menu-content d-flex align-items-center px-3">
													<!--begin::Avatar-->
													<div class="symbol symbol-50px me-5">
														<!--================================메인 프로필 이미지 경로 고쳐 주세요================================================-->
														<img alt="Logo" src="resource/assets/media/profil/blank.png" />
													</div>
													<!--end::Avatar-->
													<!--begin::Username 유저의 이름과 소속-->
													<!--================================유저 모달창 이름과 소속 들어갈 부분================================================-->
													<div class="d-flex flex-column">
														<div class="fw-bold d-flex align-items-center fs-5">곽두팔 
														</div>
														<a href="#" class="fw-semibold text-muted text-hover-primary fs-7">매장관리팀(팀장)</a>
													</div>
													<!--end::Username-->
												</div>
											</div>
											<!--end::Menu item-->
											<!--begin::Menu separator-->
											<div class="separator my-2"></div>
											<!--end::Menu separator-->											
											<!--begin::Menu item-->
											<div class="menu-item px-5">
												<a href="authentication/sign-in/basic.html" class="menu-link px-5">Log Out</a>
											</div>
											<!--end::Menu item-->
										</div>
										<!--end::User account menu-->
										<!--end::Menu wrapper-->
									</div>
									<!--end::User -->
								</div>
								<!--end::Toolbar wrapper-->
							</div>
							<!--end::Topbar-->
						</div>
						<!--end::Container-->
					</div>
				</div>
					<!--end::Header-->
				
					</div>
					<!--end::Footer-->
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<!--end::Root-->
		<!--begin::Scrolltop-->
		<div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
			<i class="ki-duotone ki-arrow-up">
				<span class="path1"></span>
				<span class="path2"></span>
			</i>
		</div>
		<!--end::Scrolltop-->
								
		<!--begin::Javascript-->
		<script>var hostUrl = "resource/assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		
		
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>