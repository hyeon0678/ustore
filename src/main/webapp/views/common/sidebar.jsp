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
<!-- 		<link rel="canonical" href="https://preview.keenthemes.com/craft" />
		<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
		begin::Fonts(mandatory for all pages)
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		end::Fonts
		begin::Vendor Stylesheets(used for this page only)
		<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		end::Vendor Stylesheets
		begin::Global Stylesheets Bundle(mandatory for all pages)
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" /> -->
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
						<a href="index.html">
							<img alt="Logo" src="resource/assets/media/logos/mainLogo.svg" class="max-h-50px logo-default theme-light-show" />
							<img alt="Logo" src="resource/assets/media/logos/mainLogo.svg" class="max-h-50px logo-default theme-dark-show" />
							<img alt="Logo" src="resource/assets/media/logos/mainLogo.svg" class="max-h-50px logo-minimize" />
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
								<!--begin:Menu item(==============================프로필 페이지 링크============================)-->
								<div class="menu-item">
									<!--begin:Menu link-->
									<!--====================프로필 페이지 링크 달기===== 활성화 코드>> class="menu-link active"=========================-->
									<a class="menu-link" href="/employee/home">
										<span class="menu-icon">
											<img src="resource/assets/media/icon/side_home.svg" class="ki-duotone ki-calendar-8 fs-2 " style="opacity:.3"/>
										</span>
										<span class="menu-title">HOME</span>
									</a>
									<!--end:Menu link-->
								</div>
								<!--end:Menu item-->
								<!--begin:Menu item /div data-kt-menu-trigger="click" class="menu-item menu-accordion"// div -->
								
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<img src="resource/assets/media/icon/side_approval.svg" class="ki-duotone ki-element-11 fs-2" style="opacity:.3" />
										</span>
										<span class="menu-title">전자결재</span>
										<span class="menu-arrow"></span>
									</span>
									<!--end:Menu link-->
									<!--begin:Menu sub-->
									<div class="menu-sub menu-sub-accordion">
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<!--// class="menu-link active" // 클래스 이름을 바꿔주면 활성화 된다-->
											<a class="menu-link" href="/approval/newapproval">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">새결재진행</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item--> 
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/approval/approvalreq">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">결재요청함</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/approval/myapproval">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">내결재문서</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/approval/tempapproval">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">임시저장함</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/approval/teamapproval">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">부서문서함</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->								
									</div>
									<!--end:Menu sub-->
								</div>
								<!--end:Menu item-->
								<!--begin:Menu item-->
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<img src="resource/assets/media/icon/side_mail.svg" class="ki-duotone ki-gift fs-2" style="opacity:.3"/>
										</span>
										<span class="menu-title">메일</span>
										<span class="menu-arrow"></span>
									</span>
									<!--end:Menu link-->
									<!--begin:Menu sub-->
									<div class="menu-sub menu-sub-accordion">
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="mail/home">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">보낸메일함</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="mail/out">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">받은메일함</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="mail/del">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">휴지통</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
									</div>
									<!--end:Menu sub-->
								</div>
								<!--end:Menu item-->
								<!--begin:Menu item-->
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<img src="resource/assets/media/icon/side_board.svg" class="ki-duotone ki-user fs-2" style="opacity:.3"/>
										</span>
										<span class="menu-title">커뮤니티</span>
										<span class="menu-arrow"></span>
									</span>
									<!--end:Menu link-->
									<!--begin:Menu sub-->
									<div class="menu-sub menu-sub-accordion">											
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/adboard/list">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">공지사항</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
											
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/anboard/list">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">익명게시판</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
									</div>
									<!--end:Menu sub-->
								</div>
								<!--end:Menu item-->
								<!--begin:Menu item-->
								<div class="menu-item">
									<!--begin:Menu link-->
									<a class="menu-link" href="/chat">
										<span class="menu-icon">
											<img src="resource/assets/media/icon/side_chat.svg" class="ki-duotone ki-fingerprint-scanning fs-2" style="opacity:.3"/>
										</span>
										<span class="menu-title">메신저</span>
									</a>
									<!--end:Menu link-->
								</div>
								<!--end:Menu item-->
								<!--begin:Menu item-->
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<img src="resource/assets/media/icon/side_RM.svg" class="ki-duotone ki-user fs-2" style="opacity:.3"/>
										</span>
										<span class="menu-title">자원관리</span>
										<span class="menu-arrow"></span>
									</span>
									<!--end:Menu link-->
									<!--begin:Menu sub-->
									<div class="menu-sub menu-sub-accordion">											
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="#.jsp">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">회의실</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
											
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="#.jsp">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">물류장비</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
									</div>
									<!--end:Menu sub-->
								</div>
								<!--end:Menu item-->
								<!--begin:Menu item-->
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<img src="resource/assets/media/icon/side_products.svg" class="ki-duotone ki-gift fs-2" style="opacity:.3"/>
										</span>
										<span class="menu-title">재고/발주관리</span>
										<span class="menu-arrow"></span>
									</span>
									<!--end:Menu link-->
									<!--begin:Menu sub-->
									<div class="menu-sub menu-sub-accordion">
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/stock/stockmanagement/list">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">재고관리</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/order/list">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">발주관리</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/stock/incoming/list">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">입고관리</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
									</div>
									<!--end:Menu sub-->
								</div>
								<!--end:Menu item-->
								<!--begin:Menu item-->
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<img src="resource/assets/media/icon/side_employee.svg" class="ki-duotone ki-user fs-2" style="opacity:.3"/>
										</span>
										<span class="menu-title">인사관리</span>
										<span class="menu-arrow"></span>
									</span>
									<!--end:Menu link-->
									<!--begin:Menu sub-->
									<div class="menu-sub menu-sub-accordion">											
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="#.jsp">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">인사관리</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
											
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/employee/registration">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">직원등록</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
									</div>
									<!--end:Menu sub-->
								</div>
								<!--end:Menu item-->
								<!--begin:Menu item-->
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<img src="resource/assets/media/icon/side_muney.svg" class="ki-duotone ki-user fs-2" style="opacity:.3"/>
										</span>
										<span class="menu-title">회계관리</span>
										<span class="menu-arrow"></span>
									</span>
									<!--end:Menu link-->
									<!--begin:Menu sub-->
									<div class="menu-sub menu-sub-accordion">											
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="/accountingdashboard">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">DASHBOARD</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
											
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="#.jsp">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">급여관리</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
									</div>
									<!--end:Menu sub-->
								</div>
								<!--end:Menu item-->
								<!--begin:Menu item-->
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<!--begin:Menu link-->
									<span class="menu-link">
										<span class="menu-icon">
											<img src="resource/assets/media/icon/side_customer.svg" class="ki-duotone ki-gift fs-2" style="opacity:.3"/>										</span>
										<span class="menu-title">멤버쉽</span>
										<span class="menu-arrow"></span>
									</span>
									<!--end:Menu link-->
									<!--begin:Menu sub-->
									<div class="menu-sub menu-sub-accordion">
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="customer/home">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">회원관리</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="customer/businessperson">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">사업자멤버쉽</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
										<!--begin:Menu item-->
										<div class="menu-item">
											<!--begin:Menu link-->
											<a class="menu-link" href="customer/general">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">일반멤버쉽</span>
											</a>
											<!--end:Menu link-->
										</div>
										<!--end:Menu item-->	
									</div>
									<!--end:Menu sub-->
								</div>
								<!--end:Menu item-->
							</div>
						</div>
						<!--end::Menu-->
					</div>
					<!--end::Aside menu-->
					<!--begin::Footer-->
					<div class="aside-footer flex-column-auto pb-5 d-none" id="kt_aside_footer">
						<a href="index.html" class="btn btn-light-primary w-100">Button</a>
					</div>
					<!--end::Footer-->
				</div>
				<!--end::Aside-->
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
<!-- 		<script>var hostUrl = "resource/assets/";</script>
		begin::Global Javascript Bundle(mandatory for all pages)
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script> -->
		<!--end::Global Javascript Bundle-->
		
		
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>