<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<!--begin::Head-->
	<head>
<base href="../" />
		<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes</title>
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
		<link href="resource/assets/plugins/custom/vis-timeline/vis-timeline.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
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
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">Profile Details
									<small class="text-muted fs-6 fw-normal ms-1"></small></h1>
									<!--end::Title-->
									<!--begin::Breadcrumb-->
									<ul class="breadcrumb fw-semibold fs-base my-1">
										<li class="breadcrumb-item text-muted">
											<a href="index.go" class="text-muted text-hover-primary">Home</a>
										</li>
										<li class="breadcrumb-item text-muted">Profile</li>
										<li class="breadcrumb-item text-gray-900">Profile Detaile</li>
									</ul>
									<!--end::Breadcrumb-->
								</div>
								<!--end::Info-->
								<!--begin::Actions-->
								
								<!--end::Actions-->
							</div>
						</div>
						<!--end::Toolbar-->
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl" style="background-color: white;margin: 20px;">
											<!--begin::Content-->
											<div id="kt_account_settings_profile_details" class="collapse show">
												<!--begin::Form-->
												<form action="" method="post">
													
														<div class="row mb-6" style="margin-top: 20px;">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">Avatar</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<!--begin::Image input-->
																<div class="image-input image-input-outline" data-kt-image-input="true" style="background-image: url('resource/assets/media/svg/avatars/blank.svg')">
																	<!--begin::Preview existing avatar-->
																	<div class="image-input-wrapper w-125px h-125px" style="background-image: url(resource/assets/media/avatars/300-1.jpg)"></div>
																	<!--end::Preview existing avatar-->
																	<!--begin::Label-->
																	<label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="change" data-bs-toggle="tooltip" title="Change avatar">
																		<i class="ki-duotone ki-pencil fs-7">
																			<span class="path1"></span>
																			<span class="path2"></span>
																		</i>
																		<!--begin::Inputs-->
																		<input type="file" name="avatar" accept=".png, .jpg, .jpeg" />
																		<input type="hidden" name="avatar_remove" />
																		<!--end::Inputs-->
																	</label>
																	<!--end::Label-->
																	<!--begin::Cancel-->
																	<span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="cancel" data-bs-toggle="tooltip" title="Cancel avatar">
																		<i class="ki-duotone ki-cross fs-2">
																			<span class="path1"></span>
																			<span class="path2"></span>
																		</i>
																	</span>
																	<!--end::Cancel-->
																	<!--begin::Remove-->
																	<span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="remove" data-bs-toggle="tooltip" title="Remove avatar">
																		<i class="ki-duotone ki-cross fs-2">
																			<span class="path1"></span>
																			<span class="path2"></span>
																		</i>
																	</span>
																	<!--end::Remove-->
																</div>
																<!--end::Image input-->
																<!--begin::Hint-->
																<div class="form-text">Allowed file types: png, jpg, jpeg.</div>
																<!--end::Hint-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														
														
														
														<div class="row mb-6">
															<label class="col-lg-4 col-form-label required fw-semibold fs-6">이름</label>
															<div class="col-lg-8 fv-row">
																<input type="text" name="" class="form-control" placeholder="이름" value="김동동" />
															</div>
														</div>
														
														
														<div class="row mb-6">
															<label class="col-lg-4 col-form-label required fw-semibold fs-6">전화번호</label>
															<div class="col-lg-8 fv-row">
																<input type="tel" name="" class="form-control" placeholder="전화번호" value="010-1234-1234" oninput="oninputPhone(this)"/>
															</div>
														</div>
														
														
														
														
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label required fw-semibold fs-6">주소</label>
															<div class="col-lg-8 fv-row">
																<input type="button" onclick="findlocation()" class="btn btn-primary" id="kt_toolbar_primary_button" value="주소 찾기" style="float: right;margin-bottom: 5px;"/>
															</div>
															<label class="col-lg-4 col-form-label fw-semibold fs-6"></label>
															<div class="col-lg-8 fv-row" style="float: right">
																<input type="text" class="form-control" placeholder="주소" id="roadaddress"/>
															</div>
															
															<label class="col-lg-4 col-form-label fw-semibold fs-6"></label>
															<div class="col-lg-8 fv-row" style="float: right;margin-top: 5px;">
																<input type="text" class="form-control" placeholder="상세 주소" id="detailAddress"/>
															</div>	
															
															<input type="text" class="form-control" placeholder="우편번호" hidden="true" id="post_num"/>
															<input type="text" class="form-control" placeholder="지번" hidden="true" id="jibunAddress"/>
															<span id="guide" style="color:#999;display:none"></span>
															<input type="text" class="form-control" placeholder="참고항목" id="extraAddress" hidden="true"/>
														</div>
														
								
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label fw-semibold fs-6">비밀번호</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<input type="password" name="" class="form-control" placeholder="변경할 비밀번호" value="" />
															</div>
															<!--end::Col-->
														</div>
														
														<div class="row mb-6">
															<label class="col-lg-4 col-form-label fw-semibold fs-6">비밀번호 확인</label>
															
															<div class="col-lg-8 fv-row">
																<input type="password" name="" class="form-control" placeholder="비밀번호 확인" value="" />
															</div>
														</div>
														
													<div class="card-footer d-flex justify-content-end py-6">
														<button type="submit" class="btn btn-primary" id="kt_account_profile_details_submit">저장</button>
													</div>
												</form>
												
										</div>
								
								
							</div>
						</div>
						
						<!--end::Post-->
					
						
						
						
						
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
		<script src="resource/assets/plugins/custom/vis-timeline/vis-timeline.bundle.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/index.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/map.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/worldLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/continentsLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/usaLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/worldTimeZonesLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/geodata/worldTimeZoneAreasLow.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/percent.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/radar.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->
		<script src="resource/assets/js/widgets.bundle.js"></script>
		<script src="resource/assets/js/custom/widgets.js"></script>
		<script src="resource/assets/js/custom/apps/chat/chat.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/type.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/budget.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/settings.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/team.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/targets.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/files.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/complete.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/main.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-app.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/users-search.js"></script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
									<script>
    								//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    								function findlocation() {
        								new daum.Postcode({
            								oncomplete: function(data) {
                								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                								// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                								var roadAddr = data.roadAddress; // 도로명 주소 변수
                								var extraRoadAddr = ''; // 참고 항목 변수

                								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
                								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                								if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    								extraRoadAddr += data.bname;
                								}
                								// 건물명이 있고, 공동주택일 경우 추가한다.
                								if(data.buildingName !== '' && data.apartment === 'Y'){
                   									extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                								}
                								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                								if(extraRoadAddr !== ''){
                    								extraRoadAddr = ' (' + extraRoadAddr + ')';
                								}

                								// 우편번호와 주소 정보를 해당 필드에 넣는다.
                								document.getElementById('post_num').value = data.zonecode;
                								document.getElementById("roadaddress").value = roadAddr;
                								document.getElementById("jibunAddress").value = data.jibunAddress;
                
                								// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                								if(roadAddr !== ''){
                    								document.getElementById("extraAddress").value = extraRoadAddr;
                								} else {
                    								document.getElementById("extraAddress").value = '';
                								}

                								var guideTextBox = document.getElementById("guide");
                								// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                								if(data.autoRoadAddress) {
                    								var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    								guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    								guideTextBox.style.display = 'block';
			
                								} else if(data.autoJibunAddress) {
                    								var expJibunAddr = data.autoJibunAddress;
                    								guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    								guideTextBox.style.display = 'block';
                								} else {
                    								guideTextBox.innerHTML = '';
                    								guideTextBox.style.display = 'none';
                								}
            								}
        								}).open();
    								}
									</script>
									
									<script>
									function oninputPhone(target) {
    									target.value = target.value
        								.replace(/[^0-9]/g, '')
        								.replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
									}
									</script>
	</body>
	<!--end::Body-->
</html>