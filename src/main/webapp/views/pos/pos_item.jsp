<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!--
Author: Keenthemes
Product Name: Craft 
Product Version: 1.1.4
Purchase: https://themes.getbootstrap.com/product/craft-bootstrap-5-admin-dashboard-theme
Website: http://www.keenthemes.com
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
License: For each use you must have a valid license purchased only from above link in order to legally use the theme for your project.
-->
<html lang="en">
	<!--begin::Head-->
	<head>
<base href="../" />
		<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes</title>
		<meta charset="utf-8" />
		
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css"/>
		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
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
				
			
					
					<!--begin::Content-->
					<div class="content fs-6  flex-column-fluid">
						
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid">
							<!--begin::Container-->
							<div style="width: 95%; margin: auto;">
								<!--begin::Navbar-->
								<div class="card mb-5 mb-xl-10">
									<div class="card-body pt-9 pb-0">



										
								<!-- 작업 시작 공간-->
								<!--begin::Row-->
								<div class="row gy-5 g-xl-10" >
									<!--begin::Col-->
									<div class="col-xl-4">
										<!--begin::List Widget 5-->
										<div class="card h-xl-100">
											<!--begin::Header-->
											<div class="card-header align-items-center border-0 mt-5">
												<h3 class="card-title align-items-start flex-column" style="width:100%;">
													<span class="fw-bolder text-gray-900 fs-2 mb-5">상품</span>
													<div class="d-flex">
														<select class="form-select fs-6" aria-label="Select option" style="width: 110px; height: 40px;">
															<option value="1">상품명</option>
															<option value="2">상품코드</option>
															<!-- 추가적인 옵션들을 필요에 따라 추가할 수 있습니다 -->
														</select>
														<input type="text" class="form-control form-control-solid" placeholder="이름 입력" style="width: 220px; height: 40px; margin-left: 10px;">
            											<button type="button" class="btn btn-primary fs-7"  style="width: 100px; height: 40px; margin-left: 10px;">
															검색
														</button>
													</div>
												</h3>
												<div class="card-toolbar">
													<div class="table-responsive">
											<table class="table table-row-dashed table-row-gray-300 gy-5" style="white-space:nowrap;">
												<thead>
													<tr class="fw-bold fs-6 text-gray-800">
														<th style="text-align: center; padding-left: 9.75px;">보유 수량</th>
														<th>상품명</th>
														<th>상품코드</th>
														<th>가격</th>
														<th></th>
													</tr>
												</thead>
												<tbody>
													<tr style="vertical-align: middle;">
														<td style="text-align: center; padding-left: 9.75px;">50</td>
														<td>바닐라 화장지</td>
														<td>상품코드</td>
														<td>가격</td>
														<th style="text-align: center;"><a href="#" class="btn btn-success mx-3">결제하기</a></th>
													</tr>
												</tbody>
											</table>
										</div>
												</div>
											</div>
											<!--end::Header-->
											<!--begin::Body-->
											<div class="card-body pt-1">
												
											</div>
											<!--end::Body-->
										</div>
										<!--end::List Widget 5-->
									</div>
									<!--end::Col-->
									<!--begin::Col-->
									<div class="col-xl-8">
										<!--begin::Table Widget 5-->
										<div class="card card-flush h-xl-100">
											<div class="card-header align-items-center border-0 mt-5">
												<h3 class="card-title align-items-start flex-column">
													<span class="fw-bolder text-gray-900 fs-2 mb-5">상품</span>
													
												</h3>
												</div>
												<div class="card-toolbar my-10">
													<div class="table-responsive mx-12">
											<table class="table table-row-dashed table-row-gray-300 gy-5">
												<thead>
													<tr class="fw-bold fs-6 text-gray-800">
														<th>삭제</th>
														<th>결제수량</th>
														<th>단가</th>
														<th>상품명</th>
														<th>상품코드</th>
														<th>상품가격</th>
													</tr>
												</thead>
												<tbody>
													<tr  style="vertical-align: middle;">
														<td>
															      X	
														</td>
														<!-- 결제수량 카운트 공간-->
														<td>
															<!--begin::Dialer-->
															<div class="input-group mw-150px"
																data-kt-dialer="true"
																data-kt-dialer-currency="true"
																data-kt-dialer-min="1"
																data-kt-dialer-max="50000"
																data-kt-dialer-step="1"
															>
																<!--begin::Decrease control-->
																<button class="btn btn-icon btn-outline btn-active-color-primary" type="button" data-kt-dialer-control="decrease" >
																	<i class="ki-duotone ki-minus fs-2"></i>
																</button>
																<!--end::Decrease control-->

																<!--begin::Input control-->
																<input id="dialerInput" type="text" class="form-control" placeholder="금액" value="1" data-kt-dialer-control="input"/>
																<!--end::Input control-->

																<!--begin::Increase control-->
																<button class="btn btn-icon btn-outline btn-active-color-primary" type="button" data-kt-dialer-control="increase">
																	<i class="ki-duotone ki-plus fs-2"></i>
																</button>
																<!--end::Increase control-->
															</div>
															<!--end::Dialer-->
														</td>
														<!-- 결제수량 카운트 끝-->
														<td>5000원</td>
														<td>다우니</td>
														<td>00000</td>
														<th>10000</th>
													</tr>
												</tbody>
											</table>
										</div>

													<h3>총 결제 금액 : 얼마얼마 
										<button type="button" class="btn btn-primary mx-2" data-bs-toggle="modal" data-bs-target="#kt_modal_1">
															결제 하기
														</button></h3>
												</div>
											</div>
											<!--end::Header-->
										</div>
										<!--end::Table Widget 5-->
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->



								<!-- 부서 관리 모달창 공간-->
								<div class="modal fade" tabindex="-1" id="kt_modal_1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h3 class="modal-title">결제</h3>

												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
													<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
												</div>
												<!--end::Close-->
											</div>

											<div class="modal-body">
												<!-- 모달창 몸통 테이블 시작-->
												<div class="py-5" style="margin-top: -40px;">
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">회원이름</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800">김동동</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">사용 가능 포인트</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800">100000</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">멤버쉽 만료일</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800">2023-12-12</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">총 구매 가격</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800">200000</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">포인트 결제 가능 금액</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800">10000</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">사용 포인트</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 row">
																<input type="text" class="form-control form-control-solid" placeholder="사용 포인트 금액을 입력해주세요.">
																<button type="button" class="btn btn-primary fs-7">
																	포인트 사용
																</button>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">실결제 금액</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800">10000</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">적립포인트</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800">10000</span>
															</div>
															<!--end::Col-->
													</div>
													
												</div>
												<!-- 모달창 몸통 테이블 끝-->
											</div>

											<div class="modal-footer">
												
												<button type="button" class="btn btn-primary">부서 만들기</button>
											</div>
										</div>
									</div>
								</div>
								<!-- 부서 관리 모달창 종료-->






																					<!-- 작업 종료 공간-->






																					
										
									</div>
								</div>
								<!--end::Navbar-->
								
								
						</div>
						<!--end::Post-->
										<!--end::Chart widget 5-->
									</div>
									<!--end::Col-->
								
								</div>
								<!--end::Row-->
								
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
					</div>
					<!--end::Content-->
					<!--begin::Footer-->
					<div class="footer py-4 d-flex flex-lg-column" id="kt_footer">
						<!--begin::Container-->
						<div class="container-fluid d-flex flex-column flex-md-row flex-stack">
							<!--begin::Copyright-->
							<div class="text-gray-900 order-2 order-md-1">
								<span class="text-muted fw-semibold me-2">2023&copy;</span>
								<a href="https://keenthemes.com" target="_blank" class="text-gray-800 text-hover-primary">Keenthemes</a>
							</div>
							<!--end::Copyright-->
							<!--begin::Menu-->
							<ul class="menu menu-gray-600 menu-hover-primary fw-semibold order-1">
								<li class="menu-item">
									<a href="https://keenthemes.com" target="_blank" class="menu-link px-2">About</a>
								</li>
								<li class="menu-item">
									<a href="https://devs.keenthemes.com" target="_blank" class="menu-link px-2">Support</a>
								</li>
								<li class="menu-item">
									<a href="https://themes.getbootstrap.com/product/craft-bootstrap-5-admin-dashboard-theme" target="_blank" class="menu-link px-2">Purchase</a>
								</li>
							</ul>
							<!--end::Menu-->
						</div>
						<!--end::Container-->
					</div>
					<!--end::Footer-->

			</div>
			<!--end::Page-->
		</div>
		<!--end::Root-->
		
		<!--end::Main-->
		<!--begin::Scrolltop-->
		<div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
			<i class="ki-duotone ki-arrow-up">
				<span class="path1"></span>
				<span class="path2"></span>
			</i>
		</div>
		<!--end::Scrolltop-->
		
		
		<!--end::Modals-->
		<!--begin::Javascript-->
		<script>var hostUrl = "resource/assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<!--begin::Custom Javascript(used for this page only)-->



		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->	
	<script>

		// 입력 요소 가져오기
    var dialerInput = document.getElementById('dialerInput');

    // Input 요소에 이벤트 리스너 추가
    dialerInput.addEventListener('input', function() {
        // 입력이 변경될 때마다 값을 업데이트
        var newValue = parseInt(dialerInput.value) || 0; // 숫자로 변환, 만약 숫자가 아니면 0으로 설정
        updateDialerValue(newValue);
    });

    // 다이얼러 입력 값을 업데이트하는 함수
    function updateDialerValue(newValue) {
        dialerInput.value = newValue;
    }
	</script>
</html>