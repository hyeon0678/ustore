<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<!--begin::Head-->
	<head>
		<base href="../../" />
		<title>USstore</title>
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
		<!-- <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
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
			.content_tree{
				margin: 20px 50px;
				padding: 20px;

			}
		</style>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
		<jsp:include page="/views/common/header.jsp"></jsp:include>
		<!--begin::Theme mode setup on page load-->
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::Main-->
		<!--begin::Root-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid" style="background-color: white;">
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">

					<!--================================메인 내용들어가는부분================================================-->
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 30px; background-color: #fffff8; margin-left: 30px"> 
						<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
						<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">메일 상세 보기</h1>

						<!--begin::Content-->
									<div class="flex-lg-row-fluid ms-lg-7 ms-xl-10" style="width: 1000px; margin-top: 20px; margin-left: 50px;">
										<!--begin::Card-->
										<div class="card" style="background-color: white;">
											<div class="card-header  py-5 gap-5" style="background-color: white; justify-content: flex-end;">
												<!--begin::Actions-->
												<div class="d-flex">
													<!--begin::Delete-->
													<a href="#" class="btn btn-sm btn-icon btn-light btn-active-light-primary me-2" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
														<i class="ki-duotone ki-trash fs-2 m-0">
															<span class="path1"></span>
															<span class="path2"></span>
															<span class="path3"></span>
															<span class="path4"></span>
															<span class="path5"></span>
														</i>
													</a>
													<!--end::Delete-->
												</div>
												<!--end::Actions-->
												<!--begin::Pagination-->
												<div class="d-flex align-items-center">

												</div>
												<!--end::Pagination-->
											</div>
											<div class="card-body">
												<!--begin::Title-->
												<div class="d-flex flex-wrap gap-2 justify-content-between mb-8" >
													<div class="d-flex align-items-center flex-wrap gap-2" style="margin-bottom: 20px; display: flex; align-items: center;">
														<!--begin::Heading-->
														<h2>제목 : </h2><h2 class="fw-semibold me-3 my-1">안녕 하십니다 롯대 오리온 식품 개발팀 김댕댕 과장 입니다.</h2>
														<!--begin::Heading-->
													</div>
													<div class="d-flex">
												</div>
												<!--end::Title-->
												<!--begin::Message accordion-->
												<div data-kt-inbox-message="message_wrapper">
													<!--begin::Message header-->
													<div class="d-flex flex-wrap gap-2 flex-stack cursor-pointer" data-kt-inbox-message="header">
														<!--begin::Author-->
														<div class="d-flex align-items-center">
															<div class="pe-5">
																<!--begin::Author details-->
																<div class="d-flex align-items-center flex-wrap gap-1">
																	<span>글쓴이 : </span><a href="#" class="fw-bold text-gray-900 text-hover-primary">김장미</a>																	
																</div>
																<!--end::Author details-->
																<!--begin::Message details-->
																<div data-kt-inbox-message="details">																	
																</div>
																<!--end::Message details-->
																<!--begin::Preview message-->
																<div class="text-muted fw-semibold mw-450px d-none" data-kt-inbox-message="preview">With resrpect, i must disagree with Mr.Zinsser. We all know the most part of important part....</div>
																<!--end::Preview message-->
															</div>
														</div>
														<!--end::Author-->
													</div>
													<!--end::Message header-->
													<!--begin::Message content-->
													<div class="collapse fade show" data-kt-inbox-message="message">
														<div class="py-5">
															<p>Hi Bob,</p>
															<p>With resrpect, i must disagree with Mr.Zinsser. We all know the most part of important part of any article is the title.Without a compelleing title, your reader won't even get to the first sentence.After the title, however, the first few sentences of your article are certainly the most important part.</p>
															<p>Jornalists call this critical, introductory section the "Lede," and when bridge properly executed, it's the that carries your reader from an headine try at attention-grabbing to the body of your blog post, if you want to get it right on of these 10 clever ways to omen your next blog posr with a bang</p>
															<p>Best regards,</p>
															<p class="mb-0">Jason Muller</p>
														</div>
													</div>
													<!--end::Message content-->
												</div>
												<!--end::Message accordion-->
											</div>
										</div>
										<!--end::Card-->
										<div class="card-footer  py-5 gap-5" style="background-color: white; justify-content: flex-end;">
												<!--begin::Actions-->
												<div class="d-flex">
													<div class="px-15 px-10">
														<ul class="upload_ul">
															<li class="upload_li">
																<div>첨부파일 1</div>
																<div class="upload_cancel badge badge-light fs-8">x</div>
															</li>
														</ul>
													</div>
													<input type="button" class="btn btn-primary" value="저장"/>
												</div>
												<!--end::Actions-->
												<!--begin::Pagination-->
												<div class="d-flex align-items-center">
													

												</div>
												<!--end::Pagination-->
											</div>
									</div>
									<!--end::Content-->

					<!--==============================================끝부분 메인================================================================-->
						

				</div>
				<!--end::Inbox App - Messages -->
			</div>
			<!--end::Container-->
		</div>
		<!--end::Post-->
		<!--========================================================서브 사이드바 끝==============================================================-->

						
						
						
									
										


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
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
		

	function findlocation() {
		new daum.Postcode({
        oncomplete: function(data) {
               
               if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                       addr = data.roadAddress;
                   } else { // 사용자가 지번 주소를 선택했을 경우(J)
                       addr = data.roadAddress;
                   }
               
               $('#post_num').val(data.zonecode);
               $('#roadaddress').val(addr);
            }
         }).open();
      }
	</script>

</html>