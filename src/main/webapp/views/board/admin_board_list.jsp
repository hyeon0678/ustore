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
				<jsp:include page="/views/common/header.jsp"></jsp:include>
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 90px;">
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
					<!--================================메인 내용들어가는부분================================================-->
						<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">공지사항
									<small class="text-muted fs-6 fw-normal ms-1"></small></h1>
									<!--end::Title-->
									<!--begin::Breadcrumb-->
									<ul class="breadcrumb fw-semibold fs-base my-1">
										<li class="breadcrumb-item text-muted">
											<a href="index.go" class="text-muted text-hover-primary">Home</a>
										</li>
										<li class="breadcrumb-item text-muted">커뮤니티</li>
										<li class="breadcrumb-item text-gray-900">공지사항</li>
									</ul>
									<!--end::Breadcrumb-->
								</div>
								<!--end::Info-->
								<!--begin::Actions-->
								
								<!--end::Actions-->
							</div>
							
							<div style="float: left;">
							<div class="d-flex align-items-center position-relative my-1">
								<i class="ki-duotone ki-magnifier fs-3 position-absolute ms-4">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>
								<input type="text" data-kt-ecommerce-category-filter="search" class="form-control form-control-solid w-250px ps-12" placeholder="내용을 입력해주세요." />
							</div>
						</div>
										
										<div style="float: right;">
											<button onclick="location.href='#'" class="btn btn-primary">글작성</button>
										</div>
							
						</div>
						<!--end::Toolbar-->
						<!--begin::Post-->
						
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
						
						
						
							<!--begin::Container-->
							<div class="container-xxl" style="background-color: white;margin: 20px;">
								<div class="py-5">
									<div class="table-responsive">
										
										
										
										<table class="table table-row-bordered table-row-gray-400 gy-7" style="padding: 0px;">
											<tbody>
											
												<tr class="fw-bold fs-6 text-gray-800">
													<th colspan="5" style="font-size: larger; color: red">공지사항1</th>
													<th style="text-align: center;">조회수</th>
												</tr>
												<tr style="border-top: hidden;">
													<th colspan="5" style="padding: 5px;">
														<i class="ki-duotone ki-profile-circle">
 															<span class="path1"></span>
 															<span class="path2"></span>
 															<span class="path3"></span>
														</i>
														json
													</th>
													<td style="text-align: center;padding: 5px;">0</td>
												</tr>
												<tr style="border-top: hidden;">
													<th colspan="6" style="padding: 5px;">등록일시 : 2023-12-08</th>
												</tr>
												
												<tr class="fw-bold fs-6 text-gray-800">
													<th colspan="5" style="font-size: larger; color: red">공지사항2</th>
													<th style="text-align: center;">조회수</th>
												</tr>
												<tr style="border-top: hidden;">
													<th colspan="5" style="padding: 5px;">
														<i class="ki-duotone ki-profile-circle">
 															<span class="path1"></span>
 															<span class="path2"></span>
 															<span class="path3"></span>
														</i>
														json
													</th>
													<td style="text-align: center;padding: 5px;">0</td>
												</tr>
												<tr style="border-top: hidden;">
													<th colspan="6" style="padding: 5px;">등록일시 : 2023-12-08</th>
												</tr>
												
												<tr class="fw-bold fs-6 text-gray-800">
													<th colspan="5" style="font-size: larger; color: red">공지사항3</th>
													<th style="text-align: center;">조회수</th>
												</tr>
												<tr style="border-top: hidden;">
													<th colspan="5" style="padding: 5px;">
														<i class="ki-duotone ki-profile-circle">
 															<span class="path1"></span>
 															<span class="path2"></span>
 															<span class="path3"></span>
														</i>
														json
													</th>
													<td style="text-align: center;padding: 5px;">0</td>
												</tr>
												<tr style="border-top: hidden;">
													<th colspan="6" style="padding: 5px;">등록일시 : 2023-12-08</th>
												</tr>
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
					</div>
				<!--end::Content--> 
    			</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<!--end::Root-->
								
		<!--begin::Javascript-->
		<script>var hostUrl = "resource/assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		
		
	</body>
	<!--end::Body-->
</html>