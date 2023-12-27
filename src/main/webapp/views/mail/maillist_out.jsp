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
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 90px;">
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
									<input type="text" class="form-control" placeholder="이름혹은 내용을 검색해주세요" style="width: 200px; height: 40px;">
									<button type="button" class="btn btn-primary span-search-button" style="margin-left: 10px;">검색</button>
									<button class="img-button" style="margin-left: 10px;"><img src="resource/assets/media/icon/gen027.svg" onclick=""/></button>
								</div>
							</div>
						</div>
						<div class="container d-flex flex-column flex-lg-row comm-content-body" id="kt_docs_content_container">
							<div class="card card-docs flex-row-fluid mb-2" id="kt_docs_content_card"> 
								<table id="kt_datatable_zero_configuration" class="table table-row-bordered gy-5 database_table">
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
		<script>var hostUrl = "resource/assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--end::Javascript-->
	</body>
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
			// content 그리는 곳
		});
		$('#list').empty();
		$('#list').append(content);

		$("#kt_datatable_zero_configuration").DataTable();
	}

	</script>
	<!--end::Body-->
</html>