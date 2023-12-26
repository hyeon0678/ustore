<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kr">
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
			.comm-content-body{
				height: 100%;
				padding: auto;
			}
			.img-button{
				border: none;
			}
			.mail-comm{
				display: flex;
				justify-content: space-between;
				margin-right: 30px;
				margin: 5px 40px 30px 40px;
			}
			.comm-head{
				margin: 20px 0px 30px 40px;
			}
			.comm-right{
				display: flex;
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
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 95px;">
					<!--================================메인 내용들어가는부분================================================-->
						<div class="container flex-column flex-lg-row ">
							<div class="comm-head">
								<h2>보낸 메일함</h2>
							</div>
							<div class="mail-comm">
								<div class="comm-left">
									<button type="button" class="btn btn-primary span-pay">메일작성</button>
								</div>	
								<div class="comm-right">
									<input type="text" class="form-control" placeholder="이름혹은 내용을 검색해주세요" style="width: 250px; height: 40px;">
									<button type="button" class="btn btn-primary span-search-button" style="margin-left: 10px;">검색</button>
									<button class="img-button" style="margin-left: 10px;"><img src="assets/media/icons/duotune/arrows/arr059.svg" onclick=""/>복원</button>
									<button class="img-button" style="margin-left: 10px;"><img src="assets/media/icons/duotune/general/gen027.svg" onclick=""/>삭제</button>
								</div>
							</div>
						</div>
						<div class="container d-flex flex-column flex-lg-row comm-content-body" id="kt_docs_content_container">
							<div class="card card-docs flex-row-fluid mb-2" id="kt_docs_content_card"> 
								<table id="kt_datatable_zero_configuration" class="table table-row-bordered gy-5 ">
									<thead>
										<tr class="fw-semibold fs-6 text-center">
											<th><input type="checkbox"/></th>
											<th>제목</th>
											<th>수신자(팀명)</th>
											<th>수신일</th>
											<th>읽음/안읽음</th>
										</tr>
									</thead>
								</table>
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
		<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--end::Javascript-->
	</body>
	<script>
		var ajax = true;
		$('#kt_datatable_zero_configuration').DataTable({
			ordering:false,
			"lengthChange": false,
			alax:{
				url:"/mailtest"
				,type:'get'
				,dataSrc:function(res){
					var data = res.data;
					return data;
				}
			},
			columns: [
				{ data: '<input type="checkbox" id="checkAll"/>' },
				{ data: '제목' },
				{ data: '발신자(팀명)' },
				{ data: '발신일' },
				{ data: '읽음/안읽음' }
			],
			processing: true,
			serverSide: true
		});

	</script>
	<!--end::Body-->
</html>