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
		<link href="resource/assets/plugins/globalresource/assets/plugins.bundle.css" rel="stylesheet" type="text/css" />
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
				<div class="wrapper d-flex flex-column flex-row-fluid">

					
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid">
						
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" style="margin-left: 30px;">
							<div class="card mb-5 mb-xl-10"  style="width: 100%;">
								<div class="card-body card-scroll h-200px">
									<div class="row d-flex">
								        <div class="col-md-4 d-flex">
								            <!-- 셀렉트 박스 -->
								            <select class="form-select w-50" aria-label="Select option">
								                <option value="1">회원명</option>
								                <option value="2">전화번호</option>
								                <!-- 추가적인 옵션들을 필요에 따라 추가할 수 있습니다 -->
								            </select>
											<input type="text" class="form-control form-control-solid" placeholder="검색 정보를 입력해주세요">
											<input type="button" class="btn btn-primary" value="검색">
								        </div>
								        
								    </div>
										<div class="table-responsive">
											<table class="table table-row-dashed table-row-gray-300 gy-5">
												<thead>
													<tr class="fw-bold fs-6 text-gray-800">
														<th>회원번호</th>
														<th>전화번호</th>
														<th>회원명</th>
														<th>멤버쉽 종류</th>
														<th>멤버쉽 등급</th>
														<th><p hidden>선택 버튼 칸</p></th>
													</tr>
												</thead>
												<tbody>
													<tr style="vertical-align: middle;">
														<td>Tiger Nixon</td>
														<td>System Architect</td>
														<td>Edinburgh</td>
														<td>61</td>
														<td>2011/04/25</td>
														<th><a href="#" class="btn btn-success">선택</a></th>
													</tr>
													<tr style="vertical-align: middle;">
														<td>Tiger Nixon</td>
														<td>System Architect</td>
														<td>Edinburgh</td>
														<td>61</td>
														<td>2011/04/25</td>
														<th><a href="#" class="btn btn-success">선택</a></th>
													</tr>
												</tbody>
											</table>
										</div>


								</div>
								<div class="card-footer">
									Footer
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
		<!--end::Root-->
		

		
		
		<!--end::Modals-->
		<!--begin::Javascript-->
		<script>var hostUrl = "/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/globalresource/assets/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Vendors Javascript(used for this page only)-->


		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->

		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
</script>
</html>