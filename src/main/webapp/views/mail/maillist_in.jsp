<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
			.comm-content-body{
				height: 100%;
				padding: auto;
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
					<!--================================ë©ì¸ ë´ì©ë¤ì´ê°ëë¶ë¶================================================-->
						<div>
							<input type="text" class="form-control form-control-solid" placeholder="ì´ë¦ì ìë ¥í´ì£¼ì¸ì" style="width: 200px; height: 40px;">
								<button type="button" class="btn btn-primary span-search-button">ê²ì</button>
						</div>
						<div class="container d-flex flex-column flex-lg-row comm-content-body" id="kt_docs_content_container">
							<div class="card card-docs flex-row-fluid mb-2" id="kt_docs_content_card"> 
								<table id="kt_datatable_zero_configuration" class="table table-row-bordered gy-5">
									<thead>
										<tr class="fw-semibold fs-6 text-center">
											<th><input type="checkbox"/></th>
											<th>ì ëª©</th>
											<th>ë°ì ì(íëª)</th>
											<th>ë°ì ì¼</th>
											<th>ì½ì/ìì½ì</th>
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
				{ data: 'ì ëª©' },
				{ data: 'ë°ì ì(íëª)' },
				{ data: 'ë°ì ì¼' },
				{ data: 'ì½ì/ìì½ì' }
			],
			processing: true,
			serverSide: true
		});

	</script>
	<!--end::Body-->
</html>