<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<base href="../../" />
	<title>UStore</title>
	<meta charset="utf-8" />
	<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
	<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="canonical" href="https://preview.keenthemes.com/craft" />
	<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
	<!--begin::Fonts(mandatory for all pages)-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
	<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
	<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<style type="text/css">
		.global-validation{
			color: red;
			visibility: hidden;
		}
		.field-validation{
			color: red;
			visibility: hidden;
		}
	</style>
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
			<div class="d-flex flex-column flex-lg-row-auto w-xl-600px positon-xl-relative" style="background: #fffff8;">
				<!--begin::Wrapper-->
				<div class="d-flex flex-column position-xl-fixed top-0 bottom-0 w-xl-900px scroll-y" style="background-image: url(/resource/assets/media/logos/error.png); background-size: cover;">
				</div>
			</div>
			<div class="d-flex flex-column flex-lg-row-fluid py-10" style="margin-left: 100px">
				<div class="d-flex flex-center flex-column flex-column-fluid">
					<div class="w-lg-500px p-10 p-lg-15 mx-auto">
						<div class="text-center mb-10  h-250px" style="background-image: url(/resource/assets/media/logos/error_server.png); background-size: cover;">
						</div>
						<div class="text-center">
							<button type="button" id="kt_sign_in_submit" class="btn btn-lg btn-primary w-100 mb-5">
								<span class="indicator-label">이전으로</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>var hostUrl = "/";</script>
	<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
	<script src="resource/assets/js/scripts.bundle.js"></script>
</body>
<script>
	$('#kt_sign_in_submit').on('click', function(){
		location.href = '/employee/home';
	})
	
</script>
</html>