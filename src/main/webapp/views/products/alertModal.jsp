<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<head>
<base href="../../../" />
<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by
	KeenThemes</title>
<meta charset="utf-8" />
<meta name="description"
	content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
<meta name="keywords"
	content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="article" />
<meta property="og:title"
	content="Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes" />
<meta property="og:url"
	content="https://themes.getbootstrap.com/product/craft-bootstrap-5-admin-dashboard-theme" />
<meta property="og:site_name" content="Craft by Keenthemes" />
<link rel="canonical" href="https://preview.keenthemes.com/craft" />
<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
<!--begin::Fonts(mandatory for all pages)-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
<!--end::Fonts-->
<!--begin::Vendor Stylesheets(used for this page only)-->
<link
	href="resource/assets/plugins/custom/datatables/datatables.bundle.css"
	rel="stylesheet" type="text/css" />
<!--end::Vendor Stylesheets-->
<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
<link href="resource/assets/plugins/global/plugins.bundle.css"
	rel="stylesheet" type="text/css" />
<link href="resource/assets/css/style.bundle.css" rel="stylesheet"
	type="text/css" />
<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css"
	rel="stylesheet" type="text/css" />
<!--end::Global Stylesheets Bundle-->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
<style>
.custom-input-group {
	position: absolute;
	top: 800px; /* 원하는 수직 위치 (위치는 조절 가능합니다.) */
	left: 20px; /* 원하는 수평 위치 (위치는 조절 가능합니다.) */
}

.chart-div {
	display: flex;
	height: 500px;
	margin-bottom: 20px;
}

.chart-body-div {
	width: 45%;
	margin: 10px 20px;
}
button {
  background-color: white;
  border: white;
  box-shadow: none;
}
button i.bi {
  font-size: 1.5rem; /* 원하는 크기로 조절하세요 */
  
}
</style>

</head>

<!--end::Head-->
<!--begin::Body-->
<body id="kt_body"
	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
	<!--begin::Theme mode setup on page load-->
	<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
	<!--end::Theme mode setup on page load-->
	<!--begin::Header 헤더 시작 -->
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	<!--end::Header 헤더 닫기-->
	<!--begin::Main-->
	<!--begin::Root-->
	<button id="myButton">alert 창버튼</button>
					<!--end::Wrapper-->

		<!--end::Page-->

	<!--end::Root-->

	<!--begin::Javascript-->
	<script>var hostUrl = "/";</script>
	<!--begin::Global Javascript Bundle(mandatory for all pages)-->
	<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
	<script src="resource/assets/js/scripts.bundle.js"></script>
	<!--end::Global Javascript Bundle-->
	<!--begin::Vendors Javascript(used for this page only)-->
	<script
		src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
	<!--end::Vendors Javascript-->
	<!--begin::Custom Javascript(used for this page only)-->
	<script
		src="resource/assets/js/custom/apps/ecommerce/catalog/categories.js"></script>
	<script src="resource/assets/js/widgets.bundle.js"></script>
	<script src="resource/assets/js/custom/widgets.js"></script>
	<!--end::Custom Javascript-->
	<!--end::Javascript-->

	
	<script>
	function showSuccessMessage(message) {
	    Swal.fire({
	        text: message,
	        icon: 'success',
	        buttonsStyling: false,
	        confirmButtonText: '확인',
	        customClass: {
	            confirmButton: 'btn btn-primary'
	        }
	    }).then(() => { 
	    // 이부분에 확인 눌렀을 때 내용 추가 
	    
	    	
	    });
	}
	  document.getElementById('myButton').addEventListener('click', function() {
		   
	        
	    	 showSuccessMessage('모달불러오기 완료');
	     });

</script>
</sec:authorize>
</body>
<!--end::Body-->
</html>