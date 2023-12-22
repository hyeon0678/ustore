<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
		<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/plugins/custom/vis-timeline/vis-timeline.bundle.css" rel="stylesheet" type="text/css" />
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
				<!--begin::Aside-->
				<div id="kt_aside" class="aside aside-default aside-hoverable" data-kt-drawer="true" data-kt-drawer-name="aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_aside_toggle">
					<!--begin::Brand-->
					<div class="aside-logo flex-column-auto px-10 pt-9 pb-5" id="kt_aside_logo">
						<!--begin::Logo-->
						<a href="index.go">
							<img alt="Logo" src="resource/assets/media/logos/logo-default.svg" class="max-h-50px logo-default theme-light-show" />
							<img alt="Logo" src="resource/assets/media/logos/logo-default-dark.svg" class="max-h-50px logo-default theme-dark-show" />
							<img alt="Logo" src="resource/assets/media/logos/logo-minimize.svg" class="max-h-50px logo-minimize" />
						</a>
						<!--end::Logo-->
					</div>
					<!--end::Brand-->
					<!--begin::Aside menu-->
					<div class="aside-menu flex-column-fluid ps-3 pe-1">
						<!--begin::Aside Menu-->
						<!--begin::Menu-->
						<div class="menu menu-sub-indention menu-column menu-rounded menu-title-gray-600 menu-icon-gray-500 menu-active-bg menu-state-primary menu-arrow-gray-500 fw-semibold fs-6 my-5 mt-lg-2 mb-lg-0" id="kt_aside_menu" data-kt-menu="true">
							<div class="hover-scroll-y mx-4" id="kt_aside_menu_wrapper" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-height="auto" data-kt-scroll-wrappers="#kt_aside_menu" data-kt-scroll-offset="20px" data-kt-scroll-dependencies="#kt_aside_logo, #kt_aside_footer">
								
								
								<div class="menu-item">
									<a class="menu-link active" href="profile/profile_correction.go">
										<span class="menu-icon">
											<i class="ki-duotone ki-home fs-2">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</span>
										<span class="menu-title">home</span>
									</a>
								</div>
								
								
								
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<i class="ki-duotone ki-tablet-text-down fs-2">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</span>
										<span class="menu-title">전자결제</span>
										<span class="menu-arrow"></span>
									</span>
									<div class="menu-sub menu-sub-accordion">
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">새결재진행</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">결재요청함</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">내결재문서</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">임시저장함</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">부서문서함</span>
											</a>
										</div>
									</div>
								</div>
								
								
								
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<i class="ki-duotone ki-sms fs-2">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</span>
										<span class="menu-title">메일</span>
										<span class="menu-arrow"></span>
									</span>
									<div class="menu-sub menu-sub-accordion">
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">받은 메일함</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">보낸 메일함</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">휴지통</span>
											</a>
										</div>
									</div>
								</div>
								
								
								
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<i class="ki-duotone ki-people fs-2">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</span>
										<span class="menu-title">커뮤니티</span>
										<span class="menu-arrow"></span>
									</span>
									<div class="menu-sub menu-sub-accordion">
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">공지사항</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">익명 게시판</span>
											</a>
										</div>
										
									</div>
								</div>
								
								<div class="menu-item">
									<a class="menu-link" href="/#">
										<span class="menu-icon">
											<i class="ki-duotone ki-messages fs-2">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</span>
										<span class="menu-title">메신저</span>
									</a>
								</div>
								
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<i class="ki-duotone ki-key fs-2">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</span>
										<span class="menu-title">자원관리</span>
										<span class="menu-arrow"></span>
									</span>
									<div class="menu-sub menu-sub-accordion">
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">회의실</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">물류장비</span>
											</a>
										</div>
										
									</div>
								</div>
								
								
								
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<i class="ki-duotone ki-calculator fs-2">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</span>
										<span class="menu-title">재고/발주관리</span>
										<span class="menu-arrow"></span>
									</span>
									<div class="menu-sub menu-sub-accordion">
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">재고 관리</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">발주 관리</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">입고 관리</span>
											</a>
										</div>
										
									</div>
								</div>
								
								
								
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<i class="bi bi-diagram-3 fs-2x"></i>
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</span>
										<span class="menu-title">인사관리</span>
										<span class="menu-arrow"></span>
									</span>
									<div class="menu-sub menu-sub-accordion">
										
										<div class="menu-item">
											<a class="menu-link" href="management/personnel_management.go">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">인사관리</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="management/employee_registration.go">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">직원등록</span>
											</a>
										</div>
									</div>
								</div>
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<i class="ki-duotone ki-dollar fs-2">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</span>
										<span class="menu-title">회계관리</span>
										<span class="menu-arrow"></span>
									</span>
									<div class="menu-sub menu-sub-accordion">
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">DASHBOARD</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">급여 관리</span>
											</a>
										</div>
										
									</div>
								</div>
								
								
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<i class="ki-duotone ki-wallet fs-2">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</span>
										<span class="menu-title">멤버쉽</span>
										<span class="menu-arrow"></span>
									</span>
									<div class="menu-sub menu-sub-accordion">
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">회원관리</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">사업자 멤버쉽</span>
											</a>
										</div>
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">일반 멤버쉽</span>
											</a>
										</div>
										
									</div>
								</div>
								
								
								
								
								
							</div>
						</div>
						<!--end::Menu-->
					</div>
					<!--end::Aside menu-->
					<!--begin::Footer-->
					<div class="aside-footer flex-column-auto pb-5 d-none" id="kt_aside_footer">
						<a href="index.go" class="btn btn-light-primary w-100">Button</a>
					</div>
					<!--end::Footer-->
				</div>
				<!--end::Aside-->
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<!--begin::Header-->
					<div id="kt_header" class="header" data-kt-sticky="true" data-kt-sticky-name="header" data-kt-sticky-offset="{default: '200px', lg: '300px'}">
						<!--begin::Container-->
						<div class="container-fluid d-flex align-items-stretch justify-content-between">
							<!--begin::Logo bar-->
							
							<!--end::Logo bar-->
							<!--begin::Topbar-->
							<div class="d-flex align-items-stretch justify-content-between flex-lg-grow-1">
								<!--begin::Search-->
								<div class="d-flex align-items-stretch me-1">
									<!--begin::Search-->
									
									<!--end::Search-->
								</div>
								<!--end::Search-->
								<!--begin::Toolbar wrapper-->
								<div class="d-flex align-items-stretch flex-shrink-0" style="float: left">
									<!--begin::Activities-->
									
									<!--end::Activities-->
									<!--begin::Quick links-->
									
									<!--end::Quick links-->
									<!--begin::Chat-->
									<div class="d-flex align-items-center ms-1 ms-lg-2">
										<!--begin::Menu wrapper-->
										
										
										
										
										<div class="menu-item">
											<a class="menu-link" href="/#">
											<i class="ki-duotone ki-messages fs-2">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
											</a>
										</div>
										
								
								
										
										
										
										
										<!--end::Menu wrapper-->
									</div>
									<!--end::Chat-->
									<!--begin::Notifications-->
									<div class="d-flex align-items-center ms-1 ms-lg-2">
										<!--begin::Menu wrapper-->
										<div class="btn btn-icon btn-active-light-primary w-30px h-30px w-md-40px h-md-40px" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
											<i class="ki-duotone ki-element-11 fs-1">
												<span class="path1"></span>
												<span class="path2"></span>
												<span class="path3"></span>
												<span class="path4"></span>
											</i>
										</div>
										<!--begin::Menu-->
										<div class="menu menu-sub menu-sub-dropdown menu-column w-350px w-lg-375px" data-kt-menu="true" id="kt_menu_notifications">
											<!--begin::Heading-->
											<div class="d-flex flex-column bgi-no-repeat rounded-top" style="background-image:url('resource/assets/media/misc/menu-header-bg.jpg')">
												<!--begin::Title-->
												<h3 class="text-white fw-semibold px-9 mt-10 mb-6">Notifications 
												<span class="fs-8 opacity-75 ps-3">24 reports</span></h3>
												<!--end::Title-->
												<!--begin::Tabs-->
												<ul class="nav nav-line-tabs nav-line-tabs-2x nav-stretch fw-semibold px-9">
													<li class="nav-item">
														<a class="nav-link text-white opacity-75 opacity-state-100 pb-4 active" data-bs-toggle="tab" href="#kt_topbar_notifications_1">Alerts</a>
													</li>
													
												</ul>
												<!--end::Tabs-->
											</div>
											<!--end::Heading-->
											<!--begin::Tab content-->
											<div class="tab-content">
												<!--begin::Tab panel-->
												
												
												
												
												
												<div class="tab-pane fade show active" id="kt_topbar_notifications_1" role="tabpanel">
													<!--begin::Items-->
													<div class="scroll-y mh-325px my-5 px-8">
														<!--begin::Item-->
														<div class="d-flex flex-stack py-4">
															<!--begin::Section-->
															<div class="d-flex align-items-center">
																<!--begin::Symbol-->
																<div class="symbol symbol-35px me-4">
																	<span class="symbol-label bg-light-primary">
																		<i class="ki-duotone ki-abstract-28 fs-2 text-primary">
																			<span class="path1"></span>
																			<span class="path2"></span>
																		</i>
																	</span>
																</div>
																<!--end::Symbol-->
																<!--begin::Title-->
																<div class="mb-0 me-2">
																	<a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">Project Alice</a>
																	<div class="text-gray-500 fs-7">Phase 1 development</div>
																</div>
																<!--end::Title-->
															</div>
															<!--end::Section-->
															<!--begin::Label-->
															<span class="badge badge-light fs-8">1 hr</span>
															<!--end::Label-->
														</div>
														<!--end::Item-->
														<!--begin::Item-->
														<div class="d-flex flex-stack py-4">
															<!--begin::Section-->
															<div class="d-flex align-items-center">
																<!--begin::Symbol-->
																<div class="symbol symbol-35px me-4">
																	<span class="symbol-label bg-light-danger">
																		<i class="ki-duotone ki-information fs-2 text-danger">
																			<span class="path1"></span>
																			<span class="path2"></span>
																			<span class="path3"></span>
																		</i>
																	</span>
																</div>
																<!--end::Symbol-->
																<!--begin::Title-->
																<div class="mb-0 me-2">
																	<a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">HR Confidential</a>
																	<div class="text-gray-500 fs-7">Confidential staff documents</div>
																</div>
																<!--end::Title-->
															</div>
															<!--end::Section-->
															<!--begin::Label-->
															<span class="badge badge-light fs-8">2 hrs</span>
															<!--end::Label-->
														</div>
														<!--end::Item-->
														<!--begin::Item-->
														<div class="d-flex flex-stack py-4">
															<!--begin::Section-->
															<div class="d-flex align-items-center">
																<!--begin::Symbol-->
																<div class="symbol symbol-35px me-4">
																	<span class="symbol-label bg-light-warning">
																		<i class="ki-duotone ki-briefcase fs-2 text-warning">
																			<span class="path1"></span>
																			<span class="path2"></span>
																		</i>
																	</span>
																</div>
																<!--end::Symbol-->
																<!--begin::Title-->
																<div class="mb-0 me-2">
																	<a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">Company HR</a>
																	<div class="text-gray-500 fs-7">Corporeate staff profiles</div>
																</div>
																<!--end::Title-->
															</div>
															<!--end::Section-->
															<!--begin::Label-->
															<span class="badge badge-light fs-8">5 hrs</span>
															<!--end::Label-->
														</div>
														<!--end::Item-->
														<!--begin::Item-->
														<div class="d-flex flex-stack py-4">
															<!--begin::Section-->
															<div class="d-flex align-items-center">
																<!--begin::Symbol-->
																<div class="symbol symbol-35px me-4">
																	<span class="symbol-label bg-light-success">
																		<i class="ki-duotone ki-abstract-12 fs-2 text-success">
																			<span class="path1"></span>
																			<span class="path2"></span>
																		</i>
																	</span>
																</div>
																<!--end::Symbol-->
																<!--begin::Title-->
																<div class="mb-0 me-2">
																	<a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">Project Redux</a>
																	<div class="text-gray-500 fs-7">New frontend admin theme</div>
																</div>
																<!--end::Title-->
															</div>
															<!--end::Section-->
															<!--begin::Label-->
															<span class="badge badge-light fs-8">2 days</span>
															<!--end::Label-->
														</div>
														<!--end::Item-->
														<!--begin::Item-->
														<div class="d-flex flex-stack py-4">
															<!--begin::Section-->
															<div class="d-flex align-items-center">
																<!--begin::Symbol-->
																<div class="symbol symbol-35px me-4">
																	<span class="symbol-label bg-light-primary">
																		<i class="ki-duotone ki-colors-square fs-2 text-primary">
																			<span class="path1"></span>
																			<span class="path2"></span>
																			<span class="path3"></span>
																			<span class="path4"></span>
																		</i>
																	</span>
																</div>
																<!--end::Symbol-->
																<!--begin::Title-->
																<div class="mb-0 me-2">
																	<a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">Project Breafing</a>
																	<div class="text-gray-500 fs-7">Product launch status update</div>
																</div>
																<!--end::Title-->
															</div>
															<!--end::Section-->
															<!--begin::Label-->
															<span class="badge badge-light fs-8">21 Jan</span>
															<!--end::Label-->
														</div>
														<!--end::Item-->
														<!--begin::Item-->
														<div class="d-flex flex-stack py-4">
															<!--begin::Section-->
															<div class="d-flex align-items-center">
																<!--begin::Symbol-->
																<div class="symbol symbol-35px me-4">
																	<span class="symbol-label bg-light-info">
																		<i class="ki-duotone ki-picture fs-2 text-info"></i>
																	</span>
																</div>
																<!--end::Symbol-->
																<!--begin::Title-->
																<div class="mb-0 me-2">
																	<a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">Banner resource/Assets</a>
																	<div class="text-gray-500 fs-7">Collection of banner images</div>
																</div>
																<!--end::Title-->
															</div>
															<!--end::Section-->
															<!--begin::Label-->
															<span class="badge badge-light fs-8">21 Jan</span>
															<!--end::Label-->
														</div>
														<!--end::Item-->
														<!--begin::Item-->
														<div class="d-flex flex-stack py-4">
															<!--begin::Section-->
															<div class="d-flex align-items-center">
																<!--begin::Symbol-->
																<div class="symbol symbol-35px me-4">
																	<span class="symbol-label bg-light-warning">
																		<i class="ki-duotone ki-color-swatch fs-2 text-warning">
																			<span class="path1"></span>
																			<span class="path2"></span>
																			<span class="path3"></span>
																			<span class="path4"></span>
																			<span class="path5"></span>
																			<span class="path6"></span>
																			<span class="path7"></span>
																			<span class="path8"></span>
																			<span class="path9"></span>
																			<span class="path10"></span>
																			<span class="path11"></span>
																			<span class="path12"></span>
																			<span class="path13"></span>
																			<span class="path14"></span>
																			<span class="path15"></span>
																			<span class="path16"></span>
																			<span class="path17"></span>
																			<span class="path18"></span>
																			<span class="path19"></span>
																			<span class="path20"></span>
																			<span class="path21"></span>
																		</i>
																	</span>
																</div>
																<!--end::Symbol-->
																<!--begin::Title-->
																<div class="mb-0 me-2">
																	<a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">Icon resource/Assets</a>
																	<div class="text-gray-500 fs-7">Collection of SVG icons</div>
																</div>
																<!--end::Title-->
															</div>
															<!--end::Section-->
															<!--begin::Label-->
															<span class="badge badge-light fs-8">20 March</span>
															<!--end::Label-->
														</div>
														<!--end::Item-->
													</div>
													<!--end::Items-->
													<!--begin::View more-->
													<div class="py-3 text-center border-top">
														<a href="pages/user-profile/activity.go" class="btn btn-color-gray-600 btn-active-color-primary">View All 
														<i class="ki-duotone ki-arrow-right fs-5">
															<span class="path1"></span>
															<span class="path2"></span>
														</i></a>
													</div>
													<!--end::View more-->
												</div>
												<!--end::Tab panel-->
												<!--begin::Tab panel-->
												
												<!--end::Tab panel-->
												<!--begin::Tab panel-->
												
												<!--end::Tab panel-->
											</div>
											<!--end::Tab content-->
										</div>
										<!--end::Menu-->
										<!--end::Menu wrapper-->
									</div>
									
									<div class="d-flex align-items-center ms-2 ms-lg-3" id="kt_header_user_menu_toggle">
										<!--begin::Menu wrapper-->
										<div class="cursor-pointer symbol symbol-35px symbol-lg-35px" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
											<img alt="Pic" src="resource/assets/media/avatars/300-1.jpg" />
										</div>
										<!--begin::User account menu-->
										<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-color fw-semibold py-4 fs-6 w-275px" data-kt-menu="true">
											<!--begin::Menu item-->
											<div class="menu-item px-3">
												<div class="menu-content d-flex align-items-center px-3">
													<!--begin::Avatar-->
													<div class="symbol symbol-50px me-5">
														<img alt="Logo" src="resource/assets/media/avatars/300-1.jpg" />
													</div>
													<!--end::Avatar-->
													<!--begin::Username-->
													<div class="d-flex flex-column">
														<div class="fw-bold d-flex align-items-center fs-5">Max Smith 
														<span class="badge badge-light-success fw-bold fs-8 px-2 py-1 ms-2">Pro</span></div>
														<a href="/#" class="fw-semibold text-muted text-hover-primary fs-7">max@kt.com</a>
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
												<a href="account/overview.go" class="menu-link px-5">My Profile</a>
											</div>
											<!--end::Menu item-->
											<!--begin::Menu item-->
											
											<!--end::Menu item-->
											<!--begin::Menu item-->
											
											<!--end::Menu item-->
											<!--begin::Menu item-->
											
											<!--end::Menu item-->
											<!--begin::Menu separator-->
											
											<!--end::Menu separator-->
											<!--begin::Menu item-->
											
											<!--end::Menu item-->
											<!--begin::Menu item-->
											<div class="menu-item px-5 my-1">
												<a href="profile/profile_correction.go" class="menu-link px-5">Account Settings</a>
											</div>
											<!--end::Menu item-->
											<!--begin::Menu item-->
											<div class="menu-item px-5">
												<a href="authentication/sign-in/login.go" class="menu-link px-5">Sign Out</a>
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
					<!--end::Header-->
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content">
						<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">Profile Details
									<small class="text-muted fs-6 fw-normal ms-1"></small></h1>
									<!--end::Title-->
									<!--begin::Breadcrumb-->
									<ul class="breadcrumb fw-semibold fs-base my-1">
										<li class="breadcrumb-item text-muted">
											<a href="index.go" class="text-muted text-hover-primary">Home</a>
										</li>
										<li class="breadcrumb-item text-muted">Profile</li>
										<li class="breadcrumb-item text-gray-900">Profile Detaile</li>
									</ul>
									<!--end::Breadcrumb-->
								</div>
								<!--end::Info-->
								<!--begin::Actions-->
								
								<!--end::Actions-->
							</div>
						</div>
						<!--end::Toolbar-->
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl">
								<!-- <div class="card mb-5 mb-xl-10"> -->
											<!--begin::Card header-->
											<!-- <div class="card-header border-0 cursor-pointer" role="button" data-bs-toggle="collapse" data-bs-target="#kt_account_profile_details" aria-expanded="true" aria-controls="kt_account_profile_details"> -->
												<!--begin::Card title-->
												<!-- <div class="card-title m-0">-->
													<!-- <h3 class="fw-bold m-0">Profile Details</h3> -->
												<!-- </div> -->
												<!--end::Card title-->
											<!-- </div> -->
											<!--begin::Card header-->
											<!--begin::Content-->
											<div id="kt_account_settings_profile_details" class="collapse show">
												<!--begin::Form-->
												<form action="" method="post">
													
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">Avatar</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Image input-->
																<div class="image-input image-input-outline" data-kt-image-input="true" style="background-image: url('resource/assets/media/svg/avatars/blank.svg')">
																	<!--begin::Preview existing avatar-->
																	<div class="image-input-wrapper w-125px h-125px" style="background-image: url(resource/assets/media/avatars/300-1.jpg)"></div>
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
																<div class="form-text">Allowed file types: png, jpg, jpeg.</div>
																<!--end::Hint-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														
														
														
														<div class="row mb-6">
															<label class="col-lg-4 col-form-label required fw-semibold fs-6">이름</label>
															<div class="col-lg-8 fv-row">
																<input type="text" name="" class="form-control" placeholder="이름" value="김동동" />
															</div>
														</div>
														
														
														<div class="row mb-6">
															<label class="col-lg-4 col-form-label required fw-semibold fs-6">전화번호</label>
															<div class="col-lg-8 fv-row">
																<input type="tel" name="" class="form-control" placeholder="전화번호" value="010-1234-1234" oninput="oninputPhone(this)"/>
															</div>
														</div>
														
														
														
														
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label required fw-semibold fs-6">주소</label>
															<div class="col-lg-8 fv-row">
																<input type="button" onclick="findlocation()" class="btn btn-primary" id="kt_toolbar_primary_button" value="주소 찾기" style="float: right"/>
															</div>
															<!--end::Label-->
															<!--begin::Col-->
															
															<label class="col-lg-4 col-form-label fw-semibold fs-6"></label>
															<div class="col-lg-8 fv-row" style="float: right">
																<input type="text" class="form-control" placeholder="주소" id="roadaddress"/>
															</div>
															
															<label class="col-lg-4 col-form-label fw-semibold fs-6"></label>
															<div class="col-lg-8 fv-row" style="float: right;margin-top: 5px;">
																<input type="text" class="form-control" placeholder="상세 주소" id="detailAddress"/>
															</div>	
															
															<input type="text" class="form-control" placeholder="우편번호" hidden="true" id="post_num"/>
															<input type="text" class="form-control" placeholder="지번" hidden="true" id="jibunAddress"/>
															<span id="guide" style="color:#999;display:none"></span>
															<input type="text" class="form-control" placeholder="참고항목" id="extraAddress" hidden="true"/>
														</div>
														
								
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">비밀번호</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<input type="password" name="" class="form-control" placeholder="변경할 비밀번호" value="" />
															</div>
															<!--end::Col-->
														</div>
														
														<div class="row mb-6">
															<label class="col-lg-4 col-form-label fw-semibold fs-6">비밀번호 확인</label>
															
															<div class="col-lg-8 fv-row">
																<input type="password" name="" class="form-control" placeholder="비밀번호 확인" value="" />
															</div>
														</div>
														
													<div class="card-footer d-flex justify-content-end py-6 px-9">
														<button type="submit" class="btn btn-primary" id="kt_account_profile_details_submit">저장</button>
													</div>
												</form>
												
										</div>
								
								
							</div>
						</div>
						
						<!--end::Post-->
					</div>
					<!--end::Content-->
					
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		
		<!--end::Modal - Users Search-->
		<!--end::Modals-->
		<!--begin::Javascript-->
		<script>var hostUrl = "resource/assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<script src="resource/assets/plugins/custom/vis-timeline/vis-timeline.bundle.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/index.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/map.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/worldLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/continentsLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/usaLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/worldTimeZonesLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/worldTimeZoneAreasLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/percent.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/radar.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->
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
		<script src="resource/assets/js/custom/utilities/modals/create-app.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/users-search.js"></script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
									<script>
    								//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    								function findlocation() {
        								new daum.Postcode({
            								oncomplete: function(data) {
                								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                								// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                								var roadAddr = data.roadAddress; // 도로명 주소 변수
                								var extraRoadAddr = ''; // 참고 항목 변수

                								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
                								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                								if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    								extraRoadAddr += data.bname;
                								}
                								// 건물명이 있고, 공동주택일 경우 추가한다.
                								if(data.buildingName !== '' && data.apartment === 'Y'){
                   									extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                								}
                								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                								if(extraRoadAddr !== ''){
                    								extraRoadAddr = ' (' + extraRoadAddr + ')';
                								}

                								// 우편번호와 주소 정보를 해당 필드에 넣는다.
                								document.getElementById('post_num').value = data.zonecode;
                								document.getElementById("roadaddress").value = roadAddr;
                								document.getElementById("jibunAddress").value = data.jibunAddress;
                
                								// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                								if(roadAddr !== ''){
                    								document.getElementById("extraAddress").value = extraRoadAddr;
                								} else {
                    								document.getElementById("extraAddress").value = '';
                								}

                								var guideTextBox = document.getElementById("guide");
                								// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                								if(data.autoRoadAddress) {
                    								var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    								guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    								guideTextBox.style.display = 'block';
			
                								} else if(data.autoJibunAddress) {
                    								var expJibunAddr = data.autoJibunAddress;
                    								guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    								guideTextBox.style.display = 'block';
                								} else {
                    								guideTextBox.innerHTML = '';
                    								guideTextBox.style.display = 'none';
                								}
            								}
        								}).open();
    								}
									</script>
									
									<script>
														function oninputPhone(target) {
    														target.value = target.value
        													.replace(/[^0-9]/g, '')
        													.replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
														}
														</script>
	</body>
	<!--end::Body-->
</html>