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
		<link rel="shortcut icon" href="/resource/assets/media/logos/favicon.ico" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="/resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="/resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="/resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
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
		<jsp:include page="/views/common/header.jsp"></jsp:include>
				
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
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
					<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">임시저장함</h1>
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
										<div class="card-toolbar">
											<!--begin::Toolbar-->
											<div class="d-flex justify-content-end" data-kt-user-table-toolbar="base">
												<!--begin::Filter-->
												<button id="delTempDoc" type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
													<i class="ki-duotone ki-filter fs-2">
														<span class="path1"></span>
														<span class="path2"></span>
													</i>문서삭제
												</button>								
											</div>
											<!--end::Toolbar-->							
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
															<input type="checkbox" id="chk_all" class="form-check-input" data-kt-check="true" data-kt-check-target="#kt_table_users .form-check-input" value="1" />
														</div>
													</th>
													<th class="min-w-125px">저장일자</th>
													<th class="min-w-125px">결재양식</th>
													<th class="min-w-125px">제목</th>
													<th class="min-w-125px">결재상태</th>
												</tr>
											</thead>
											<tbody class="text-gray-600 fw-semibold">
												<c:if test="${templist.size()==0 }">
													<tr><td colspan="5">게시물이 존재하지 않습니다.</td></tr>
												</c:if>
												<c:forEach items="${templist}" var="bbs">
													<tr>
														<td>
															<div class="form-check form-check-sm form-check-custom form-check-solid">
																<input type="checkbox" name="chk" class="form-check-input"  value="1"/>
															</div>
														</td>
														<td>${bbs.apprSubmitDate}</td>
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
														<td><a href="/approval/tempapproval/detail?apprIdx=${bbs.apprIdx}&apprTypeIdx=${bbs.apprTypeIdx}">${bbs.apprSubject}</a></td>
														<td>
															<c:if test="${bbs.apprStatus == 43}">
												                <span class="badge badge-warning">임시저장</span>
												            </c:if>
														</td>														
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
		<script src="/resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="/resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
	$('#chk_all').on('click',function(){
		var $chk = $('input[type="checkbox"]');
		if($(this).is(":checked")){
			$chk.prop("checked", true);
		}else{
			$chk.prop("checked", false);
		}
	});

	$("input[name='chk']").on('click',function(){
		var total = $("input[name='chk']").length;
		var checked = $("input[name='chk']:checked").length;
		
		if(total != checked){
			$('#chk_all').prop("checked", false);
		}else{
			$('#chk_all').prop("checked", true);
		}
	});
	
	$('#delTempDoc').on('click', function(){
	
		
		
	})
	
	</script>
</html>