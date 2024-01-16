<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<!--begin::Head-->
	<head>
<base href="../" />
		<title>UStore</title>
		<meta charset="utf-8" />
		<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
		<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta property="og:locale" content="en_US" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes" />
		<meta property="og:url" content="https://themes.getbootstrap.com/product/craft-bootstrap-5-admin-dashboard-theme" />
		<meta property="og:site_name" content="Craft by Keenthemes" />
		<link rel="canonical" href="https://preview.keenthemes.com/craft" />
		<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
		<style></style>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
		<!--begin::Theme mode setup on page load-->
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<jsp:include page="/views/common/header.jsp"></jsp:include>
		<!--end::Theme mode setup on page load-->
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
								
								</div>
							</div>
						</div>
						<form action="anboard/Write" method="post" enctype="multipart/form-data">
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<div class="container-xxl" style="background-color: white;margin: 20px;">
								<div style="margin-top:20px">
									제목
									<input type="text" name="anony_subject" class="form-control" placeholder="제목을 입력해주세요" />
								</div>
								
								<div style="margin-top:20px">
										파일
										<input type="file" name ="photos" id="file" multiple ="multiple" class="form-control" />										
									</div>
								
								<div style="margin-top:20px">
									<textarea class="form-control" name="anony_content" placeholder="내용을 입력해주세요" style="height: 600px; resize: none;"></textarea>
								</div>
								<div class="card-footer d-flex justify-content-end py-6 px-9">
									<button type="reset" onclick="confirmCancellation1()" class="btn btn-light btn-active-light-primary me-2">취소</button>
										<button type="submit" class="btn btn-primary" id="kt_account_profile_details_submit1">작성</button>
								</div>
							</div>
						</div>
					</form>
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
		<!--end::Global Javascript Bundle-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
	</body>
	<!--end::Body-->
	<script>
	
	$(function(){headerOnReady()})
	
	</script>	
	<script>
	function confirmCancellation1() {
	    Swal.fire({
	        text: '정말 취소 하시겠습니까?',
	        icon: 'info',
	        showCancelButton: true,
	        confirmButtonText: '확인',
	        cancelButtonText: '취소',
	        customClass: {
	            confirmButton: 'btn btn-danger',
	            cancelButton: 'btn btn-light'
	        }
	    }).then((result) => {
	        if (result.isConfirmed) {
	            window.location.href = '/anboard/list';
	        }
	    });
	}
</script>
	<script>

$(document).ready(function() {

    $('#kt_account_profile_details_submit1').click(function(e) {
 
        var noticeSubject = $('input[name="anony_subject"]').val();
        var noticeContent = $('textarea[name="anony_content"]').val();

 
        if (noticeSubject.trim() === '') {
        
            InfoModal('제목을 입력해주세요');
 
            e.preventDefault();
        } else if (noticeContent.trim() === '') {
  
            InfoModal('내용을 입력해주세요');
  
            e.preventDefault();
        } else {
            $('form').submit();
        }
    });
});


</script>
</html>