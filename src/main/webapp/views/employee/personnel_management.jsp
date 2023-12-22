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
		<link href="/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<link href="/plugins/custom/jstree/jstree.bundle.css" rel="stylesheet" type="text/css" />
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
					
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content">
						
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl">
								<!--begin::Navbar-->
								<div class="card mb-5 mb-xl-10">
									<div class="card-body pt-9 pb-0">



										
								<!-- 작업 시작 공간-->
								<!--begin::Row-->
								<div class="row gy-5 g-xl-10">
									<!--begin::Col-->
									<div class="col-xl-4">
										<!--begin::List Widget 5-->
										<div class="card h-xl-100">
											<!--begin::Header-->
											<div class="card-header align-items-center border-0 mt-5">
												<h3 class="card-title align-items-start flex-column">
													<span class="fw-bolder text-gray-900 fs-3">조직도</span>
													<div class="d-flex mt-2">
														<input type="text" class="form-control form-control-solid" placeholder="이름 입력" style="width: 200px; height: 40px;">
            											<button type="button" class="btn btn-primary mx-2" data-bs-toggle="modal" data-bs-target="#kt_modal_1">
															부서관리
														</button>
													</div>
												</h3>
												<div class="card-toolbar">
													<!--begin::Menu-->
													</button>
												</div>
											</div>
											<!--end::Header-->
											<!--begin::Body-->
											<div class="card-body pt-1">
												
												<!-- js트리 그리는 공간 -->
												<div id="kt_docs_jstree_basic">
													<ul>
														<li>
															Root node 1
															<ul>
																<li data-jstree='{ "selected" : true }'>
																	<a href="javascript:;">
																		Initially selected </a>
																</li>
																<li data-jstree='{ "icon" : "ki-outline ki-geolocation text-success fs-4" }'>
																	custom icon URL
																</li>
																<li data-jstree='{ "opened" : true }'>
																	initially open
																	<ul>
																		<li data-jstree='{ "disabled" : true }'>
																			Disabled Node
																		</li>
																		<li data-jstree='{ "type" : "file" }'>
																			Another node
																		</li>
																	</ul>
																</li>
																<li data-jstree='{ "icon" : "ki-outline ki-message-text-2 text-danger fs-7" }'>
																	Custom icon class (bootstrap)
																</li>
															</ul>
														</li>
														<li data-jstree='{ "type" : "file" }'>
															<a href="http://www.keenthemes.com">
																Clickable link node </a>
														</li>
													</ul>
												</div>
												<!-- js트리 끝나는 곳-->

											</div>
											<!--end::Body-->
										</div>
										<!--end::List Widget 5-->
									</div>
									<!--end::Col-->
									<!--begin::Col-->
									<div class="col-xl-8">
										<!--begin::Table Widget 5-->
										<div class="card card-flush h-xl-100">
											<!--begin::Card header-->
											<div class="card-header pt-7">
												<!--begin::Details-->
										<div class="d-flex flex-wrap flex-sm-nowrap mb-3">
											<!--begin: Pic-->
											<div class="me-7 mb-4">
												<!-- 프로필 사진 -->
												<div class="symbol symbol-100px symbol-lg-160px symbol-fixed position-relative">
													<img src="/media/avatars/300-1.jpg" alt="image" />
												</div>
											</div>
											<!--end::Pic-->
											<!--begin::Info-->
											<div class="flex-grow-1">
												<!--begin::Title-->
												<div class="d-flex justify-content-between align-items-start flex-wrap mb-2">
													<!--begin::User-->
													<div class="d-flex flex-column">
														<!--begin::Name-->
														<div class="d-flex align-items-center mb-2">
															<p class="text-gray-900 fs-2 fw-bold me-1">이름</p>
															<p class="fw-bold fs-3 text-gray-800 mx-20">김동동</p>
														</div>
														<!--end::Name-->
														<!--begin::Info-->
														<div class="d-flex align-items-center mb-2">
															<p class="text-gray-900 fs-2 fw-bold me-1">부서</p>
															<p class="fw-bold fs-3 text-gray-800 mx-20">인사팀</p>
														</div>
														<div class="d-flex align-items-center mb-2">
															<p class="text-gray-900 fs-2 fw-bold me-1">직책</p>
															<p class="fw-bold fs-3 text-gray-800 mx-20">팀장</p>
														</div>
														<div class="d-flex align-items-center mb-2">
															<p class="text-gray-900 fs-2 fw-bold me-1">이메일</p>
															<p class="fw-bold fs-3 text-gray-800 mx-15">qqqq@test</p>
														</div>
														<!--end::Info-->
													</div>
													<!--end::User-->
													<!--begin::Actions-->
													<div class="d-flex my-4 mx-20">
														<a href="#" class="btn btn-sm btn-primary me-2">프로필 수정</a>
													</div>
													<!--end::Actions-->
												</div>
											</div>
											<!--end::Info-->
										</div>
										<!--end::Details-->
											</div>
											<!--end::Card header-->
											<!--begin::Card body-->
											<div class="card-body">
												<!--begin::details View-->
												<!-- 프로필 추가 정보-->
												<div class="card mb-5 mb-xl-10" id="kt_profile_details_view">
													<!--begin::Card header-->
													<div class="card-header cursor-pointer">
														<!--begin::Card title-->
														<div class="card-title m-0">
															<h3 class="fw-bold m-0">프로필 상세정보</h3>
														</div>
													</div>
													<!--begin::Card header-->
													<!--begin::Card body-->
													<div class="card-body p-9">
														<!--begin::Row-->
														<div class="row mb-7">
															<!--begin::Label-->
															<label class="col-lg-4 fw-semibold text-muted">사원번호</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fw-bold fs-6 text-gray-800">20230001</span>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Row-->
														<!--begin::Input group-->
														<div class="row mb-7">
															<!--begin::Label-->
															<label class="col-lg-4 fw-semibold text-muted">내선번호</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<span class="fw-bold fs-6 text-gray-800">0000</span>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-7">
															<!--begin::Label-->
															<label class="col-lg-4 fw-semibold text-muted">비상 연락망
															</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 d-flex align-items-center">
																<span class="fw-bold fs-6 text-gray-800">044 3276 454 935</span>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-7">
															<!--begin::Label-->
															<label class="col-lg-4 fw-semibold text-muted">개인 번호</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fw-bold fs-6 text-gray-800">010-0000-0000</span>
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
																<span class="fw-bold fs-6 text-gray-800">2023-12-19</span>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-7">
															<!--begin::Label-->
															<label class="col-lg-4 fw-semibold text-muted">연차 갯수</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fw-bold fs-6 text-gray-800">6개</span>
															</div>
															<!--end::Col-->
														</div>
															<!--end::Input group-->
															<div class="row mb-10">
																<!--begin::Label-->
																<label class="col-lg-4 fw-semibold text-muted">주소</label>
																<!--begin::Label-->
																<!--begin::Label-->
																<div class="col-lg-8">
																	<span class="fw-bold fs-6 text-gray-800">서울 금천구 ~~ 도로명 주소</span>
																	<br/>
																	<span class="fw-bold fs-6 text-gray-800">타워1층 ~~ 상세 주소</span>
																</div>
																<!--begin::Label-->
															</div>
															<!--end::Input group-->
															<!--begin::Input group-->
															<div class="row mb-10">
																<!--begin::Label-->
																<label class="col-lg-4 fw-semibold text-muted">최종 학력</label>
																<!--begin::Label-->
																<!--begin::Label-->
																<div class="col-lg-8">
																	<span class="fw-bold fs-6 text-gray-800">대학교 (4년)졸업</span>
																	<br/>
																	<span class="fw-bold fs-6 text-gray-800">구디대학교</span>
																	<br/>
																	<span class="fw-bold fs-6 text-gray-800">컴퓨터공학</span>
																</div>
																<!--begin::Label-->
															</div>
													</div>
													<!--end::Card body-->
												</div>
												<!--end::details View-->
											</div>
											<!--end::Card body-->
										</div>
										<!--end::Table Widget 5-->
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->



								<!-- 부서 관리 모달창 공간-->
								<div class="modal fade" tabindex="-1" id="kt_modal_1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h3 class="modal-title">부서 관리</h3>

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
																	<th>부서</th>
																	<th>인원수</th>
																	<th class="text-end"></th>
																	<th class="text-end"></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td style="padding-top: 30px;">인사팀</td>
																	<td style="padding-top: 30px; padding-left: 20px;">3명</td>
																	<td style="text-align: right;"><button type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_2">
																			상세보기
																		</button></td>
																		<td style="text-align: right;"><a href="#" class="btn btn-sm btn-primary">삭제하기</a></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!-- 모달창 몸통 테이블 끝-->
											</div>

											<div class="modal-footer">
												<input type="text" class="form-control form-control-solid" placeholder="부서명 입력" style="width: 200px; height: 40px;">
												<button type="button" class="btn btn-primary">부서 만들기</button>
											</div>
										</div>
									</div>
								</div>
								<!-- 부서 관리 모달창 종료-->

								<!-- 부서 상세 모달창 공간-->
								<div class="modal fade" tabindex="-1" id="kt_modal_2">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h3 class="modal-title">부서 상세보기</h3>

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
																	<th>부서</th>
																	<th>인원수</th>
																	<th class="text-end"></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td style="padding-top: 30px;">인사팀</td>
																	<td style="padding-top: 30px; padding-left: 20px;">3명</td>
																	<td class="text-end">
																		<a href="#" class="btn btn-sm btn-primary">삭제하기</a>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!-- 모달창 몸통 테이블 끝-->
											</div>

											<div class="modal-footer">
												<input type="text" class="form-control form-control-solid" placeholder="부서명 입력" style="width: 200px; height: 40px;">
												<button type="button" class="btn btn-primary">부서 만들기</button>
											</div>
										</div>
									</div>
								</div>
								<!-- 부서 상세 모달창 종료-->




																					<!-- 작업 종료 공간-->






																					
										
									</div>
								</div>
								<!--end::Navbar-->
								
								
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
		<!--end::Root-->
		
		<!--end::Main-->
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
		<script src="/plugins/global/plugins.bundle.js"></script>
		<script src="/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<script src="/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<!--begin::Custom Javascript(used for this page only)-->

		<script src="/plugins/custom/jstree/jstree.bundle.js"></script>
		<script src="src/js/custom/apps/calendar/calendar.js"></script>
		<script src="/js/custom/pages/user-profile/general.js"></script>
		<script src="/js/widgets.bundle.js"></script>
		<script src="/js/custom/widgets.js"></script>
		<script src="/js/custom/apps/chat/chat.js"></script>
		<script src="/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="/js/custom/utilities/modals/create-project/type.js"></script>
		<script src="/js/custom/utilities/modals/create-project/budget.js"></script>
		<script src="/js/custom/utilities/modals/create-project/settings.js"></script>
		<script src="/js/custom/utilities/modals/create-project/team.js"></script>
		<script src="/js/custom/utilities/modals/create-project/targets.js"></script>
		<script src="/js/custom/utilities/modals/create-project/files.js"></script>
		<script src="/js/custom/utilities/modals/create-project/complete.js"></script>
		<script src="/js/custom/utilities/modals/create-project/main.js"></script>
		<script src="/js/custom/utilities/modals/offer-a-deal/type.js"></script>
		<script src="/js/custom/utilities/modals/offer-a-deal/details.js"></script>
		<script src="/js/custom/utilities/modals/offer-a-deal/finance.js"></script>
		<script src="/js/custom/utilities/modals/offer-a-deal/complete.js"></script>
		<script src="/js/custom/utilities/modals/offer-a-deal/main.js"></script>
		<script src="/js/custom/utilities/modals/create-app.js"></script>
		<script src="/js/custom/utilities/modals/users-search.js"></script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->	
	<script>
		$('#kt_docs_jstree_basic').jstree({
			"core" : {
				"themes" : {
					"responsive": false
				}
			},
			"types" : {
				"default" : {
					"icon" : "ki-outline ki-folder"
				},
				"file" : {
					"icon" : "ki-outline ki-file"
				}
			},
			"plugins": ["types"]
		});
	</script>
</html>