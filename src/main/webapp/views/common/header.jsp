 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
<style>
    .read-alarm:hover {
    	cursor: pointer;
    }
</style>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
<<<<<<< HEAD
	<body>
		<!--begin::Header-->
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
		</sec:authorize>
					<div style="height: 90; background-color: #255000;">
					<div id="kt_header" class="header" data-kt-sticky="true" data-kt-sticky-name="header" data-kt-sticky-offset="{default: '200px', lg: '300px'}">
						<!--begin::Container-->
						<div class="container-fluid d-flex align-items-stretch justify-content-between" style="background-color: #255000">
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
							<div class="d-flex align-items-stretch justify-content-between flex-lg-grow-1" style="background-color: #255000">
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
											<span class="chat-alarm bullet bullet-dot bg-success h-6px w-6px position-absolute translate-middle top-0 start-50 animation-blink" style="visibility: hidden;"></span>
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
														<input type="button" value="전체삭제" id="read-all"
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
													<div class="scroll-y mh-325px my-5 px-8" style="height: 500px;" id="alarm-box">
														
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
														<div class="fw-bold d-flex align-items-center fs-5">${principal.name} 
														</div>
														<a href="#" class="fw-semibold text-muted text-hover-primary fs-7">${principal.department}(${principal.position})</a>
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
												<a href="/logout" class="menu-link px-5">Log Out</a>
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
=======
<body>
	<!--begin::Header-->
	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="principal"/>
	</sec:authorize>
	<div style="height: 90; background-color: #255000;">
		<div id="kt_header" class="header" data-kt-sticky="true"
			data-kt-sticky-name="header"
			data-kt-sticky-offset="{default: '200px', lg: '300px'}">
			<!--begin::Container-->
			<div
				class="container-fluid d-flex align-items-stretch justify-content-between">
				<!--begin::Logo bar-->
				<div class="d-flex align-items-center flex-grow-1 flex-lg-grow-0">
					<!--begin::Aside Toggle-->
					<div class="d-flex align-items-center d-lg-none">
						<div class="btn btn-icon btn-active-color-primary ms-n2 me-1"
							id="kt_aside_toggle">
							<i class="ki-duotone ki-abstract-14 fs-1"> <span
								class="path1"></span> <span class="path2"></span>
							</i>
>>>>>>> origin/main
						</div>
					</div>
					<!--end::Aside Toggle-->
					<!--begin::Aside toggler-->

					<!--end::Aside toggler-->
				</div>
				<!--end::Logo bar-->
				<!--begin::Topbar-->
				<div
					class="d-flex align-items-stretch justify-content-between flex-lg-grow-1">
					<!--begin::Search-->
					<div class="d-flex align-items-stretch me-1">
						<!--begin::Search-->
						<div id="kt_header_search"
							class="header-search d-flex align-items-center w-100 w-lg-300px"
							data-kt-search-keypress="true" data-kt-search-min-length="2"
							data-kt-search-enter="enter" data-kt-search-layout="menu"
							data-kt-search-responsive="lg" data-kt-menu-trigger="auto"
							data-kt-menu-permanent="true"
							data-kt-menu-placement="bottom-start">
							<!--begin::Tablet and mobile search toggle-->
							<div data-kt-search-element="toggle"
								class="search-toggle-mobile d-flex d-lg-none align-items-center">
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
							<div
								class="menu menu-sub menu-sub-dropdown menu-column w-250px w-lg-325px"
								data-kt-menu="true">
								<!--begin::Heading-->
								<div
									class="d-flex flex-column flex-center bgi-no-repeat rounded-top px-9 py-10"
									style="background-image: url('resource/assets/media/misc/menu-header-bg.jpg')">
									<!--begin::Title-->
									<h3 class="text-white fw-semibold mb-3">Quick Links</h3>
									<!--end::Title-->
									<!--begin::Status-->
									<span class="badge bg-primary text-inverse-primary py-2 px-3">25
										pending tasks</span>
									<!--end::Status-->
								</div>
								<!--end::Heading-->
								<!--begin:Nav-->
								<div class="row g-0"></div>
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
							<div
								class="btn btn-icon w-30px h-30px w-md-40px h-md-40px position-relative"
								id="kt_drawer_chat_toggle">
								<!--begin::Svg Icon | path: /var/www/preview.keenthemes.com/keenthemes/craft/docs/core/html/src/media/icons/duotune/communication/com007.svg-->
								<span class="svg-icon svg-icon-2x svg-icon-white chat-icon"><svg
										width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
							<path opacity="0.3"
											d="M8 8C8 7.4 8.4 7 9 7H16V3C16 2.4 15.6 2 15 2H3C2.4 2 2 2.4 2 3V13C2 13.6 2.4 14 3 14H5V16.1C5 16.8 5.79999 17.1 6.29999 16.6L8 14.9V8Z"
											fill="currentColor" />
							<path
											d="M22 8V18C22 18.6 21.6 19 21 19H19V21.1C19 21.8 18.2 22.1 17.7 21.6L15 18.9H9C8.4 18.9 8 18.5 8 17.9V7.90002C8 7.30002 8.4 6.90002 9 6.90002H21C21.6 7.00002 22 7.4 22 8ZM19 11C19 10.4 18.6 10 18 10H12C11.4 10 11 10.4 11 11C11 11.6 11.4 12 12 12H18C18.6 12 19 11.6 19 11ZM17 15C17 14.4 16.6 14 16 14H12C11.4 14 11 14.4 11 15C11 15.6 11.4 16 12 16H16C16.6 16 17 15.6 17 15Z"
											fill="currentColor" />
							</svg> </span>
								<!--end::Svg Icon-->
								<span
									class="chat-alarm bullet bullet-dot bg-success h-6px w-6px position-absolute translate-middle top-0 start-50 animation-blink"
									style="visibility: hidden;"></span>
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
								<span class="svg-icon svg-icon-2x svg-icon-white"> <svg
										width="24" height="24" viewBox="0 0 24 24" fill="none"
										class="alarm-icon" xmlns="http://www.w3.org/2000/svg">
									<path opacity="0.3"
											d="M12 22C13.6569 22 15 20.6569 15 19C15 17.3431 13.6569 16 12 16C10.3431 16 9 17.3431 9 19C9 20.6569 10.3431 22 12 22Z"
											fill="currentColor" />
									<path
											d="M19 15V18C19 18.6 18.6 19 18 19H6C5.4 19 5 18.6 5 18V15C6.1 15 7 14.1 7 13V10C7 7.6 8.7 5.6 11 5.1V3C11 2.4 11.4 2 12 2C12.6 2 13 2.4 13 3V5.1C15.3 5.6 17 7.6 17 10V13C17 14.1 17.9 15 19 15ZM11 10C11 9.4 11.4 9 12 9C12.6 9 13 8.6 13 8C13 7.4 12.6 7 12 7C10.3 7 9 8.3 9 10C9 10.6 9.4 11 10 11C10.6 11 11 10.6 11 10Z"
											fill="currentColor" />
								</svg> <span
									class="alarm bullet bullet-dot bg-success h-6px w-6px position-absolute translate-middle top-20 animation-blink"
									style="visibility: hidden;"></span>
								</span>
								<!--end::Svg Icon-->

							</div>
							<!--begin::Menu -->
							<div
								class="menu menu-sub menu-sub-dropdown menu-column w-350px w-lg-375px"
								data-kt-menu="true" id="kt_menu_notifications">
								<!--begin::Heading-->
								<div class="d-flex flex-column bgi-no-repeat rounded-top"
									style="background-color: #C6DA52;">
									<!--begin::Title-->
									<h3 class="text-white fw-semibold px-9 mt-10 mb-6">Notifications

									</h3>
									<!--end::Title-->
									<!--begin::Tabs-->
									<ul
										class="nav nav-line-tabs nav-line-tabs-2x nav-stretch fw-semibold px-9 "
										style="display: flex; justify-content: space-between;">
										<li class="nav-item"><a
											class="nav-link text-white opacity-75 opacity-state-100 pb-4 active"
											data-bs-toggle="tab" href="#kt_topbar_notifications_1">Alerts</a>
										</li>
										<li class="nav-item"><input type="button" value="전체삭제"
											id="read-all"
											style="color: white; background-color: #C6DA52; width: 70px; height: 30px; border: none;" />
										</li>

									</ul>
									<!--end::Tabs-->
								</div>
								<!--end::Heading-->
								<!--begin::Tab content-->
								<div class="tab-content">
									<!--begin::Tab panel-->
									<div class="tab-pane fade show active"
										id="kt_topbar_notifications_2" role="tabpanel">
										<!--begin::Items-->
										<div class="scroll-y mh-325px my-5 px-8" id="alarm-box"
											style="height: 500px;"></div>
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
						<div class="d-flex align-items-center ms-2 ms-lg-3"
							id="kt_header_user_menu_toggle">
							<!--begin::Menu wrapper-->
							<div class="cursor-pointer symbol symbol-35px symbol-lg-35px"
								data-kt-menu-trigger="{default: 'click', lg: 'hover'}"
								data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
								<img alt="Pic" src="resource/assets/media/profil/blank.png" />
							</div>
							<!--begin::User account menu-->
							<div
								class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-color fw-semibold py-4 fs-6 w-275px"
								data-kt-menu="true">
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
											<div class="fw-bold d-flex align-items-center fs-5">${principal.name}
											</div>
											<a class="fw-semibold text-muted text-hover-primary fs-7">
												${principal.department}(${principal.position})
											</a>
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
									<a href="/logout" class="menu-link px-5">Log Out</a>
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
<script>var hostUrl = "resource/assets/";</script>
<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
<script src="resource/assets/js/scripts.bundle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
</body>
<script type="text/javascript">
	let socket = null;
    let stompClient = null;
    let user = '${principal.username}'
   	let alarmMouseover = false;
    
    function headerOnReady(){
   		socket = new SockJS('http://localhost:80/ws');
   		console.log('user : '+user);
	    stompClient = Stomp.over(socket);
	    stompClient.connect({}, function(frame){
	    	console.log("webSocket is connected");
	    	stompClient.subscribe('/topic/'+user, function (message) {
	    		console.log('-------------------');
	    		alarmReceived(message);
	    	});
	    	console.log(window.location.pathname);
	    	if(window.location.pathname == '/chat'){
	    		stompClient.subscribe('/topic/chatRoom', function(){
					callChatRoomList();
				})	
	    	}
	    }, onError);
   	}
    
    function onError(error){
		alert('서버와 연결할 수 없습니다. 다시 시도해 주세요');
		console.log(error);
	}
	
    function alarmReceived(payload){
		var message = payload.body;
		if(message=='ALARMEXIST'){
			$('.alarm').css({"visibility":"visible"})
			console.log('alarm'+message);
		}else if(message=='CHATEXIST'){
			$('.chat-alarm').css({"visibility":"visible"})
			console.log('alarm'+message);
		}else if(message=='ALARMNONE'){
			$('.alarm').css({"visibility":"hidden"})
			console.log('alarm'+message);
		}else if(message=='CHATNONE'){
			$('.chat-alarm').css({"visibility":"hidden"})			
		}
			
	}
    
	$('#read-all').on('click', function(){
		$.ajax({
			data:{},
			url:'/alarm/delete-all',
			dataType:'JSON',
			success:function(){
				$('#alarm-box').empty();
			},error:function(error){
				console.log(error);
			}
		})
	})
	
	$('.alarm-icon').on('mouseenter',function(){
		alarmMouseover = true
		if(alarmMouseover == true){
			$.ajax({
				type:'GET',
				url:'/alarm/list.ajax',
				data:{},
				dataType:'JSON',
				success:function(data){
					console.log('alarm list call success');
					drawAlarmList(data.list);
				},error:function(error){
					console.log(error);
				}
			});
		}
	})
	
	$('.alarm-icon').on('mouseout',function(){
		alarmMouseover = false;
	})
	
	function drawAlarmList(alarmList){
		content ='';
		$('#alarm-box').empty();
		for(let list of alarmList){
			content+='<div class="d-flex flex-stack py-4 alarm-elem-div">'
			content+='<div class="d-flex align-items-center"><div class="mb-0 me-2">'
			content+='<a href=+'+list.url+'+class="fs-6 text-gray-800 text-hover-primary fw-bold">'
			content+=list.alarmSubject
			content+='</a><div class="text-gray-500 fs-7">'
			content+=list.alarmContent
			content+='</div></div></div><div class="mb-0 me-2">'
			content+='<span style="float: right; margin-bottom : 5px;"class="read-alarm badge badge-light fs-8 nav-item">X</span><p style="display:none">'
			content+=list.alarmIdx
			content+='</p><br><span class="badge badge-light fs-8">'
			let date = getCurrentTime(list.alarmDatetime);
			content+=date;
			content+='</span></div></div>'			
		}
		
		$('#alarm-box').append(content);
		readAlarm();
	}
	
	function getCurrentTime(timestamp){
		var date = new Date(timestamp);
		let chatDate = moment(date).format('YY-MM-DD HH:mm');
	    return chatDate;
	}
	
	function readAlarm(){
		console.log('alarm!!')
		$('.read-alarm').on('click', function(){
			let deleteElem = $(this).next().html();
			
			$.ajax({
				data:{},
				url:'/alarm/delete/'+deleteElem,
				dataType:'JSON',
				success:function(){
					console.log('readAlarm success')
					$(this).closest('div.alarm-elem-div').remove();	
				},error:function(error){
					console.log(error);
				}
			});
		});    	
    }
	$('.chat-icon').on('click', function(){
		location.href='/chat'
	});
</script>
<script>
	function SuccessModal(message) {
	    Swal.fire({
	        text: message,
	        icon: 'success',
	        buttonsStyling: false,
	        confirmButtonText: '확인',
	        customClass: {
	            confirmButton: 'btn btn-primary'
	        }
	    })
	}

</script>
<script>
	function FalseModal(message) {
		Swal.fire({
            text: message,
            icon: 'error',
            buttonsStyling: false,
            confirmButtonText: '확인',
            customClass: {
                confirmButton: 'btn btn-primary'
            }
        });
	}

</script>

<script>
	function InfoModal(message) {
		Swal.fire({
            text: message,
            icon: 'info',
            buttonsStyling: false,
            confirmButtonText: '확인',
            customClass: {
                confirmButton: 'btn btn-primary'
            }
        });
	}

</script>
	
</html>