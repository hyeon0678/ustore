<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
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
		<!--begin::Main-->
		<!--begin::Root-->
		<jsp:include page="/views/common/header.jsp"></jsp:include>
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid">
				
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content">
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
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
						
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl" style="background-color: white;margin: 20px;">
								<form action="/employee/registration" method="post">
								<div style="margin-top:20px">
								부서
								<select class="form-select" aria-label="Select example" name="deptName">
    								<option value="인사팀">인사팀</option>
    								<option value="회계팀">회계팀</option>
    								<option value="고객관리팀">고객관리팀</option>
    								<option value="식품팀">식품팀</option>
    								<option value="생필품팀">생필품팀</option>
    								<option value="전자제품팀">전자제품팀</option>
								</select>
								</div>
								
								<div style="margin-top:20px">
								직책
								<select class="form-select" aria-label="Select example" name="positionType">
    								<option value="팀장">팀장</option>
    								<option value="매니저">매니저</option>
    								<option value="팀원">팀원</option>
								</select>
								</div>
								
								<div style="margin-top:20px">
								이름
								<input type="text" name="empName" class="form-control" placeholder="이름을 입력해주세요"/>
								</div>
								
								<div style="margin-top:20px">
								비상 연락처
								<input type="text" name="empEmergencyPhone" class= "form-control" placeholder="비상 연락망을 입력해주세요"/>
								</div>
								
								<div style="margin-top:20px">
								개인 연락처
								<input type="text" name="empPhone" class="form-control" placeholder="개인 번호를 입력해주세요"/>
								</div>
								
								<div style="margin-top:20px">
								내선 번호
								<input type="text" name="empExtNo" class= "form-control" placeholder="내선 번호를 입력해주세요"/>
								</div>
								
								<div style="margin-top:20px">
								성별
								<div class="form-check form-check-custom form-check-solid">
    								<input class="form-check-input" name="empGender" type="radio" value="M" id="flexRadioDefault" checked="checked"/>
    								<label class="form-check-label" for="flexRadioDefault">
        								남자
    								</label>
    								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    								<input class="form-check-input" name="empGender" type="radio" value="W" id="flexRadioDefault"/>
    								<label class="form-check-label" for="flexRadioDefault">
        								여자
    								</label>
								</div>
								</div>
								
								<div style="margin-top:20px">
								생년월일
								<input type="date" name="empBirth" class= "form-control brith"/>
								<input type="text"  value="" style="visibility: hidden;"> 
								</div>
								
								<div style="margin-top:20px">
									<div class="d-flex flex-stack flex-wrap flex-sm-nowrap">
										<div>주소</div>
										<input type="button" onclick="findlocation()" class="btn btn-primary" id="kt_toolbar_primary_button" value="주소 찾기" />
									</div>
									<input type="text" class="form-control" placeholder="우편번호" id="post_num" name="empZipcode"/>
									<input type="text" class="form-control" placeholder="주소" id="roadaddress" name="empRoadAddr"/>
									<span id="guide" style="color:#999;display:none"></span>
									<div style="margin-top: 5px">
										<input type="text" class="form-control" placeholder="상세 주소" id="detailAddress" name="empDetailAddr"/>
									</div>
								</div>
								
								<div style="margin-top:20px">
 									최종 학력
								<select class="form-select" aria-label="Select example" name="education">
    								<option value="초등학교 졸업">초등학교 졸업</option>
    								<option value="중학교 졸업">중학교 졸업</option>
    								<option value="고등학교 졸업">고등학교 졸업</option>
    								<option value="대학교 졸업">대학교 졸업</option>
    								<option value="직업전문학원·학교 및 기타학력 졸업">직업전문학원·학교 및 기타학력 졸업</option>
								</select>
								
								<div style="margin-top: 5px">
									<input type="text" class="form-control" placeholder="학교" name="schoolName"/>
								</div>
								<div style="margin-top: 5px">
									<input type="text" class="form-control" placeholder="전공" name="major"/>								
								</div>
								</div>
								</form>
									<button type="button" class="btn btn-primary submit_btn" id="kt_toolbar_primary_button" style="margin: 20px 0px;" >등록</button>
									
								</div>
								</div>
							<!--end::Container-->
						</div>
						
						
						<!--end::Post-->
					</div>
					<!--end::Content-->
					</div>
					
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<script>var hostUrl = "resource/assets/";</script>
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	</body>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		
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
		
		// 주소 api
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
		// get elements value
		function getElems(){
			elements = [];
			elements.push($('select[name=deptName]'))
			elements.push($('select[name=positionType]'));
			elements.push($('input[name=empEmergencyPhone]'));
			elements.push($('input[name=empName]'));
			elements.push($('input[name=empPhone]'));
			elements.push($('input[name=empExtNo]'));
			elements.push($('input[name=empBirth]'));
			elements.push($('input[name=empZipcode]'));
			elements.push($('input[name=empRoadAddr]'));
			elements.push($('input[name=empDetailAddr]'));
			elements.push($('select[name=education]'));
			elements.push($('input[name=schoolName]'));
			elements.push($('input[name=major]'));
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

</script>
	<!--end::Body-->
</html>