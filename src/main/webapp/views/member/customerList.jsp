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
						<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">Membership</h1>
						
						<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="" style="display:flex; margin-left:11%; margin-right:10%; justify-content: space-between;">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<!--begin::Title-->
									
									<!--end::Title-->
								</div>
								<!--end::Info-->
								<!--begin::Actions-->
								<div style="display: flex; align-items: center; height: 30px;">
									<!--begin::Col 드롭박스 >> 회원 상태-->
									<div class="col-lg-8 fv-row" style="width: 150px; height: 30px; display: flex; margin: 10px;">
										<select id="pageState" class="form-select " style="padding-top: 0px; padding-bottom: 0px; background-color: white;"> 
											<option  value="84">등록된 회원</option>																	
											<option  value="85">탈퇴한 회원</option>
										</select>
									</div>
									<!--end::Col-->
									<input type="text" name="customersearch" class="form-control form-control-solid" placeholder="내용을 입력하세요." style="width:200px; height:30px; background-color: white;"/>
									<button type="button" class="btn btn-primary" style="margin: 10px;" onclick="search()">검색</button>
								</div>
								<!--end::Actions-->
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
									<div class="d-none d-lg-flex flex-column flex-lg-row-auto w-100 w-lg-275px" data-kt-drawer="true" data-kt-drawer-name="inbox-aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="225px" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_inbox_aside_toggle">
										<!--begin::Sticky aside-->
										<div class="card card-flush mb-0" data-kt-sticky="false" data-kt-sticky-name="inbox-aside-sticky" data-kt-sticky-offset="{default: false, xl: '100px'}" data-kt-sticky-width="{lg: '275px'}" data-kt-sticky-left="auto" data-kt-sticky-top="100px" data-kt-sticky-animation="false" data-kt-sticky-zindex="95">
											<!--begin::Aside content-->
											<div class="card-body">
												<!--==========================================서브 사이드바 컨텐츠 리스트==================================================================-->											
													<!--begin::Menu-->
													<div class="menu menu-column menu-rounded menu-state-bg menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary ">
														<!--begin::Menu item-->
														<div class="menu-item mb-3">
															<!--begin::Inbox-->
															<span class="menu-link active">
																<span class="menu-icon">
																	<i class="ki-duotone ki-sms fs-2 me-3">
																		<span class="path1"></span>
																		<span class="path2"></span>
																	</i>
																</span>
																<span class="menu-title fw-bold">회원관리</span>
															</span>
															<!--end::Inbox-->
														</div>
														<!--end::Menu item-->
														<!--begin::Menu item-->
														<div class="menu-item mb-3" onclick="location.href='/customer/general';">
															<!--begin::Inbox  href="/customer/general" -->
															<span class="menu-link" >
																<span class="menu-icon">
																	<i class="ki-duotone ki-sms fs-2 me-3">
																		<span class="path1"></span>
																		<span class="path2"></span>
																	</i>
																</span>
																<span class="menu-title fw-bold">일반 멤버쉽</span>
															</span>
															<!--end::Inbox-->
														</div>
														<!--end::Menu item-->
														<!--begin::Menu item-->
														<div class="menu-item mb-3" onclick="location.href='/customer/businessperson';">
															<!--begin::Inbox   href="/customer/businessperson"   -->
															<span class="menu-link" >
																<span class="menu-icon">
																	<i class="ki-duotone ki-sms fs-2 me-3">
																		<span class="path1"></span>
																		<span class="path2"></span>
																	</i>
																</span>
																<span class="menu-title fw-bold">사업자 멤버쉽</span>
															</span>
															<!--end::Inbox-->
														</div>
														<!--end::Menu item-->
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
									<!--begin::Card body-->
									<div class="card-body pt-0">
										<!--begin::Table-->
										<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_customers_table">
											<thead>
												<tr class="text-start fw-bold fs-7 text-uppercase gs-0" style=" color: #c6da52;">
													<th class="w-30px pe-2" ></th>
													<th class="min-w-125px">회원 번호</th>
													<th class="min-w-125px">이름</th>
													<th class="min-w-125px">멤버쉽 종류</th>
													<th class="min-w-125px">회원등급</th>
													<th class="min-w-125px">연락처</th>
													<th class="min-w-125px">만료날짜</th>
												</tr>
												
											</thead>
											<tbody class="fw-semibold text-gray-600" id="list">
												
											</tbody>
										</table>
										<!--end::Table-->
									</div>
									<!--end::Card body-->
									

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
	var showpage =1;
	console.log("페이지 읽기 시작");
	listcall(showpage);
	console.log("페이지 읽기 끝");
	
	$('#pageState').change(function(){
		//$('#pagination').twbsPagination('destroy');	
		listcall(showpage);	
	});
	
	
	
	function listcall(page){
		console.log("리스트 호출");
		$.ajax({
			type:'get',
			url:'customer/home.ajax/list', 
			data:{'pageState':$('#pageState').val()},
			dataType:'JSON',
			success:function(data){
				console.log(data);
				console.log("리스트 호출 뿌려주기");
				/* if (data.success == -1) {
					alert('이 페이지의 권한이 없습니다');
					location.href='./';
				}else {} */		
				drawlist(data);			
			},
			error:function(e){
				console.log(e);
			}
			});//	
	}

			/* 리스트 그리기 */
			function drawlist(obj){
				console.log(obj);
				var content = '';
				$('#list').empty();
				
				if (obj.size <= 0) {
					
					 content = '<tr>';				 
					 content += '<td style="text-align: center; color: red;" colspan="7">"'+$('input[name="customersearch"]').val()+'"회원이 존재 하지 않습니다.</td>';
					 content += '</tr>';				
					 $('#list').append(content);
				}else {
					
				
				for (var i = 0; i < obj.size; i++) {
					 	content = '<tr>';
					 	content += '<td></td>';
					 	content +='<td><a href="customer/detail?idx='+obj.list[i].member_idx+'" class="text-gray-800 text-hover-primary mb-1">'+obj.list[i].member_idx+'</a></td>';
					 	content +='<td><a href="customer/detail?idx='+obj.list[i].member_idx+'" class="text-gray-600 text-hover-primary mb-1">'+obj.list[i].name+'</a></td>';
					 	if(obj.list[i].member_type == '82'){
							 content += '<td>일반</td>'; 
						 } else {
							 content += '<td>사업자</td>'; 
						}	
						 if(obj.list[i].grade_idx == '80'){
							 content += '<td>스탠다드</td>'; 
						 } else {
							 content += '<td>프리미엄</td>'; 
						}
					 	content +='<td>'+obj.list[i].contact_num+'</td>';
					 	var date = new Date(obj.list[i].expiry_date);
						 var dateStr = date.toLocaleDateString("ko-KR");
						 content += '<td>' + dateStr + '</td>';
						 content += '</tr>';				
				         $('#list').append(content);
				};
				};
				/*
				$('#pagination').twbsPagination({
					startPage:showpage // 보여줄페이지>> 
					,totalPages:obj.pages // 총 페이지 수(총갯수 / 페이지당 보여줄 게시물수):서버에서 계산해서 가져오기
					,visiblePages:5// 페이지 넘버 얼마나 보여 줄것인지 (이것은 거의 고정이다. ): 
					,onPageClick:function(e,page){// 번호클릭시 실행할 내용
						//console.log(e);
						if(showpage != page){
						  	console.log(page);
						  	showpage = page; // 클릭해서 다른 페이지를 보여주게 되면  현재 보고 있는 페이지 번호도 바꿔준다. 
						  	listcall(page);
							
						}		
					}
					
				});//
				*/
			}
			
			function search(){
				console.log("검색 메서드  호출");
				
				// location.href='adminReportDetail?idx='+idx+'&&type='+type;
				// var $state = $("input[type=checkbox][name=hisstate]:checked").val();
				var state = $('#pageState').val();
				
				
				
				
				var keyword = $('input[name="customersearch"]').val();
				$.ajax({
					type:'get',
					url:'customer/home.ajax/customersearch', 
					data:{'keyword':keyword, 'state':state},
					dataType:'JSON',
					success:function(data){
						console.log(data);
						console.log("리스트 호출 뿌려주기");
						/* if (data.success == -1) {
							alert('이 페이지의 권한이 없습니다');
							location.href='./';
						}else {} */		
						drawlist(data);			
					},
					error:function(e){
						console.log(e);
					}
					});//	
			}
			
		
		
			var msg = "${msg}";
			if(msg != ""){
				alert(msg);
			}
	
	
	
	
	
	
	
	
	/* <!-- 사람 하나 시작 -->
	<tr>
		<td>
		</td>
		<td>
			<a href="customerdetail" class="text-gray-800 text-hover-primary mb-1">201548</a>
		</td>
		<td>
			<a href="#" class="text-gray-600 text-hover-primary mb-1">도재학</a>
		</td>
		<td>사업자</td>
		<td>스탠다드</td>
		<td>01026262626</td>
		<td>2025.01.12</td>
	</tr>
	<!--  사람 끝났다 --> */
	
	
	</script>
	
	
	
	
	
	
	
	

</html>