<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
	<!--begin::Head-->
	<head>
		<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes</title>
		<meta charset="utf-8" />
		<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
		<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="canonical" href="https://preview.keenthemes.com/craft" />
		<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<link href="assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		
		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
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
			.chart-title{
				margin-right: 10px;
			}
			.span-search-button{
				margin-left: 20px;
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
					<!--begin::Content-->
					<div class="content fs-7 d-flex flex-column flex-column-fluid chart-content" id="kt_content" style="margin-top: 90px;">
					<!--================================메인 내용들어가는부분================================================-->
						<div class="chart-div">
							<!--begin::Card widget 5 기간 매출액 및 품목별 매출 비중-->
							<div class="card chart-body-div">
								<!--begin::Card body-->
								<div class="card-body d-flex justify-content-between flex-column px-0 pb-0">
									<!--begin::Statistics-->
									<div class="mb-4 px-9">
										<!--begin::Info-->
										<div class="d-flex align-items-center mb-2">
											<!--begin::Value-->
											<span class="fs-5 fw-bold text-gray-800 me-2 lh-1 chart-title">영업이익 추이</span>
											<!--end::Value-->
											<div class="mb-0">
												<input class="form-control form-control-solid kt_daterangepicker_1" placeholder="기간 선택" />
											</div>
											<button type="button" class="btn btn-primary span-search-button fs-7">검색</button>
										</div>
										<!--end::Info-->
									</div>
									<!--end::Statistics-->
									<!--begin::Chart-->
									<div id="" class="min-h-auto card-body chart-content-body">
										<!-- 차트 그리는 부분 -->
									</div>
									<!--end::Chart-->
								</div>
								<!--end::Card body-->
							</div>	
							<!--begin::Card widget 5 매출액 추이-->
							<div class="card chart-body-div">
								<!--begin::Card body-->
								<div class="card-body d-flex justify-content-between flex-column px-0 pb-0">
									<!--begin::Statistics-->
									<div class="mb-4 px-9">
										<!--begin::Info-->
										<div class="d-flex align-items-center mb-2">
											<!--begin::Value-->
											<span class="fs-5 fw-bold text-gray-800 me-2 lh-1 chart-title">매출액 추이</span>
											<!--end::Value-->
											<div class="mb-0">
												<input class="form-control form-control-solid kt_daterangepicker_1" placeholder="기간선택"/>
											</div>
											<button type="button" class="btn btn-primary span-search-button fs-7">검색</button>
										</div>
										
										<!--end::Info-->
									</div>
									<!--end::Statistics-->
									<!--begin::Chart-->
									<div id="" class="min-h-auto card-body chart-content-body">
										<!-- 차트 그리는 부분 -->
									</div>
									<!--end::Chart-->
								</div>
							<!--end::Card body-->
							</div>		
						</div>		
						<!--begin::Card widget 5 기간 매출액 및 품목별 매출 비중-->
						<div class="chart-div ">
							<div class="card chart-body-div">
								<!--begin::Card body-->
								<div class="card-body d-flex justify-content-between flex-column px-0 pb-0">
									<!--begin::Statistics-->
									<div class="mb-4 px-9">
										<!--begin::Info-->
										<div class="d-flex align-items-center mb-2">
											<!--begin::Value-->
											<span class="fs-5 fw-bold text-gray-800 me-2 lh-1 chart-title">품목별 매출</span>
											<!--end::Value-->
											<div class="mb-0">
												<input class="form-control form-control-solid kt_daterangepicker_1" placeholder="기간 선택"/>
											</div>
											<button type="button" class="btn btn-primary span-search-button fs-7">검색</button>	
										</div>
										<!--end::Info-->
									</div>
									<!--end::Statistics-->
									<!--begin::Chart-->
									<div id="" class="min-h-auto card-body chart-content-body">
										<!-- 차트 그리는 부분 -->
									</div>
									<!--end::Chart-->
								</div>
							<!--end::Card body-->
							</div>	
							<!--begin::Card widget 5 기간 비용금액 및 내역 비중 단위-->
							<div class="card chart-body-div">
								<!--begin::Card body-->
								<div class="card-body d-flex justify-content-between flex-column px-0 pb-0">
									<!--begin::Statistics-->
									<div class="mb-4 px-9">
										<!--begin::Info-->
										<div class="d-flex align-items-center mb-2">
											<!--begin::Value-->
											<span class="fs-5 fw-bold text-gray-800 me-2 lh-1 chart-title">비용금액 및 내역</span>
											<!--end::Value-->
											<div class="mb-0">
												<input class="form-control form-control-solid kt_daterangepicker_1" placeholder="기간 선택"/>
											</div>
											<button type="button" class="btn btn-primary span-search-button fs-7">검색</button>
										</div>
										<!--end::Info-->
									</div>
									<!--end::Statistics-->
									<!--begin::Chart-->
									<div id="" class="min-h-auto card-body chart-content-body">
										<!-- 차트 그리는 부분 -->
									</div>
									<!--end::Chart-->
								</div>
							<!--end::Card body-->
							</div>		
						</div>	
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
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
		$(".kt_daterangepicker_1").daterangepicker();
	</script>
</html>