<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<!--begin::Head-->
	<head>
		<title>USstore</title>
		<meta charset="utf-8" />
		<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
		<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="canonical" href="https://preview.keenthemes.com/craft" />
		<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
		<!-- jstree 링크  -->
		<link href="assets/plugins/custom/jstree/jstree.bundle.css" rel="stylesheet" type="text/css" />
		<link href="src/sass/components/_variables.scss" rel="stylesheet" type="text/css" />
		<link href="src/sass/components/buttons" rel="stylesheet" type="text/css" />

		
		
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<style>
			.chart-div{
				display: flex;
				height: 500px;
				margin-bottom: 20px;	
			}
			.chart-body-div{
				width: 45%;
				margin: 10px 20px;
			}
			.content_tree{
				margin: 20px 50px;
				padding: 20px;

			}
		</style>
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

					<!--================================메인 내용들어가는부분================================================-->
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 90px; background-color: #fffff8;">
						<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="" style="display:flex; margin-left:11%; margin-right:10%; justify-content: space-between;">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">Membership</h1>
									<!--end::Title-->
								</div>
								<!--end::Info-->
								<!--begin::Actions-->
								<div style="display: flex; align-items: center;">
									<input type="text" class="form-control form-control-solid" placeholder="내용을 입력하세요." style="width:200px; height:30px; "/>
									<button type="button" class="btn btn-primary" style="margin: 5px;">검색</button>
								</div>
								<!--end::Actions-->
							</div>
						</div>
						<!--end::Toolbar-->
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl">
								<!--begin::Inbox App - Messages -->
								<div class="d-flex flex-column flex-lg-row">
									<!--begin::Sidebar-->
									<div class="d-none d-lg-flex flex-column flex-lg-row-auto w-100 w-lg-275px" data-kt-drawer="true" data-kt-drawer-name="inbox-aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="225px" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_inbox_aside_toggle">
										<!--begin::Sticky aside-->
										<div class="card card-flush mb-0" data-kt-sticky="false" data-kt-sticky-name="inbox-aside-sticky" data-kt-sticky-offset="{default: false, xl: '100px'}" data-kt-sticky-width="{lg: '275px'}" data-kt-sticky-left="auto" data-kt-sticky-top="100px" data-kt-sticky-animation="false" data-kt-sticky-zindex="95">
											<!--begin::Aside content-->
											<div class="card-body">
												<!--==========================================서브 사이드바 컨텐츠 리스트==================================================================-->											
													<!--begin::Menu-->
													<div class="menu menu-column menu-rounded menu-state-bg menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary ">
														<!--begin::Menu item-->
														<div class="menu-item mb-3">
															<!--begin::Inbox-->
															<span class="menu-link active">
																<span class="menu-icon">
																	<i class="ki-duotone ki-sms fs-2 me-3">
																		<span class="path1"></span>
																		<span class="path2"></span>
																	</i>
																</span>
																<span class="menu-title fw-bold">회원관리</span>
															</span>
															<!--end::Inbox-->
														</div>
														<!--end::Menu item-->
														<!--begin::Menu item-->
														<div class="menu-item mb-3">
															<!--begin::Inbox-->
															<span class="menu-link">
																<span class="menu-icon">
																	<i class="ki-duotone ki-sms fs-2 me-3">
																		<span class="path1"></span>
																		<span class="path2"></span>
																	</i>
																</span>
																<span class="menu-title fw-bold">일반 멤버쉽</span>
															</span>
															<!--end::Inbox-->
														</div>
														<!--end::Menu item-->
														<!--begin::Menu item-->
														<div class="menu-item mb-3">
															<!--begin::Inbox-->
															<span class="menu-link">
																<span class="menu-icon">
																	<i class="ki-duotone ki-sms fs-2 me-3">
																		<span class="path1"></span>
																		<span class="path2"></span>
																	</i>
																</span>
																<span class="menu-title fw-bold">사업자 멤버쉽</span>
															</span>
															<!--end::Inbox-->
														</div>
														<!--end::Menu item-->
													</div>
													<!--end::Menu-->
													
											</div>
											<!--end::Aside content-->
										</div>
										<!--end::Sticky aside-->
									</div>
									<!--end::Sidebar-->
									<!--=========================================================== 회원 리스트 들어가는 자리===================================================================-->
									<!--begin::Content-->
									<div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
										<!--begin::Card-->
										<div class="card">
									<!--===============================================^ 카드의 시작===============================================================-->
									<!--begin::Card body-->
									<div class="card-body pt-0">
										<!--begin::Table-->
										<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_customers_table">
											<thead>
												<tr class="text-start text-gray-500 fw-bold fs-7 text-uppercase gs-0">
													<th class="w-10px pe-2">														
													</th>
													<th class="min-w-125px">회원 번호</th>
													<th class="min-w-125px">이름</th>
													<th class="min-w-125px">멤버쉽 종류</th>
													<th class="min-w-125px">회원등급</th>
													<th class="min-w-125px">연락처</th>
													<th class="min-w-125px">만료날짜</th>
												</tr>
											</thead>
											<tbody class="fw-semibold text-gray-600">
												<!-- 사람 하나 시작 -->
												<tr>
													<td>
													</td>
													<td>
														<a href="customerdetail?idx=#{}" class="text-gray-800 text-hover-primary mb-1">201548</a>
													</td>
													<td>
														<a href="#" class="text-gray-600 text-hover-primary mb-1">도재학</a>
													</td>
													<td>사업자</td>
													<td>스탠다드</td>
													<td>01026262626</td>
													<td>2025.01.12</td>
												</tr>
												<tr>
													<td>
													</td>
													<td>
														<a href="customerdetail?idx=#{}" class="text-gray-800 text-hover-primary mb-1">201548</a>
													</td>
													<td>
														<a href="#" class="text-gray-600 text-hover-primary mb-1">도재학</a>
													</td>
													<td>사업자</td>
													<td>스탠다드</td>
													<td>01026262626</td>
													<td>2025.01.12</td>
												</tr>
												<tr>
													<td>
													</td>
													<td>
														<a href="customerdetail?idx=#{}" class="text-gray-800 text-hover-primary mb-1">201548</a>
													</td>
													<td>
														<a href="#" class="text-gray-600 text-hover-primary mb-1">도재학</a>
													</td>
													<td>사업자</td>
													<td>스탠다드</td>
													<td>01026262626</td>
													<td>2025.01.12</td>
												</tr>
												<tr>
													<td>
													</td>
													<td>
														<a href="customerdetail?idx=#{}" class="text-gray-800 text-hover-primary mb-1">201548</a>
													</td>
													<td>
														<a href="#" class="text-gray-600 text-hover-primary mb-1">도재학</a>
													</td>
													<td>사업자</td>
													<td>스탠다드</td>
													<td>01026262626</td>
													<td>2025.01.12</td>
												</tr>
												<tr>
													<td>
													</td>
													<td>
														<a href="customerdetail?idx=#{}" class="text-gray-800 text-hover-primary mb-1">201548</a>
													</td>
													<td>
														<a href="#" class="text-gray-600 text-hover-primary mb-1">도재학</a>
													</td>
													<td>사업자</td>
													<td>스탠다드</td>
													<td>01026262626</td>
													<td>2025.01.12</td>
												</tr>
												<tr>
													<td>
													</td>
													<td>
														<a href="customerdetail?idx=#{}" class="text-gray-800 text-hover-primary mb-1">201548</a>
													</td>
													<td>
														<a href="#" class="text-gray-600 text-hover-primary mb-1">도재학</a>
													</td>
													<td>사업자</td>
													<td>스탠다드</td>
													<td>01026262626</td>
													<td>2025.01.12</td>
												</tr>
											</tbody>
										</table>
										<!--end::Table-->
									</div>
									<!--end::Card body-->
									

									<!--===============================================V 카드의 끝===============================================================-->
										</div>
										<!--end::Card-->
									</div>
									<!--end::Content-->
								</div>
								<!--end::Inbox App - Messages -->
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
						<!--========================================================서브 사이드바 끝==============================================================-->






















						
					</div>
					<!--end::Content-->					
					
    			</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<!--end::Root-->
								
		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		begin::Vendors Javascript(used for this page only)-->
		<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->
		<script src="assets/js/widgets.bundle.js"></script>
		<script src="assets/js/custom/widgets.js"></script>
		<script src="assets/js/custom/apps/chat/chat.js"></script>
		<script src="assets/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="assets/js/custom/utilities/modals/create-project/type.js"></script>
		<script src="assets/js/custom/utilities/modals/create-project/budget.js"></script>
		<script src="assets/js/custom/utilities/modals/create-project/settings.js"></script>
		<script src="assets/js/custom/utilities/modals/create-project/team.js"></script>
		<script src="assets/js/custom/utilities/modals/create-project/targets.js"></script>
		<script src="assets/js/custom/utilities/modals/create-project/files.js"></script>
		<script src="assets/js/custom/utilities/modals/create-project/complete.js"></script>
		<script src="assets/js/custom/utilities/modals/create-project/main.js"></script>
		<script src="assets/js/custom/utilities/modals/users-search.js"></script>
		<script src="assets/plugins/custom/jstree/jstree.bundle.js"></script>
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

		$('#kt_docs_jstree_basic2').jstree({
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