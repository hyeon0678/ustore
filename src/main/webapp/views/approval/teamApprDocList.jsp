<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<link href="<c:url value='/resource/assets/plugins/global/plugins.bundle.css' />" rel="stylesheet" type="text/css" />	
	<link href="<c:url value='/resource/assets/css/style.bundle.css' />" rel="stylesheet" type="text/css" />
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
		#category_table tbody td:nth-child(4) a {
		    display: block;
		    overflow: hidden;
		    white-space: nowrap;
		    text-overflow: ellipsis;
		    max-width: 35ch;
		}
	</style>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
		<!--begin::Theme mode setup on page load-->
		<script>
			var defaultThemeMode = "light"; 
			var themeMode; 
			if ( document.documentElement ) {
				if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { 
					themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); 
				} else { 
					if ( localStorage.getItem("data-bs-theme") !== null ) { 
						themeMode = localStorage.getItem("data-bs-theme"); 
					} else { 
						themeMode = defaultThemeMode; 
					} 
				} 
				if (themeMode === "system") { 
					themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; 
				} 
				document.documentElement.setAttribute("data-bs-theme", themeMode); 
			}
		</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::Header 헤더 들어오는 곳 -->
		<jsp:include page="/views/common/header.jsp"></jsp:include>
		<!--end::Header 헤더 닫기-->						
		<!--begin::Main-->
		<!--begin::Root-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid">
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 30px; background-color: #fffff8; margin-left: 30px">
					<!--================================메인 내용들어가는부분================================================-->
					<!--begin::sidebar 들어오는 곳 -->
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
					<!--end::sidebar 닫기 -->
					
					<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2" style="width: 50%;">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">
										부서문서함(${deptName})
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
								<div class="card card-flush">
									<!--begin::Card header-->
									<div class="card-header align-items-center py-5 gap-2 gap-md-5">
										<!--begin::Card title-->
										<div class="card-title">
											<!--begin::Search-->
											<div class="d-flex align-items-center position-relative my-1">
												<i class="ki-duotone ki-magnifier fs-3 position-absolute ms-4">
													<span class="path1"></span> <span class="path2"></span>
												</i> 
												<input type="text" data-kt-ecommerce-category-filter="search" class="form-control form-control-solid w-250px ps-12"	placeholder="검색어를 입력 해주세요." />
												<button id= "search" class="btn btn-primary" style="margin: 10px;" >검색</button>
											</div>
											<!--end::Search-->
										</div>
										<!--end::Card title-->						
										<!--begin::Card toolbar-->
										<div class="card-toolbar" style="float: right;">	
										</div>
										<!--end::Card toolbar-->
									</div>
									<!--end::Card header-->
									<!--begin::Card body-->
									<div class="card-body py-4">
										<!--begin::Table-->
										<table class="table align-middle table-row-dashed fs-6 gy-5" id="category_table">
											<thead>
												<tr class="text-start text-muted fw-bold fs-7 text-uppercase gs-0">
													<th class="min-w-120px">문서번호</th>
													<th class="min-w-100px">결재일자</th>
													<th class="min-w-100px">결재양식</th>
													<th class="min-w-100px">제목</th>
													<th class="min-w-100px">기안자</th>
												</tr>
											</thead>
											<tbody class="text-gray-600 fw-semibold">
												<c:forEach items="${teamapprlist}" var="bbs">
													<tr>
														<td>${bbs.docId}</td>
														<td><fmt:formatDate value="${bbs.apprDate}" pattern="yyyy-MM-dd" /></td>
														<td>
															<c:choose>
												                <c:when test="${bbs.apprTypeIdx == 30}">
												                    일반기안문
												                </c:when>
												                <c:when test="${bbs.apprTypeIdx == 31}">
												                    대금지급결의서
												                </c:when>
												                <c:when test="${bbs.apprTypeIdx == 32}">
												                    휴가신청서
												                </c:when>
												            </c:choose>
												        </td>
														<td><a href="/approval/teamapproval/detail?apprIdx=${bbs.apprIdx}&apprTypeIdx=${bbs.apprTypeIdx}">${bbs.apprSubject}</a></td>
														<td>${bbs.empName}</td>														
													</tr>
												</c:forEach>	
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
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<script	src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<script	src="resource/assets/js/custom/apps/ecommerce/catalog/categories.js"></script>
		<script src="resource/assets/js/widgets.bundle.js"></script>
		<script src="resource/assets/js/custom/widgets.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
	$(document).ready(function(){
		headerOnReady();
	});
	
	
	$('#category_table').DataTable({
	    "language": {
	        "emptyTable": "문서가 없습니다.",
	        "infoEmpty": "표시할 항목이 없습니다.",
	        "info": "총 _TOTAL_ 개 중 _START_ - _END_ "
	    }
	});
	</script>
</html>