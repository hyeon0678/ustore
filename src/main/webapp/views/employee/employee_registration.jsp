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
					<!--================================메인 내용들어가는부분================================================-->
						
						<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">인사관리
									<small class="text-muted fs-6 fw-normal ms-1"></small></h1>
									<!--end::Title-->
									<!--begin::Breadcrumb-->
									<ul class="breadcrumb fw-semibold fs-base my-1">
										<li class="breadcrumb-item text-muted">
											<a href="index.go" class="text-muted text-hover-primary">Home</a>
										</li>
										<li class="breadcrumb-item text-muted">인사관리</li>
										<li class="breadcrumb-item text-gray-900">직원등록</li>
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
						<form action="" method="post">
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl" style="background-color: white;margin: 20px;">
								
								<div style="margin-top:20px">
								부서
								<select class="form-select" aria-label="Select example">
    								<option value="인사팀">인사팀</option>
    								<option value="회계팀">회계팀</option>
    								<option value="고객관리팀">고객관리팀</option>
    								<option value="매장관리팀">매장관리팀</option>
								</select>
								</div>
								
								<div style="margin-top:20px">
								직책
								<select class="form-select" aria-label="Select example">
    								<option value="팀장">팀장</option>
    								<option value="매니저">매니저</option>
    								<option value="팀원">팀원</option>
								</select>
								</div>
								
								<div style="margin-top:20px">
								이름
								<input type="text" name="" class="form-control" placeholder="이름을 입력해주세요"/>
								</div>
								
								<div style="margin-top:20px">
								비상 연락처
								<input type="text" name="" class= "form-control" placeholder="비상 연락망을 입력해주세요"/>
								</div>
								
								<div style="margin-top:20px">
								개인 연락처
								<input type="text" name="" class="form-control" placeholder="개인 번호를 입력해주세요"/>
								</div>
								
								<div style="margin-top:20px">
								성별
								<div class="form-check form-check-custom form-check-solid">
    								<input class="form-check-input" name="gender" type="radio" value="" id="flexRadioDefault" checked="checked"/>
    								<label class="form-check-label" for="flexRadioDefault">
        								남자
    								</label>
    								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    								<input class="form-check-input" name="gender" type="radio" value="" id="flexRadioDefault"/>
    								<label class="form-check-label" for="flexRadioDefault">
        								여자
    								</label>
								</div>
								</div>
								
								<div style="margin-top:20px">
								생년월일
								<input type="date" name="" class= "form-control"/>
								
								</div>
								
								<div style="margin-top:20px">
									<div class="d-flex flex-stack flex-wrap flex-sm-nowrap">
										<div>주소</div>
										<input type="button" onclick="findlocation()" class="btn btn-primary" id="kt_toolbar_primary_button" value="주소 찾기" />
									</div>
									<input type="text" class="form-control" placeholder="우편번호" hidden="true" id="post_num"/>
									<input type="text" class="form-control" placeholder="주소" id="roadaddress" style="margin-top: 5px;"/>
									<input type="text" class="form-control" placeholder="지번" hidden="true" id="jibunAddress"/>
									<span id="guide" style="color:#999;display:none"></span>
									<div style="margin-top: 5px">
										<input type="text" class="form-control" placeholder="상세 주소" id="detailAddress"/>
									</div>
									<input type="text" class="form-control" placeholder="참고항목" id="extraAddress" hidden="true"/>
								</div>
								
								
								
								
								
								<div style="margin-top:20px">
 									최종 학력
								<select class="form-select" aria-label="Select example">
    								<option value="초등학교 졸업">초등학교 졸업</option>
    								<option value="중학교 졸업">중학교 졸업</option>
    								<option value="고등학교 졸업">고등학교 졸업</option>
    								<option value="대학교 졸업">대학교 졸업</option>
    								<option value="직업전문학원·학교 및 기타학력 졸업">직업전문학원·학교 및 기타학력 졸업</option>
								</select>
								
								<div style="margin-top: 5px">
									<input type="text" class="form-control" placeholder="대학교"/>
								</div>
								<div style="margin-top: 5px">
									<input type="text" class="form-control" placeholder="전공"/>								
								</div>
								</div>
								<input type="submit" class="btn btn-primary" id="kt_toolbar_primary_button" value="등록" style="margin: 20px 0px;" />
							</div>
							<!--end::Container-->
						</div>
						
						</form>
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
		<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/percent.js"></script>
		<script src="https://cdn.amcharts.com/lib/5/radar.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->
		<script src="resource/assets/js/widgets.bundle.js"></script>
		<script src="resource/assets/js/custom/widgets.js"></script>
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
	</body>
	<!--end::Body-->
</html>