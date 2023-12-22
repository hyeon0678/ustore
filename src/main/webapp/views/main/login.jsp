<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
<base href="../../" />
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
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="auth-bg">

		<!--begin::Theme mode setup on page load-->
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::Main-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Authentication - Sign-in -->
			<div class="d-flex flex-column flex-lg-row flex-column-fluid">
				<!--begin::Aside-->
				<div class="d-flex flex-column flex-lg-row-auto bg-primary w-xl-600px positon-xl-relative">
					<!--begin::Wrapper-->
					<div class="d-flex flex-column position-xl-fixed top-0 bottom-0 w-xl-600px scroll-y">
						<!--begin::Header-->
						<div class="d-flex flex-row-fluid flex-column text-center p-5 p-lg-10 pt-lg-20">
							<a href="index.go" class="py-2 py-lg-20">
								<img alt="Logo" src="resource/assets/media/logos/logo-ellipse.svg" class="h-60px h-lg-70px" />
							</a>
							<h1 class="d-none d-lg-block fw-bold text-white fs-2qx pb-5 pb-md-10">Welcome to Craft</h1>
							<p class="d-none d-lg-block fw-semibold fs-2 text-white">Plan your blog post by choosing a topic creating 
							<br />an outline and checking facts</p>
						</div>
						<div class="d-none d-lg-block d-flex flex-row-auto bgi-no-repeat bgi-position-x-center bgi-size-contain bgi-position-y-bottom min-h-100px min-h-lg-350px" style="background-image: url(resource/assets/media/illustrations/sigma-1/17.png)"></div>
					</div>
				</div>
				<div class="d-flex flex-column flex-lg-row-fluid py-10">
					<div class="d-flex flex-center flex-column flex-column-fluid">
						<div class="w-lg-500px p-10 p-lg-15 mx-auto">
							<form class="form w-100" novalidate="novalidate" id="kt_sign_in_form" action="/login">
								<div class="text-center mb-10">
									<h1 class="text-gray-900 mb-3">로그인</h1>
									<p class="global-validation">아이디 혹은 비밀번호를 확인해주세요</p>
								</div>
								<div class="fv-row mb-10">
									<label class="form-label fs-6 fw-bold text-gray-900">사원번호</label>
									<input class="form-control form-control-lg form-control-solid" type="text" name="empIdx" autocomplete="off" />
									<p class="field-validation">아이디를 입력해주세요</p>
								</div>
								<div class="fv-row mb-10">
									<!--begin::Wrapper-->
									<div class="d-flex flex-stack mb-2">
										<label class="form-label fw-bold text-gray-900 fs-6 mb-0">비밀번호</label>
										<a href="authentication/sign-in/password-reset.go" class="link-primary fs-6 fw-bold"> 비밀번호 찾기 </a>
									</div>
									<input class="form-control form-control-lg form-control-solid" type="password" name="empPw" autocomplete="off" />
									<p class="field-validation">비밀번호를 입력해주세요</p>
								</div>
								<div class="text-center">
									<button type="button" id="kt_sign_in_submit" class="btn btn-lg btn-primary w-100 mb-5">
										<span class="indicator-label">로그인</span>
										<span class="indicator-progress">Please wait... 
										<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
									</button>
									
								</div>
							</form>
						</div>
					</div>
					<div class="d-flex flex-center flex-wrap fs-6 p-5 pb-0">
						<div class="d-flex flex-center fw-semibold fs-6">
							<a href="https://keenthemes.com" class="text-muted text-hover-primary px-2" target="_blank">About</a>
							<a href="https://devs.keenthemes.com" class="text-muted text-hover-primary px-2" target="_blank">Support</a>
							<a href="https://themes.getbootstrap.com/product/craft-bootstrap-5-admin-dashboard-theme" class="text-muted text-hover-primary px-2" target="_blank">Purchase</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script>var hostUrl = "/";</script>
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<script src="resource/assets/js/custom/authentication/sign-in/general.js"></script>
	</body>
	<script>
		
	</script>
</html>