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
			.salary-head{
				display: flex;
				margin-bottom: 20px;	
			}
			.salary-head-body{
				margin: 10px 40px 10px 30px;
			}
			.elem-bottom-sytle{
				display: flex;
			}
			.span-search-button{
				margin-left: 20px;
			}
			.span-pay{
				margin-left: 100px;
			}
			.comm-content-body{
				height: 100%;
			}
			.board-body{
				height: 750px;
			}
			.elem-contents-margin{
				margin-bottom: 50px;
				margin-top: 30px;
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
					<div class="salary-head">
							<div class="salary-head-body">
								<h2>급여 지급</h2>
							</div>
							<div class="salary-head-body">
								<h2>2023/12/15</h2>
							</div>
						</div>
					<div class="container d-flex flex-column flex-lg-row comm-content-body" id="kt_docs_content_container">
						<div class="card card-docs flex-row-fluid mb-2" id="kt_docs_content_card"> 
							<div>
								<div class="py-5  container-xxl">
									<div class="table-responsive board-body">
										<table class="table table-row-dashed table-row-gray-300 gy-7 database_table" id = "kt_datatable_zero_configuration">
											<thead>
												<tr class="fw-bold fs-6 text-gray-800 text-center">
													<th>사원번호</th>
													<th>부서명</th>
													<th>직급</th>
													<th>성명</th>
													<th>월급여</th>
												</tr>
											</thead>
											<tbody>
												<!-- 아래의 컨텐트는 예시입니다. 자바스크립트로 그릴 때 이거 가져다 쓰시면 됩니다 -->
												<tr class="fs-6 text-gray-800 text-center">
													<th>20240001</th>
													<th>회계팀</th>
													<th>사원</th>
													<th>홍길동</th>
													<th>200,0000</th>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="elem-bottom-sytle justify-content-center">
								<input type="text" class="form-control form-control-solid" placeholder="이름을 입력해주세요" style="width: 200px; height: 40px;">
								<button type="button" class="btn btn-primary span-search-button">검색</button>
								<button type="button" class="btn btn-primary span-pay">일괄 지급</button>
							</div>

							<div class="col-sm-12 col-md-7 d-flex align-items-center justify-content-center justify-content-md-end elem-contents-margin">
								<div class="dataTables_paginate paging_simple_numbers" id="kt_inbox_listing_paginate">
									<ul class="pagination">
										<li class="paginate_button page-item previous disabled" id="kt_inbox_listing_previous">
										<a href="#" aria-controls="kt_inbox_listing" data-dt-idx="0" tabindex="0" class="page-link"><i class="previous"></i>
											</a>
										</li>
										<li class="paginate_button page-item active">
											<a href="#" aria-controls="kt_inbox_listing" data-dt-idx="1" tabindex="0" class="page-link">1</a>
											</li>
										<li class="paginate_button page-item ">
											<a href="#" aria-controls="kt_inbox_listing" data-dt-idx="2" tabindex="0" class="page-link">2</a>
										</li>
										<li class="paginate_button page-item next" id="kt_inbox_listing_next">
											<a href="#" aria-controls="kt_inbox_listing" data-dt-idx="3" tabindex="0" class="page-link">
												<i class="next"></i>
											</a>
										</li>
									</ul>
								</div>
							</div>
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
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
		$('#searchButton').on('click', function () {
		$.ajax({
	        type: 'get',
	        url: 'list',
	        dataType: 'json',
	        success: function (data) {
	        	console.log(data);
	        	 drawList(data); 
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	});
	
	function drawList(obj){
		var content ='';
		
		obj.list.forEach(function(item, idx){
			// 급여 리스트 그리는 곳
		});
		$('#list').empty();
		$('#list').append(content);

		$("#kt_datatable_zero_configuration").DataTable();
	}
	</script>
</html>