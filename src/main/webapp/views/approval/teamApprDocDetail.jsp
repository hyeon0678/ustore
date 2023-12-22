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
			.signature-table {
            float: right;
            margin-left: 20px;
			}
			.signature-table td {
				border: 1px solid #ddd;
				padding: 10px;
				text-align: center;
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
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">부서문서함</h1>
									<!--end::Title-->
									<!--begin::Breadcrumb-->
									<ul class="breadcrumb fw-semibold fs-base my-1">
										<li class="breadcrumb-item text-muted">
											<a href="index.jsp" class="text-muted text-hover-primary">Home</a>
										</li>
										<li class="breadcrumb-item text-muted">전자결재</li>
									</ul>
									<!--end::Breadcrumb-->
								</div>
								<!--end::Info-->
								<!--begin::Toolbaricon-->
								<div class="d-flex justify-content-end" data-kt-user-table-toolbar="base">
									<!--begin::Filter-->
									<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
									<i class="ki-duotone ki-filter fs-2">
										<span class="path1"></span>
										<span class="path2"></span>
									</i>PDF저장</button>
									<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
									<i class="ki-duotone ki-filter fs-2">
										<span class="path1"></span>
										<span class="path2"></span>
									</i>출력하기</button>
									<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
									<i class="ki-duotone ki-filter fs-2">
										<span class="path1"></span>
										<span class="path2"></span>
									</i>목록으로</button>						
								</div>
								<!--end::Toolbaricon-->		
							</div>
						</div>
						<!--end::Toolbar-->
						<!-- 결재 양식 들어오는 곳 -->		
						<div class="loadApprDoc">
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
		<script>var hostUrl = "resource/assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--CKEditor Build Bundles:: Only include the relevant bundles accordingly-->
		<script src="resource/assets/plugins/custom/ckeditor/ckeditor-classic.bundle.js"></script>
		<script src="resource/assets/plugins/custom/ckeditor/ckeditor-inline.bundle.js"></script>
		<script src="resource/assets/plugins/custom/ckeditor/ckeditor-balloon.bundle.js"></script>
		<script src="resource/assets/plugins/custom/ckeditor/ckeditor-balloon-block.bundle.js"></script>
		<script src="resource/assets/plugins/custom/ckeditor/ckeditor-document.bundle.js"></script>
		
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>

	</script>
</html>