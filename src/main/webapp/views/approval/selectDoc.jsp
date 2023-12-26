<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<head>
	<title>UStore</title>
	<meta charset="utf-8" />
	<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
	<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="canonical" href="https://preview.keenthemes.com/craft" />
	<link rel="shortcut icon" href="<c:url value='/resource/assets/media/logos/favicon.ico' />" />
	<!--begin::Fonts(mandatory for all pages)-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
	<!--end::Fonts-->
	<!--begin::Vendor Stylesheets(used for this page only)-->
	<link href="<c:url value='/resource/assets/plugins/custom/leaflet/leaflet.bundle.css' />" rel="stylesheet" type="text/css" />
	<link href="<c:url value='/resource/assets/plugins/custom/datatables/datatables.bundle.css' />" rel="stylesheet" type="text/css" />
	<!--end::Vendor Stylesheets-->
	<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
	<link href="<c:url value='/resource/assets/plugins/global/plugins.bundle.css'/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value='/resource/assets/css/style.bundle.css'/>" rel="stylesheet" type="text/css" />
	<!--end::Global Stylesheets Bundle-->
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
							<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
								<!--begin::Title-->
								<h1 class="text-gray-900 fw-bold my-1 fs-2">새결재진행</h1>
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
						</div>
					</div>
					<!--end::Toolbar-->
					<!--begin::Post-->
					<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
						<!--begin::Container-->
						<div class="container-xxl">
							<!--begin::Card-->
							<div class="card">						
								<!--begin::Card body-->
								<div class="card-body py-4">
									<!--begin::Table-->
									<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_table_users">
										<thead>
											<tr class="text-start text-muted fw-bold fs-7 text-uppercase gs-0">										
												<th class="min-w-125px">순번</th>
												<th class="min-w-125px">양식종류</th>
												<th class="min-w-125px">보존연한</th>
											</tr>
										</thead>
										<tbody class="text-gray-600 fw-semibold">
											<tr>
												<td>1</td>
												<td class="d-flex align-items-center">											
													<!--begin::User details-->
													<div class="d-flex flex-column">
														<a href="#" onclick="selectForm(30, '일반기안문')" class="text-gray-800 text-hover-primary mb-1">일반기안문</a>
													</div>
													<!--begin::User details-->
												</td>										
												<td>
													<div class="badge badge-light fw-bold">5년</div>
												</td>
											</tr>
											<tr>
												<td>2</td>
												<td class="d-flex align-items-center">											
													<!--begin::User details-->
													<div class="d-flex flex-column">
														<a href="#" onclick="selectForm(31, '대금지급결의서')" class="text-gray-800 text-hover-primary mb-1">대금지급결의서</a>
													</div>
													<!--begin::User details-->
												</td>										
												<td>
													<div class="badge badge-light fw-bold">5년</div>
												</td>
											</tr>
											<tr>
												<td>3</td>
												<td class="d-flex align-items-center">											
													<!--begin::User details-->
													<div class="d-flex flex-column">
														<a href="#" onclick="selectForm(32, '휴가신청서')" class="text-gray-800 text-hover-primary mb-1">휴가신청서</a>
													</div>
													<!--begin::User details-->
												</td>										
												<td>
													<div class="badge badge-light fw-bold">5년</div>
												</td>
											</tr>								
										</tbody>
									</table>
									<!--end::Table-->
								</div>
								<!--end::Card body-->
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
	<!--begin::Global Javascript Bundle(mandatory for all pages)-->
	<script src="<c:url value='/resource/assets/plugins/global/plugins.bundle.js' />"></script>
	<script src="<c:url value='/resource/assets/js/scripts.bundle.js'/>"></script>
	<!--end::Global Javascript Bundle-->
	<!--end::Javascript-->
</body>
<!--end::Body-->
<script>
	var selectedForm = {
        common_idx: 0,
        name: ""
    };

    // 양식 선택 함수
    function selectForm(common_idx, name) {
    	selectedForm.common_idx = common_idx;
        selectedForm.name = name;
        
        loadFormPage(common_idx);
    }
   
    function loadFormPage(common_idx) {
        // URL을 변경하여 페이지 이동
        window.location.href = '/newapproval/write?common_idx=' + common_idx;
    }
</script>
</html>