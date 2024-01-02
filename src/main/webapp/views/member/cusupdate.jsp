
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
			<div class="page d-flex flex-row flex-column-fluid" style="background-color: white;">
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">

					<!--================================메인 내용들어가는부분================================================-->
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 90px; background-color: #fffff8;">
						<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">회원정보수정</h1>
						
						<!--begin::details View-->
								<div class="card mb-5 mb-xl-10" id="kt_profile_details_view" style="align-self: center; width: 1400px; margin-top: 50px; background-color: white;">
									<!--begin::Card header-->
									<div class="card-header cursor-pointer">
										<!--begin::Card title-->
										<div class="card-title m-0">
											<h3 class="fw-bold m-0">회원번호 : ${info.member_idx}</h3>
										</div>
										<!--end::Card title-->										
									</div>
									<!--begin::Card header-->
									<!--begin::Card body-->
									<div class="card-body p-9" style="display: flex;" >
										<div style="width: 600px; ">
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" >이름</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8 fv-row">
												<input type="text" name="name" class="form-control form-control-lg form-control-solid"  value="${info.name}" />
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" >연락처</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8 fv-row">
												<input type="text" name="number" class="form-control form-control-lg form-control-solid"  value="${info.contact_num}" />
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" >생년월일</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8 fv-row">
												<input type="text" name="birthdate" class="form-control form-control-lg form-control-solid"  value="${info.brithdate}" />
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" >성별</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8 fv-row">
												<input type="text" name="gender" class="form-control form-control-lg form-control-solid"  value="${info.gender}" />
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" >우편번호</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8 fv-row">
												<input type="text" name="postcode"  id="post_num" class="form-control form-control-lg form-control-solid"  value="${info.postal_code}" />
												<input type="button" onclick="findlocation()" class="btn btn-primary" id="kt_toolbar_primary_button" value="주소 찾기" style="width: 100px; height: 40px; margin-left: 5px;"/>
											</div>
											<input type="button" onclick="findlocation()" class="btn btn-primary" id="kt_toolbar_primary_button" value="주소 찾기" style="width: 100px; height: 40px; margin-left: 5px;"/>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" >주소</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8 fv-row">
												<input type="text" name="address" id="roadaddress"  class="form-control form-control-lg form-control-solid"  value="${info.street_address}" />
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" >상세주소</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-8 fv-row">
												<input type="text" name="detailaddress" class="form-control form-control-lg form-control-solid"  value="${info.detail_address}" />
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										</div>
										<!--=======================다음줄===========================-->
										<div style="width: 600px; ">
											<!--begin::Input group-->
											<div class="row mb-6"  style="width: 600px;">
												<!--begin::Label-->
												<label class="col-lg-2 fw-semibold text-muted" >사업자 번호</label>
												<!--end::Label-->
												<!--begin::Col-->
											<div class="col-lg-8 fv-row">
												<input type="text" name="name" class="form-control form-control-lg form-control-solid"  value="${info.business_num}" readonly/>
											</div>
											<!--end::Col-->
											</div>
											<!--end::Input group-->


										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" >등록/만료 일자</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-3">
												<span class="fw-bold fs-6 text-gray-800">도재학</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" >멤버쉽</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-3">
												<span class="fw-bold fs-6 text-gray-800">도재학</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" >회원등급</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-3">
												<span class="fw-bold fs-6 text-gray-800">도재학</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
															
									</div>
									<!--end::Card body-->
									
									
									</div>
									<!--end::details View-->
				<!--===============================================풋터 시작 부분======================================================-->

				<!--begin::Card footer-->
				<div class="card-footer d-flex justify-content-end py-6 px-9" >
					<button type="reset" class="btn btn-light btn-active-light-primary me-2" onclick="gotohome()">취소</button>
					<button type="submit" class="btn btn-primary" id="kt_account_profile_details_submit" onclick="updatesave()">수정 저장</button>
				</div>
								


						
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
	
	function gotohome(){
		location.href='customer/home';		
	}//historycall
	
	
	function updatesave() {
    	console.log ("updatesave 시작한다");    	
        var idx = ${info.member_idx};
    	var name = $("input[name=name]").val();
        var number = $("input[name=number]").val();
        var postcode = $("input[name=postcode]").val();
        var address = $("input[name=address]").val();
        var detailaddr = $("input[name=detailaddress]").val();
    		
    		$.ajax({
    			type:'post',
    			url:'customer/update.ajax/updatesave',
    			data:{'idx':idx,'name':name,'number':number,'postcode':postcode, 'address':address, 'detailaddr':detailaddr},
    			dataType:'JSON',
    			success:function(obj){			
    				console.log(obj);
    				//location.href='customer/detail?idx='+idx;    	
    				
    				
    			},
    			error:function(e){
    				console.log(e);
    			}	
    		});//		
    		
    		
    		
    		
			
		};
	
	
	
		var msg = "${msg}";
		if(msg != ""){
			alert(msg);
		}
	
	
	</script>

</html>