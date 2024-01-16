<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<!--begin::Head-->
<head>
<base href="../" />
<title>UStore | 프로필 변경</title>
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
								<form action="/employee/correction" method="post" enctype="multipart/form-data">
									<div class="row mb-6" style="margin-top: 20px;">
										<label class="col-lg-4 col-form-label fw-semibold fs-6">사진</label>
										<div class="col-lg-8">
											<div class="image-input image-input-outline empImg"
												data-kt-image-input="true"
												style="background-image: url()">
												<div class="image-input-wrapper w-125px h-125px"
													style="background-image: url('/ustore/photo/${empInfo.photo}')"></div>
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
										<label class="col-lg-4 col-form-label required fw-semibold fs-6">이메일</label>
										<div class="col-lg-8 fv-row">
							                <input type="text" name="empEmail" value="${empInfo.empEmail}" class="form-control" placeholder="개인 이메일 ex)example@example.com">
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
									</div >
									<div>
										<div class="form-check col-lg-8 fv-row">
									    	<input class="form-check-input" name = "isChangePw" type="checkbox" value="checked" id="flexCheckDefault" />
										    <label class="form-check-label" for="flexCheckDefault">
										        비밀번호 변경
										    </label>
										</div>
										<div class="change-pw-div" style="display: none;">
											<div class="row mb-6">
												<label class="col-lg-4 col-form-label fw-semibold fs-6">비밀번호</label>
												<div class="col-lg-8 fv-row">
													<input type="password" name="empPw" class="form-control" placeholder="변경할 비밀번호" value="" />
													<p class="pattern-field-validation fs-8" style="color: red;">비밀번호: 8~16자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.
														</br>
														사용 가능 특수문자 : @$!%*#?&
													</p>
												</div>
											</div>
			
											<div class="row mb-6">
												<label class="col-lg-4 col-form-label fw-semibold fs-6">비밀번호 확인</label>
												<div class="col-lg-8 fv-row">
													<input type="password" name="pwConf" class="form-control" placeholder="비밀번호 확인" value="" />
													<p class="field-validation fs-8" style="color: red;">비밀번호가 일치하지 않습니다!</p>
												</div>
											</div>
										</div>
									</div>
								</form>
								<div class="card-footer d-flex justify-content-end py-6">
										<button type="button" class="btn btn-primary"
											id="kt_account_profile_details_submit">저장</button>
								</div>
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
	let regex = new RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
	let pwReg = new RegExp("(?=.*[A-Za-z])(?=.*[0-9])(?=.*[@$!%*#?&])[A-Za-z0-9@$!%*#?&^]{8,16}")
	let pw = ''
	let pwConf = ''
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
	
	$('#flexCheckDefault').on('click', function(){
		if($(this).is(":checked")){
			$('.change-pw-div').css({"display":"block"});
		}else{
			$('.change-pw-div').css({"display":"none"});
		}
	})
	
	$('input[name=pwConf]').on('keyup', function(){
		pwConf = $(this).val();
		pw = $('input[name=empPw]').val();
		console.log('pw : '+pw+'pwConf:'+pwConf);
		if(pwConf== pw){
			$('.field-validation').css({"display":"none"});
		}else{
			$('.field-validation').css({"display":"block"});
		}
	});
	
	$('input[name=empPw]').on('keyup', function(){
		pwConf = $('input[name=pwConf]').val();
		pw = $(this).val();
		console.log('pw : '+pw+'pwConf:'+pwConf);
		if(pwConf== pw){
			$('.field-validation').css({"display":"none"});
		}else{
			$('.field-validation').css({"display":"block"});
		}
	});
	
	function getElems(){
		elements = [];
		elements.push($('input[name=empName]'));
		elements.push($('input[name=empEmail]'));
		elements.push($('input[name=empPhone]'));
		elements.push($('input[name=empZipcode]'));
		elements.push($('input[name=empRoadAddr]'));
		elements.push($('input[name=empDetailAddr]'));
		elements.push($('input[name=empPw]'));
		elements.push($('input[name=pwConf]'));
		return elements;
	}
	
	//validation
	function validation(){
		let elements = getElems();
		console.log(elements);
		for(let elem of elements){
			console.log("elem value"+elem.val());
			if(elem.attr('name') == 'empEmail'){
				let result = confEmail(elem.val())
				console.log("email conf : " + result)
				if(result == false){
					
					return false;
				}
			}
			if(elem.attr('name') == 'empPw'){
				if(confPw(elem) == false){
					return false;
				}
			}else if(elem.val()=='' && elem.attr('name') != 'pwConf'){
				let name = elemName[elem.attr('name')];
				let message = name + '의 값을 입력해주세요!'
				FalseModal(message)
				elem.focus();
				return false;
			}
		}
		return true;
	}
	
	function confPw(elem){
		if($('#flexCheckDefault').is(":checked")){
			let empPw = $('input[name=empPw]').val();
			console.log("empPw : "+empPw)
			if(empPw == ''){
				let message = '비밀번호를 입력해주세요!'
				FalseModal(message)
				return false;	
			}else if(!pwReg.test(empPw)){
				console.log(pwReg.test(empPw));
				let message = '비밀번호 형식이 틀렸습니다!'
				FalseModal(message)
				return false;
			}else if(pwConf != pw || pwConf == ''){
				let message = '비밀번호를 확인해주세요!'
				FalseModal(message)
				return false;	
			}
		}
	}
	
	function confEmail(email){
		console.log("email "+email)
		if(email == '' || !regex.test(email)){
			let message = '이메일이 형식에 맞지 않습니다!'
				FalseModal(message)
			return false;
		}
	}
	
	let elemName = {
			'empName':'사원명',
			'empPhone':'개인 전화번호',
			'empZipcode':'우편번호',
			'empRoadAddr':'도로명 주소',
			'empDetailAddr':'상세 주소',
			'empPw':'비밀번호'
	}
	
	$('#kt_account_profile_details_submit').on('click',function(){
		if(validation() == true){
			$('form').submit();
		}
	});
	
</script>

<script>
	function oninputPhone(target) {
		target.value = target.value
			.replace(/[^0-9]/g, '')
			.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
		
		if (target.value.length >= 13) {
			console.log(target.value);
			target.value = target.value.substring(0, 13);
		    return;
		}
			
	}
</script>


</body>
</html>