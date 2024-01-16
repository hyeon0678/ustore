<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<!--begin::Head-->
	<base href="../../" />
	<head>
		<title>USstore</title>
		<meta charset="utf-8" />
		<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
		<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="canonical" href="https://preview.keenthemes.com/craft" />
		
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
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
			
			input[type=file]::file-selector-button {
			  width: 80px;
			  height: 30px;
			  background: #C6DA52;
			  border-radius: 10px;
			  color: white;
			  cursor: pointer;
			  border:none;
			  &:hover {
			    background: white;
			    color: #C6DA52;
			  }
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
						<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">Membership</h1>
						<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="" style="display:flex; margin-left:11%;  justify-content: space-between;">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									
								</div>
								<!--end::Info-->
							</div>
						</div>
						<!--end::Toolbar-->
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl">
								<!--begin::Inbox App - Messages -->
								<div class="d-flex flex-column flex-lg-row">
									<!--begin::Sidebar-->
									<div class="d-none d-lg-flex flex-column flex-lg-row-auto w-400 w-lg-400px" data-kt-drawer="true" data-kt-drawer-name="inbox-aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="500px" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_inbox_aside_toggle">
										<!--begin::Sticky aside-->
										<div class="card card-flush mb-0" data-kt-sticky="false" data-kt-sticky-name="inbox-aside-sticky" data-kt-sticky-offset="{default: false, xl: '100px'}" data-kt-sticky-width="{lg: '275px'}" data-kt-sticky-left="auto" data-kt-sticky-top="100px" data-kt-sticky-animation="false" data-kt-sticky-zindex="95">
											<!--begin::Aside content-->
											<div class="card-body">
												<!--==========================================서브 사이드바 컨텐츠 리스트==================================================================-->											
													<!--begin::Menu-->
													<div class="menu menu-column menu-rounded menu-state-bg menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary ">
														<h2>사업자 멤버쉽</h2>
														<h3 style="color: red;">* 반드시 사업자 번호가 있어야 등록가능 *</h3><br/><br/>
														<span>1. 포인트 적립율은 회원의 등급에 따라 다르게 책정 됩니다. </span>
														<span>&nbsp;&nbsp;스탠다드는 구매금액의 1%, 프리미엄은 구매금액의 3% 가 적립됩니다.</span>
														<span>&nbsp;&nbsp;단, 구매금액에서 사용한 포인트는 제외 한 실 결제금액에 한하여 적립됩니다.</span><br/>
														<span>2. 회원의 등급에 따라 최대 누적 포인트의 상한선이 다르게 책정 되어 스탠다드는 최대 50만원 프리미엄은 최대 100만원까지 누적할 수 있습니다.</span>
														<span>&nbsp;&nbsp;단, 멤버쉽을 기간연장 하거나 다시 새롭게 등록한다 면 리셋 될수 있습니다.</span><br/>
														<span>3. 멤버쉽의 판매금액은 스탠다드 3만원 프리미엄 7만원 입니다.</span>
														<span>&nbsp;&nbsp;단, 사업자 멤버쉽은 5천원 활인된 가격으로 구매 할 수 있습니다.</span><br/>
														<span style="color: red;">* 멤버쉽의 만료일자는 등록한 날부터 1년 후 입니다 *</span><br/>
														<span style="color: red;">* 모든 사항은 입력 되어야 합니다. *</span>
													</div>
													<!--end::Menu-->													
											</div>
											<!--end::Aside content-->
										</div>
										<!--end::Sticky aside-->
									</div>
									<!--end::Sidebar-->
									<!--=========================================================== 회원 리스트 들어가는 자리===================================================================-->
									<!--begin::Content-->
									<div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
										<!--begin::Card-->
										<div class="card">
									<!--===============================================^ 카드의 시작===============================================================-->
									<!--begin::Form-->
												<form id="kt_account_profile_details_form" class="form" action="customer/joinbis" method="post" enctype="multipart/form-data">
													<!--begin::Card body-->
													<div class="card-body border-top p-9">
														<!--begin::Actions-->
														<input type="hidden" name="memberType" value="83"/>
														<input type="hidden" name="memberState" value="84"/>
														<div style="display: flex; align-items: center; justify-content: flex-end;">
															<!--begin::Col 드롭박스 >> 회원 상태-->
															<input type="hidden" id="changeinput" value=""/>
															<div class="col-lg-8 fv-row" style="width: 150px; height: 30px; margin-right: 20px; margin-bottom: 10px;   ">
																<select name="gradeIdx" class="form-select " style="padding-top: 0px; padding-bottom: 0px; background-color: white;" onchange="selectboxchage(this.value);"> 
																	<option  value="80">스탠다드</option>																	
																	<option  value="81">프리미엄</option>
																</select>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Actions-->
													
														<!--begin::Input group-->
														<div class="row mb-6" >
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label  fw-semibold fs-6">사업자 번호</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row" style="display: flex; align-items: center;">
																<input type="text" name="businessNum" class="form-control form-control-lg form-control-solid" placeholder="사업자번호를 입력해 주세요." value="" style="width: 300px; margin-right: 10px"/>
																<input type="button" name="photos"  id="file" value="사업자번호 확인" onclick="numfind()" style="cursor: pointer; border-radius: 5px; background-color: #C6DA52; color: white; border: none;"/>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6" >
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label  fw-semibold fs-6">사업자 등록증</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row" style="display: flex; align-items: center;">																
																<input type="file" name="photos"  id="file" />
															</div> 															
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label  fw-semibold fs-6">이름</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<input type="text" name="name" class="form-control form-control-lg form-control-solid" placeholder="이름을 입력해주세요." value="" />
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label  fw-semibold fs-6">연락처</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<input type="text" name="contactNum" class="form-control form-control-lg form-control-solid" placeholder="전화번호를 입력해주세요." value=""  oninput="oninputPhone(this)" maxlength="13"/>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label  fw-semibold fs-6">등록/만료 일자</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<span class="form-control form-control-lg form-control-solid"> ${nowdate} ~ ${exdate}</span>
																<span style="color: red; font-size: small; float: right;">* 일자를 임의로 설정 할 수 없습니다. *</span>
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6" style="display: flex; align-items: center;">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label  fw-semibold fs-6" style="margin-right: 10px;">우편번호</label>
															<!--end::Label-->
															<!--begin::Col-->
																<input type="text" name="postalCode" id="post_num"  class="form-control form-control-lg form-control-solid" placeholder="우편번호를 입력해주세요." value="" style="width: 400px;"/>
																<input type="button" onclick="findlocation()" class="btn btn-primary" id="kt_toolbar_primary_button" value="주소 찾기" style="width: 100px; height: 40px; margin-left: 5px;"/>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label  fw-semibold fs-6">주소</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<input type="text" id="roadaddress" name="streetAddress" class="form-control form-control-lg form-control-solid" placeholder="도로명 주소를 입력해주세요." value="" />
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label  fw-semibold fs-6">상세주소</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<input type="text" name="detailAddress" class="form-control form-control-lg form-control-solid" placeholder="상세주소를 입력해주세요." value="" />
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label  fw-semibold fs-6">생년월일</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<input type="date" name="birthdate" class= "form-control form-control-lg form-control-solid"/>	
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="row mb-6">
															<!--begin::Label-->
															<label class="col-lg-4 col-form-label  fw-semibold fs-6">성별</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 fv-row">
																<!--begin::Options-->
																<div class="d-flex align-items-center mt-3">
																	<!--begin::Option-->
																	<label class="form-check form-check-custom form-check-inline form-check-solid me-5">
																		<input class="form-check-input" name="gender" type="radio" value="남" checked/>
																		<span class="fw-semibold ps-2 fs-6">남자</span>
																	</label>
																	<!--end::Option-->
																	<!--begin::Option-->
																	<label class="form-check form-check-custom form-check-inline form-check-solid">
																		<input class="form-check-input" name="gender" type="radio" value="여" />
																		<span class="fw-semibold ps-2 fs-6">여자</span>
																	</label>
																	<!--end::Option-->
																</div>
																<!--end::Options-->
															</div>
															<!--end::Col-->
														</div>
														<!--end::Input group-->
														
													<!--begin::Actions-->
													<div class="card-footer d-flex justify-content-end py-6 px-9">
														<button type="reset" class="btn btn-light btn-active-light-primary me-2" onclick="location.href='customer/home'">취소</button>
														<button type="submit" class="btn btn-primary" id="kt_account_profile_details_submit">회원 등록</button>
													</div>
													<!--end::Actions-->
												</form>
												<!--end::Form-->
									

									<!--===============================================V 카드의 끝===============================================================-->
										</div>
										<!--end::Card-->
									</div>
									<!--end::Content-->
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
		
	
	
	
	
	let fileList = [];	
	function numfind(){
		
		var businessNum = $('input[name="businessNum"]').val();
		
		$.ajax({
			type:'get',
			url:'customer/joinbis.ajax/bisnum', 
			data:{'bisnum':businessNum},
			dataType:'JSON',
			success:function(obj){
				console.log(obj.result);
				InfoModal(obj.result);
			},
			error:function(e){
				console.log(e);
			}
			});//	
		
		
		
	}
	
	

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
	
	function oninputPhone(target) {
		target.value = target.value
			.replace(/[^0-9]/g, '')
			.replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
	}
	
	
	
	
	
	
	
	</script>

</html>