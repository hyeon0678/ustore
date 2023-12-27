<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="kr">
<!--begin::Head-->

<head>
	<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes</title>
	<meta charset="utf-8" />
	<meta name="description"
		content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
	<meta name="keywords"
		content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="canonical" href="https://preview.keenthemes.com/craft" />
	<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
	<!--begin::Fonts(mandatory for all pages)-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
	<!--end::Fonts-->
	<!--begin::Vendor Stylesheets(used for this page only)-->
	<link href="assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
	<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
	<link href="assets/plugins/custom/jstree/jstree.bundle.css" rel="stylesheet" type="text/css" />
	<link href="assets/plugins/custom/" rel="stylesheet" type="text/css" />
	<!--end::Vendor Stylesheets-->
	<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
	<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />

	<link href="" rel="stylesheet" type="text/css" />
	<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
	<!--end::Global Stylesheets Bundle-->
	<script src="assets/plugins/global/plugins.bundle.js"></script>
	<script src="assets/plugins/custom/jstree/jstree.bundle.js"></script>
	<script src="assets/plugins/custom/ckeditor/ckeditor-classic.bundle.js"></script>

	<style>
		.comm-content-body {
			height: 100%;
			padding: auto;
		}

		.img-button {
			border: none;
		}

		.mail-comm {
			display: flex;
			justify-content: space-between;
			margin-right: 30px;
			margin: 5px 40px 30px 40px;
		}

		.comm-head {
			margin: 20px 0px 30px 40px;
		}

		.comm-right {
			display: flex;
		}

		.mail-elem-lable {
			width: 80px;
		}

		.mail-elem {
			display: flex;
		}
		
		.upload_li{
			display:flex;
		}
	</style>
</head>
<!--end::Head-->
<!--begin::Body-->

<body id="kt_body"
	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<!--begin::Theme mode setup on page load-->
	<script>var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
	<!--end::Theme mode setup on page load-->
	<!--begin::Main-->
	<!--begin::Root-->
	<div class="d-flex flex-column flex-root">
		<!--begin::Page-->
		<div class="page d-flex flex-row flex-column-fluid">
			<!--begin::Wrapper-->
			<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
				<!--begin::Content-->
				<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content"
					style="margin-top: 95px;">
					<!--================================메인 내용들어가는부분================================================-->
					<div class="container flex-column flex-lg-row ">
						<div class="comm-head">
							<h2>메일 보내기</h2>
						</div>
						<div class="mail-comm">
							<div class="comm-left">
							</div>
							<div class="comm-right">
								<button type="button" class="btn btn-primary span-search-button"
									style="margin-left: 10px;">메일 보내기</button>
							</div>
						</div>
					</div>

					<div class="container d-flex flex-column flex-lg-row comm-content-body"
						id="kt_docs_content_container">
						<div class="card card-docs px-15 px-10 flex-row-fluid mb-2" id="kt_docs_content_card"
							style="margin-right: 5px; width: 15%;">
							<!-- js트리 그리는 곳-->
							<div id="kt_docs_jstree_basic" style="margin-top: 10px;">
								<ul>
									<li>
										Root node 1
										<ul>
											<li data-jstree='{ "selected" : true }'>
												<a href="javascript:;">
													Initially selected </a>
											</li>
											<li
												data-jstree='{ "icon" : "ki-outline ki-geolocation text-success fs-4" }'>
												custom icon URL
											</li>
											<li data-jstree='{ "opened" : true }'>
												initially open
												<ul>
													<li data-jstree='{ "disabled" : true }'>
														Disabled Node
													</li>
													<li data-jstree='{ "type" : "file" }'>
														Another node
													</li>
												</ul>
											</li>
											<li
												data-jstree='{ "icon" : "ki-outline ki-message-text-2 text-danger fs-7" }'>
												Custom icon class (bootstrap)
											</li>
										</ul>
									</li>
									<li data-jstree='{ "type" : "file" }'>
										<a href="http://www.keenthemes.com">
											Clickable link node </a>
									</li>
								</ul>
							</div>
							<!-- js트리 끝나는 곳-->
						</div>
							<!--begin::Card-->
							<div class="card" style="width: 76%;">
								<div class="card-body p-0">
									<!--begin::Form-->
									<form id="kt_inbox_compose_form">
										<!--begin::Body-->
										<div class="d-block">
											<!--begin::To-->
											<div class="d-flex align-items-center border-bottom px-8 min-h-50px">
												<!--begin::Label-->
												<div class="text-dark fw-bold w-75px">
													To:
												</div>
												<!--end::Label-->
												​
												<!--end::CC & BCC buttons-->
											</div>
											<!--end::To-->
											<!--begin::Subject-->
											<div class="border-bottom">
												<input
													class="form-control form-control-transparent border-0 px-8 min-h-45px"
													name="compose_subject" placeholder="Subject">
											</div>
											<!--end::Subject-->

											<!--begin::Message-->
											<div id="kt_docs_ckeditor_classic">

											</div>
											<!--end::Message-->
										</div>
										<!--end::Body-->
										<div class="d-flex flex-stack flex-wrap gap-2 py-5 ps-8 pe-5 border-top">
											<div class="d-flex align-items-center me-3">
												<button class="btn btn-primary span-search-button">send</button>
											</div>
											<!--begin::Upload attachement-->
											<span
												class="btn btn-icon btn-sm btn-clean btn-active-light-primary me-2 dz-clickable"
												id="upload_btn"
												data-kt-inbox-form="dropzone_upload">
												<i class="ki-duotone ki-paper-clip fs-2 m-0"></i> </span>
											<!--end::Upload attachement-->

											
										</div>
										<div class="px-15 px-10">
												<ul class="upload_ul">
													<li class="upload_li">
														<div>첨부파일 1</div>
														<div class="upload_cancel badge badge-light fs-8">x</div>
													</li>
												</ul>	
										</div>
									</form>
								</div>
							</div>
							<!--end::Card-->

					</div>

				</div>
				<!--end::Content-->
			</div>
			<!--end::Wrapper-->
		</div>
		<!--end::Page-->

		<!--end::Root-->

		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
</body>
<script>
	var ajax = true;

	ClassicEditor
		.create(document.querySelector('#kt_docs_ckeditor_classic'))
		.then(editor => {
			console.log(editor);
		})
		.catch(error => {
			console.error(error);
		});
</script>
<!--end::Body-->

</html>