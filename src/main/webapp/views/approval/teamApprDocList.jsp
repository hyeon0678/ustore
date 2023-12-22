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
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
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
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 90px;">
					<!--================================메인 내용들어가는부분================================================-->
					<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2" style="width: 50%;">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">
										부서문서함(<span class="dept_name" style="line-height: 1; white-space: nowrap;"></span>)
									</h1>
									<!--end::Title-->
								</div>
								<!--end::Info-->
							</div>
						</div>
						<!--end::Toolbar-->
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl">
								<!--begin::Card-->
								<div class="card">
									<!--begin::Card header-->
									<div class="card-header border-0 pt-6">						
										<!--begin::Card toolbar-->
										<div class="card-toolbar" style="float: right;">
											<select id="pagePerNum">
												<option value="10">10</option>
												<option value="20">20</option>
											</select>				
										</div>
										<!--end::Card toolbar-->
									</div>
									<!--end::Card header-->
									<!--begin::Card body-->
									<div class="card-body py-4">
										<!--begin::Table-->
										<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_table_users">
											<thead>
												<tr class="text-start text-muted fw-bold fs-7 text-uppercase gs-0">
													<th class="w-10px pe-2">
														<div class="form-check form-check-sm form-check-custom form-check-solid me-3">
															<input class="form-check-input" type="checkbox" data-kt-check="true" data-kt-check-target="#kt_table_users .form-check-input" value="1" />
														</div>
													</th>
													<th class="min-w-125px">기안일자</th>
													<th class="min-w-125px">결재양식</th>
													<th class="min-w-125px">제목</th>
													<th class="min-w-125px">기안자</th>
												</tr>
											</thead>
											<tbody class="text-gray-600 fw-semibold">
												<tr>
													<td>
														<div class="form-check form-check-sm form-check-custom form-check-solid">
															<input class="form-check-input" type="checkbox" value="1" />
														</div>
													</td>
													<td class="d-flex align-items-center">										
														<!--begin::기안일자-->
														<div class="d-flex flex-column">
															<span></span>
														</div>										
													</td>
													<!--begin::결재양식-->
													<td></td>
													<!--begin::기안문 제목-->
													<td>
														<div class="badge badge-light fw-bold"><a href="" class="menu-link px-3">제목</a></div>
													</td>
													<!--begin::기안자-->
													<td></td>
												</tr>	
											</tbody>
										</table>
										<!--end::Table-->
									</div>
									<!--end::Card body-->
									<div class="row">
										<div class="col-sm-12 col-md-5 d-flex align-items-center justify-content-center justify-content-md-start">
											<div class="dataTables_length" id="kt_customers_table_length">
												<label>
													<select name="kt_customers_table_length" aria-controls="kt_customers_table" class="form-select form-select-sm form-select-solid">
														<option value="10">10</option>
														<option value="25">20</option>
													</select>
												</label>
											</div>
										</div>
										<div class="col-sm-12 col-md-7 d-flex align-items-center justify-content-center justify-content-md-end">
											<div class="dataTables_paginate paging_simple_numbers" id="kt_customers_table_paginate">
												<ul class="pagination">
													<li class="paginate_button page-item previous disabled" id="kt_customers_table_previous">
														<a href="#" aria-controls="kt_customers_table" data-dt-idx="0" tabindex="0" class="page-link">
															<i class="previous"></i>
														</a>
													</li>
													<li class="paginate_button page-item active">
														<a href="#" aria-controls="kt_customers_table" data-dt-idx="1" tabindex="0" class="page-link">1</a>
													</li>
													<li class="paginate_button page-item ">
														<a href="#" aria-controls="kt_customers_table" data-dt-idx="2" tabindex="0" class="page-link">2</a>
													</li>
													<li class="paginate_button page-item ">
														<a href="#" aria-controls="kt_customers_table" data-dt-idx="3" tabindex="0" class="page-link">3</a>
													</li>
													<li class="paginate_button page-item ">
														<a href="#" aria-controls="kt_customers_table" data-dt-idx="4" tabindex="0" class="page-link">4</a>
													</li>
													<li class="paginate_button page-item next" id="kt_customers_table_next">
														<a href="#" aria-controls="kt_customers_table" data-dt-idx="5" tabindex="0" class="page-link">
															<i class="next"></i>
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!--end::Card-->
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
		<!--end::Global Javascript Bundle-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>