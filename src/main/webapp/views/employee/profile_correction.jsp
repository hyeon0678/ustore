<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<!--begin::Head-->
<head>
<base href="../" />
<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by
	KeenThemes</title>
<meta charset="utf-8" />
<link rel="canonical" href="https://preview.keenthemes.com/craft" />
<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<link href="resource/assets/plugins/custom/vis-timeline/vis-timeline.bundle.css" rel="stylesheet" type="text/css" /> 
<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" /> 
<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
<style>
.chart-div {
	display: flex;
	height: 500px;
	margin-bottom: 20px;
}

.chart-body-div {
	width: 45%;
	margin: 10px 20px;
}
</style>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	<div class="d-flex flex-column flex-root">
		<!--begin::Page-->
		<div class="page d-flex flex-row flex-column-fluid">
			<!--begin::Wrapper-->
			<div class="wrapper d-flex flex-column flex-row-fluid"
				id="kt_wrapper">
				<!--begin::Content-->
				<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content"">
				<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
					<div class="toolbar" id="kt_toolbar">
						<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
							<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
								<!--begin::Title-->
								<h1 class="text-gray-900 fw-bold my-1 fs-2">프로필 수정
									<small class="text-muted fs-6 fw-normal ms-1"></small>
								</h1>
							</div>
						</div>
					</div>
					<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
						<div class="container-xxl"
							style="background-color: white; margin: 20px;">
							<div id="kt_account_settings_profile_details"
								class="collapse show">
								<form action="" method="post">
									<div class="row mb-6" style="margin-top: 20px;">
										<label class="col-lg-4 col-form-label fw-semibold fs-6">사진</label>
										<div class="col-lg-8">
											<div class="image-input image-input-outline"
												data-kt-image-input="true"
												style="background-image: url('/photo/'+${photo})">
												<div class="image-input-wrapper w-125px h-125px"
													style="background-image: url(resource/assets/media/avatars/300-1.jpg)"></div>
												<label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
													data-kt-image-input-action="change"
													data-bs-toggle="tooltip" title="Change avatar"> 
													<i class="ki-duotone ki-pencil fs-7"> 
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
													<input type="file" name="avatar" accept=".png, .jpg, .jpeg" /> 
													<input type="hidden" name="avatar_remove" />
												</label>
												<span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
													data-kt-image-input-action="cancel"
													data-bs-toggle="tooltip" title="Cancel avatar"> 
													<i class="ki-duotone ki-cross fs-2"> 
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</span>
												<span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
													data-kt-image-input-action="remove"
													data-bs-toggle="tooltip" title="Remove avatar"> 
													<i class="ki-duotone ki-cross fs-2"> 
														<span class="path1"></span>
														<span class="path2"></span>
													</i>
												</span>
											</div>
											<div class="form-text">Allowed file types: png, jpg, jpeg.</div>
										</div>
									</div>
									<div class="row mb-6">
										<label class="col-lg-4 col-form-label required fw-semibold fs-6">이름</label>
										<div class="col-lg-8 fv-row">
											<input type="text" name="empName" class="form-control" placeholder="이름" value="${empInfo.empName}" />
										</div>
									</div>
									<div class="row mb-6">
										<label
											class="col-lg-4 col-form-label required fw-semibold fs-6">전화번호</label>
										<div class="col-lg-8 fv-row">
											<input type="tel" name="empPhone" class="form-control" placeholder="전화번호" value="${empInfo.empPhone}"
												oninput="oninputPhone(this)" />
										</div>
									</div>
									<div class="row mb-6">
										<label
											class="col-lg-4 col-form-label required fw-semibold fs-6">주소</label>
										<div class="col-lg-8 fv-row">
											<input type="button" onclick="findlocation()" class="btn btn-primary" id="kt_toolbar_primary_button"
												value="주소 찾기" style="float: right; margin-bottom: 5px;" />
										</div>
										<label class="col-lg-4 col-form-label fw-semibold fs-6"></label>
										<div class="col-lg-8 fv-row" style="float: right; margin-top: 5px;">
											<input type="text" class="form-control" placeholder="우편번호" id="post_num" name="empZipcode" value="${empInfo.empZipcode}"/> 
										</div>
										<label class="col-lg-4 col-form-label fw-semibold fs-6"></label>
										<div class="col-lg-8 fv-row" style="float: right; margin-top: 5px;">
											<input type="text" class="form-control" placeholder="도로명주소" id="roadaddress" value="${empInfo.empRoadAddr}" name="empRoadAddr"/>
										</div>
										<label class="col-lg-4 col-form-label fw-semibold fs-6"></label>
										<div class="col-lg-8 fv-row" style="float: right; margin-top: 5px;">
											<input type="text" class="form-control" placeholder="상세 주소" id="detailAddress" value="${empInfo.empDetailAddr}" name="empDetailAddr"/>
										</div>
									</div>
									<div class="row mb-6">
										<!--begin::Label-->
										<label class="col-lg-4 col-form-label fw-semibold fs-6">비밀번호</label>
										<!--end::Label-->
										<!--begin::Col-->
										<div class="col-lg-8 fv-row">
											<input type="password" name="empPw" class="form-control" placeholder="변경할 비밀번호" value="" />
										</div>
									</div>

									<div class="row mb-6">
										<label class="col-lg-4 col-form-label fw-semibold fs-6">비밀번호 확인</label>
										<div class="col-lg-8 fv-row">
											<input type="password" name="pwConf" class="form-control" placeholder="비밀번호 확인" value="" />
											<p class="global-validation">아이디 혹은 비밀번호를 확인해주세요</p>
										</div>
									</div>

									<div class="card-footer d-flex justify-content-end py-6">
										<button type="submit" class="btn btn-primary"
											id="kt_account_profile_details_submit">저장</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>var hostUrl = "resource/assets/";</script>
<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
<script src="resource/assets/js/scripts.bundle.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	let elements = [];
	
	$(document).ready(function(){
		headerOnReady();		
	})
	
	function findlocation() {
		new daum.Postcode({
			oncomplete: function(data) {		
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우
                    addr = data.roadAddress;
                }
				
				$('#post_num').val(data.zonecode);
				$('#roadaddress').val(addr);
			}
		}).open();
	}
	
	function getElems(){
		elements = [];
		elements.push($('input[name=empName]'));
		elements.push($('input[name=empPhone]'));
		elements.push($('input[name=empZipcode]'));
		elements.push($('input[name=empRoadAddr]'));
		elements.push($('input[name=empDetailAddr]'));
		elements.push($('input[name=empRoadAddr]'));
		elements.push($('input[name=empDetailAddr]'));
		return elements;
	}
	
	//validation
	function validation(){
		let elements = getElems();
		console.log(elements);
		for(let elem of elements){
			console.log("elem" + elem);
			console.log("elem value"+elem.val());
			if(elem.val()==''){
				let name = elemName[elem.attr('name')];
				alert(name + '의 값을 입력해주세요!');
				elem.focus();
				return false;
			}
		}
		return true;
	}
	
	$('.submit_btn').on('click', function(){
		console.log('test')
		if(validation() == true){
			$('form').submit();
		}
	});
	
	let elemName = {
			'deptName':'부서명',
			'positionType':'직책',
			'empEmergencyPhone':'비상 연락망',
			'empName':'사원명',
			'empPhone':'개인 전화번호',
			'empExtNo':'내선번호',
			'empBirth':'생년월일',
			'empZipcode':'우편번호',
			'empRoadAddr':'도로명 주소',
			'empDetailAddr':'상세 주소',
			'education':'학력',
			'schoolName':'학교 명',
			'major':'전공'
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
</html>