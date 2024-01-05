<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->

<head>
<base href="../../" />
	<title>USstore</title>
	<meta charset="utf-8" />
	<meta name="description"
		content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
	<meta name="keywords"
		content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
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
		.chart-div {
			display: flex;
			height: 500px;
			margin-bottom: 20px;
		}

		.chart-body-div {
			width: 45%;
			margin: 10px 20px;
		}

		.content_tree {
			margin: 20px 20px;
			padding: 20px;

		}
	</style>
</head>
<!--end::Head-->
<!--begin::Body-->

<body id="kt_body"	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	<!--begin::Theme mode setup on page load-->
	<script>var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
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

					<!--begin::details View-->
					<div class="card mb-5 mb-xl-10" id="kt_profile_details_view"
						style="align-self: center; width: 1400px; margin-top: 50px; background-color: white;">
						<!--begin::Card header-->
						<div class="card-header">
							<!--begin::Card title-->
							<div class="card-title m-0">
								<h3 class="fw-bold m-0">회원번호 : ${info.member_idx}</h3>
								
							</div>
							<!--end::Card title-->
							<!--begin::Card title-->
							<div class="card-title m-0" style="padding-right: 50px">
								<c:if test="${info.member_state eq '84'}"><h3 class="fw-bold m-0">등록중인 회원</h3></c:if>
								<c:if test="${info.member_state eq '85'}"><h3 class="fw-bold m-0" style="color: red;">탈퇴한 회원</h3></c:if>
							</div>
							<!--end::Card title-->
						</div>
						<!--begin::Card header-->
						<!--begin::Card body-->
						<div class="card-body p-9" style="display: flex;">
							<div style="width: 600px; ">
								<!--begin::Row-->
								<div class="row mb-7">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted">이름</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-3">
										<span class="fw-bold fs-6 text-gray-800">${info.name}</span>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
								<!--begin::Row-->
								<div class="row mb-7">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted">연락처</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-3">
										<span class="fw-bold fs-6 text-gray-800">${info.contact_num}</span>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
								<!--begin::Row-->
								<div class="row mb-7">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted">생년월일</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-3">
										<span class="fw-bold fs-6 text-gray-800">${info.brithdate}</span>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
								<!--begin::Row-->
								<div class="row mb-7">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted">성별</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-3">
										<span class="fw-bold fs-6 text-gray-800">${info.gender}</span>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
								<!--begin::Row-->
								<div class="row mb-7">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted">우편번호</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-3">
										<span class="fw-bold fs-6 text-gray-800">${info.postal_code}</span>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
								<!--begin::Row-->
								<div class="row mb-7">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted">주소</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-3">
										<span class="fw-bold fs-6 text-gray-800">${info.street_address}</span>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
								<!--begin::Row-->
								<div class="row mb-7">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted">상세주소</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-3">
										<span class="fw-bold fs-6 text-gray-800">${info.detail_address}</span>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
							</div>
							<!--=======================다음줄===========================-->
							<div style="width: 600px; ">
								<!--begin::Input group-->
								<div class="row mb-6" style="width: 600px;">
								<c:if test="${info.member_type eq '83'}">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted" style="width: 130px;">사업자 번호</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-8 fv-row" style="display: flex; align-items: center;">
										<div class="col-lg-3" style="width: 390px">
											<span class="fw-bold fs-6 text-gray-800" style="margin-right: 10px;">${info.business_num}</span>
											<span class="upload_cancel badge badge-light fs-8" style="margin-right: 10px;">${file.orifilname}</span>
											<button class="" style="cursor: pointer; border-radius: 5px; background-color: #C6DA52; color: white; border: none;" >다운로드</button>
										</div>
									</c:if>
									<c:if test="${info.member_type eq '82'}">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted" style="width: 130px;"></label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-8 fv-row" style="display: flex; align-items: center;">
										<div class="col-lg-3">
											<span class="fw-bold fs-6 text-gray-800"></span>
										</div>
									</c:if>
									</div>
									<!--end::Col-->
							</div>
								<!--end::Input group-->


								<!--begin::Row-->
								<div class="row mb-7">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted" style="width: 130px;">등록/만료
										일자</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-3">
										<span class="fw-bold fs-6 text-gray-800">${info.create_date} ~ ${info.expiry_date}</span>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
								<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" style="width: 130px;">멤버쉽 종류</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-3">
												<span class="fw-bold fs-6 text-gray-800">
												<c:if test="${info.member_type eq '82'}">일반</c:if>
												<c:if test="${info.member_type eq '83'}">사업자</c:if>
												</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
										<!--begin::Row-->
										<div class="row mb-7">
											<!--begin::Label-->
											<label class="col-lg-2 fw-semibold text-muted" style="width: 130px;">회원등급</label>
											<!--end::Label-->
											<!--begin::Col-->
											<div class="col-lg-3">
												<span class="fw-bold fs-6 text-gray-800">
												<c:if test="${info.grade_idx eq '80'}">스탠다드</c:if>
								 				<c:if test="${info.grade_idx eq '81'}">프리미엄</c:if>
												</span>
											</div>
											<!--end::Col-->
										</div>
										<!--end::Row-->
								<!--begin::Row-->
								<div class="row mb-7">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted" style="width: 130px;">보유 총
										포인트</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-3" style="display: flex; width: 390px;">
										<span class="fw-bold fs-6 text-gray-800">12005268 포인트</span>
										<button class="" data-bs-toggle="modal" data-bs-target="#kt_modal_2" 
										style="margin:0px 20px; cursor: pointer; border-radius: 5px; background-color: #C6DA52; color: white; border: none;" >포인트 내역</button>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
								<!-- 모달 시작하는부분 -->
								<div class="modal fade" id="kt_modal_2" tabindex="-1"  >
															<div class="modal-dialog">
															  <div class="modal-content" style="width: 700px;">
																<div class="modal-header">
																	<h3>포인트 사용내역</h3>
																	
																	
																	<label for="date" style="padding-left: 150px;">
																        <input type="date" id="" value="${beforeMonth}" />
																        ~
																        <input type="date" id="" value="${nowdate}" />ㄴ
																        <input type="button" id="usearchButton" class="comm-btn" value="검색"
																         style="margin:0px 5px; cursor: pointer; border-radius: 5px; background-color: #C6DA52; color: white; border: none;" />
																    </label>
																    <!--begin::Close-->
																	<div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
																		data-bs-dismiss="modal" aria-label="Close">
																		<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span
																				class="path2"></span></i>
																	</div>
																	<!--end::Close-->
																</div>
																	<div>
																	
																		<div class="content_tree" style="border: 1px solid #c6da52; border-radius: 5px; overflow-y: auto;">
																			<!--begin::Table-->
																				<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_customers_table">
																					<thead>
																						<tr class="text-start fw-bold fs-7 text-uppercase gs-0" style=" color: #c6da52;">																							
																							<th class="min-w-100px" style="text-align: center;">종류</th>
																							<th class="min-w-100px" style="text-align: center;">포인트</th>
																							<th class="min-w-100px" style="text-align: center;">총포인트</th>
																							<th class="min-w-100px" style="text-align: center;">변경날짜</th>
																						</tr>
																						
																					</thead>
																					<tbody class="fw-semibold text-gray-600" id="list">
																						
																					</tbody>
																				</table>
																				<!--end::Table-->
																		</div>
																	</div>													
																<div class="modal-footer">
																	<!-- <button type="button" class="btn btn-primary" data-bs-dismiss="modal">완료</button> -->
																	<h3>누적포인트 : 5000000점</h3>
															  </div>
															</div>
														  </div>
														</div>
								<!-- 모달 끝나는부분 -->
							</div>
							<!--end::Card body-->


						</div>
						<!--===============================================풋터 시작 부분======================================================-->
	
						<!--begin::Card footer-->
						<div class="card-footer pt-4" id="kt_chat_messenger_footer" style="display: flex; justify-content: flex-end;">
							<!--begin::Actions-->
							<div class="" style="margin-left: 10px; margin-right: 5px">
								<button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_1"  onclick="basicproduct()" >
									구매내역
								</button>
								<div class="modal fade" tabindex="-1" id="kt_modal_1">
									<div class="modal-dialog" >
										<div class="modal-content" style="width:1110px; height:700px; position: fixed;  top: 50%;  left: 50%;  transform: translate(-50%, -50%);">
											<div class="modal-header">
												<h3>제품 구매 이력</h3>
												<label for="date" style="padding-left: 350px;">
													<input type="button" class="comm-btn" value="최근 1주일" onclick="weekturn()"
												        style="margin:0px 5px; cursor: pointer; border-radius: 5px; background-color: #C6DA52; color: white; border: none;" />
											       시작일 : <input type="date" id="ufirstsearchdate" value="" />
											        ~
											         종료일 : <input type="date" id="ulastsearchdate" value="" />
											        <input type="button" id="usearchButton" class="comm-btn" value="검색" onclick="productlistcall()"
											         style="margin:0px 5px; cursor: pointer; border-radius: 5px; background-color: #C6DA52; color: white; border: none;" />
											    </label>
												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
													data-bs-dismiss="modal" aria-label="Close">
													<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span
															class="path2"></span></i>
												</div>
												<!--end::Close-->
											</div>
											<div class="" style="margin-left: 5px; margin-right: 5px">
												<div class="content_tree"
													style="float: left; width: 300px; height: 550px; overflow-y: auto; border: 1px solid #c6da52; border-radius: 5px; overflow-y: auto;">
													<tbody class="fw-semibold text-gray-600" id="cartlist"></tbody>
													<h4>UStore</h4>
													<h2 style="margin-bottom: 5px; ">100000원</h2>
													<span style="float: right; margin-top: 10px">결제번호(abc2037592-bfja3949)</span>
													<!--begin::Table-->
													<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_customers_table">
														<thead>
															<tr class="text-start fw-bold fs-8 text-uppercase gs-0" style=" color: #c6da52;">																							
																<th class="min-w-100px" style="text-align: center;">상품명(상품번호)</th>
																<th class="min-w-80px" style="text-align: center;">단위수량</th>
																<th class="min-w-100px" style="text-align: center;">금액</th>
															</tr>
															
														</thead>
														<tbody class="fw-semibold text-gray-600" id="cartlist">
															<tr class="text-start fw-bold fs-8 text-uppercase gs-0" >																							
																<th class="min-w-100px" style="text-align: center;">발렌타인(A010001)</th>
																<th class="min-w-80px" style="text-align: center;">2개</th>
																<th class="min-w-100px" style="text-align: center;">10400 원</th>
															</tr>
															<tr class="text-start fw-bold fs-8 text-uppercase gs-0" >																							
																<th class="min-w-100px" style="text-align: center;">발렌타인(A010001)</th>
																<th class="min-w-80px" style="text-align: center;">2개</th>
																<th class="min-w-100px" style="text-align: center;">10400 원</th>
															</tr>
															<tr class="text-start fw-bold fs-8 text-uppercase gs-0" >																							
																<th class="min-w-100px" style="text-align: center;">발렌타인(A010001)</th>
																<th class="min-w-80px" style="text-align: center;">2개</th>
																<th class="min-w-100px" style="text-align: center;">10400 원</th>
															</tr>
															<tr class="text-start fw-bold fs-8 text-uppercase gs-0" >																							
																<th class="min-w-100px" style="text-align: center;">발렌타인(A010001)</th>
																<th class="min-w-80px" style="text-align: center;">2개</th>
																<th class="min-w-100px" style="text-align: center;">10400 원</th>
															</tr>
															<tr class="text-start fw-bold fs-8 text-uppercase gs-0" >																							
																<th class="min-w-100px" style="text-align: center;">발렌타인(A010001)</th>
																<th class="min-w-80px" style="text-align: center;">2개</th>
																<th class="min-w-100px" style="text-align: center;">10400 원</th>
															</tr>
															<tr class="text-start fw-bold fs-8 text-uppercase gs-0" >																							
																<th class="min-w-100px" style="text-align: center;">발렌타인(A010001)</th>
																<th class="min-w-80px" style="text-align: center;">2개</th>
																<th class="min-w-100px" style="text-align: center;">10400 원</th>
															</tr>
														</tbody>
													</table>
													<!--end::Table-->
													<span style="float: right; margin-top: 10px">결제수단 : 신한카드(4404)</span>
													<span style="float: right; margin-top: 10px">포인트 사용 : 0원</span>
													<span style="float: right; margin-top: 10px">포인트 적립 : 0원</span>
													<span style="float: right; margin-top: 10px">결제 후 남은 포인트 : 0원</span>
													<span style="float: right; margin-top: 10px">결제일시 : 2023.12.01</span>
													
													
												</div>
												<div class="content_tree"
													style="float:left;width: 660px; height: 550px; border: 1px solid #c6da52; border-radius: 5px; overflow-y: auto;">
													<!--begin::Table-->
													<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_customers_table">
														<thead>
															<tr class="text-start fw-bold fs-7 text-uppercase gs-0" style=" color: #c6da52;">																							
																<th class="min-w-130px" style="text-align: center;">판매번호</th>
																<th class="min-w-130px" style="text-align: center;">판매일시</th>
																<th class="min-w-130px" style="text-align: center;">결제상태</th>
																<th class="min-w-130px" style="text-align: center;">결제금액</th>
																<th class="min-w-130px" style="text-align: center;">환불</th>
															</tr>
														</thead>
														<tbody class="fw-semibold text-gray-600" id="paylist">
															
														</tbody>
													</table>
													<!--end::Table-->
												</div>
												</div>
	
												<!-- <div class="modal-footer">
													<button type="button" class="btn btn-primary"
														data-bs-dismiss="modal">채팅방 생성</button>
												</div> -->
											</div>
										</div>
									</div>
									<!--end::Actions-->
								</div>
	
	
								<!--begin:Toolbar-->
								<div class="" style=" margin-right: 5px">
									<!--begin::Actions-->
									<div class="d-flex align-items-center me-2">
									</div>
									<!--end::Actions-->
									<!--begin::Send-->
									<button class="btn btn-primary" onclick="gotoupdate()" >수정</button>
									<!--end::Send-->
								</div>
								<!--end::Toolbar-->
								<!--begin:Toolbar-->
								<div class="" style=" margin-right: 5px">
									<!--begin::Actions-->
									<div class="d-flex align-items-center me-2">
									</div>
									<!--end::Actions-->
									<!--begin::Send-->
									<button class="btn btn-primary"  data-kt-element="send" onclick="cusdel()">탈퇴하기</button>
									<!--end::Send-->
								</div>
								<!--end::Toolbar-->
								<!--begin::Actions-->
								<div class="" style="margin-right: 5px">
									<button type="button" class="btn btn-primary" data-bs-toggle="modal"
										data-bs-target="#kt_modal_3" >
										기간연장
									</button>
									<div class="modal fade" tabindex="-1" id="kt_modal_3">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">													
													<!--begin::Close-->
													<div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
														data-bs-dismiss="modal" aria-label="Close" style="float: right;">
														<i class="ki-duotone ki-cross fs-1"><span
																class="path1"></span><span class="path2"></span></i>
													</div>
													<!--end::Close-->
												</div>
												<div class="">
													<div class="content_tree"
														style="float: left; width: 280px; height: 300px; overflow-y: auto;">
														<!-- 조직도 그리기 -->
														<!-- <span>여기에 조직도를 그려주세요</span> -->
														<!--begin::Col 드롭박스 >> 회원 상태-->
														<div class="col-lg-8 fv-row" style="width: 150px; height: 30px; display: flex; margin: 10px;">
															<select id="membergrade" class="form-select " style="padding-top: 0px; padding-bottom: 0px; background-color: white;"> 
																<option  value="80">스탠다드</option>																	
																<option  value="81">프리미엄</option>
															</select>
														</div>
														<!--end::Col-->
													</div>
													<div class="content_tree">
														
														</div>
													</div>
	
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															data-bs-dismiss="modal" onclick="newdate()">변경</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								<!--end::Actions-->
								<!--begin::Actions-->
								<div class="" style=" margin-right: 10px">
									<button type="button" class="btn btn-primary" data-bs-toggle="modal"
										data-bs-target="#kt_modal_3">
										재연장
									</button>
									<div class="modal fade" tabindex="-1" id="kt_modal_4">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<div style="display: flex; align-items: center;">
														<input type="text" class="form-control form-control-solid"
															placeholder="이름을 입력하세요"
															style="width:200px; height:30px; " />
														<button type="button" class="btn btn-primary"
															style="margin: 5px;">검색</button>
													</div>
													<!--begin::Close-->
													<div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
														data-bs-dismiss="modal" aria-label="Close">
														<i class="ki-duotone ki-cross fs-1"><span
																class="path1"></span><span class="path2"></span></i>
													</div>
													<!--end::Close-->
												</div>
												<div class="">
													<div class="content_tree"
														style="float: left; width: 280px; height: 400px; overflow-y: auto;">
														<!-- 조직도 그리기 -->
														<!-- <span>여기에 조직도를 그려주세요</span> -->
													</div>
													<div class="content_tree"
														style="float:left;width: 280px; height: 400px; border: 1px solid #c6da52; border-radius: 5px; overflow-y: auto;">
														<span>홍길동(인사팀 팀장)</span><br />
														<span>홍길동(인사팀 팀장)</span>
														</div>
													</div>
	
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															data-bs-dismiss="modal" onclick="newdate()">변경</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								
								<!--end::Actions-->
	
	
	
								</div>
							</div>
						
						
						<!--end::details View-->
















				
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

var memberidx= ${info.member_idx};
var gradeidx = $('#membergrade').val();
var weekbutton = false;

	function weekturn(){
		weekbutton = true;
		basicproduct();
	}    








	function gotoupdate(){
	
		// href="customer/update?idx='+${info.member_idx}+'"
	console.log("회원 수정 하기 기능 들어가기");
	location.href='customer/update?idx='+memberidx;	
	}//historycall

	function cusdel(){
		
		console.log("회원 탈퇴 하기 기능 들어가기");
		location.href='customer/del?idx='+memberidx;
	}
	
	function newdate(){
		console.log("기간 변경 하기 기능 들어가기");
		console.log(gradeidx)
		location.href='customer/newdate?idx='+memberidx+'&&gradeidx='+gradeidx;
		
	}
	
	/* productlistcall  */
	function basicproduct(){
		console.log(" 기본 제품 구매 이력 리스트 호출");
		var memberidx= ${info.member_idx};			
		$.ajax({
			type:'post',
			url:'customer/detail.ajax/basicproduct', 
			data:{'memberidx':memberidx,'weekbutton':weekbutton},
			dataType:'JSON',
			success:function(obj){
				console.log(obj);
				console.log("리스트 호출 뿌려주기");				
				var content = '';
				$('#paylist').empty();					
				if (obj.size == 0) {					
					 content = '<tr>';				 
					 content += '<td style=" text-align: center; color: red;" colspan="5">구매이력이 존재하지 않습니다</td>';
					 content += '</tr>';				
		            $('#paylist').append(content);
				}else {
					
				for (var i = 0; i < obj.size; i++) {
					 	 content = '<tr class="text-start fw-bold fs-7 text-uppercase gs-0">';																	
					 	content += '<th class="min-w-130px" style="text-align: center;"><p class="paymentid">'+obj.list[i].payment_id+'</p></th>';
					 	content += '<th class="min-w-130px" style="text-align: center;">'+obj.list[i].payment_date+'</th>';
					 	if(obj.list[i].payment_status == '90'){
					 		content += '<th class="min-w-130px" style="text-align: center;">결제</th>'; 
						 } else {
							 content += '<th class="min-w-130px" style="text-align: center;">결제취소</th>';
						}		
					 	content += '<th class="min-w-130px" style="text-align: center;">'+obj.list[i].actual_amount+'</th>';
					 	if(obj.list[i].payment_status == '91'){
					 		content += '<th class="min-w-130px" style="text-align: center;">횐불됨</th>'; 
						 } else {
							content += '<th class="min-w-130px" style="text-align: center;">';
							content += '<button id="refundBut" data-product-id="'+ obj.list[i].iamport_idx +'"style="margin:0px 5px; cursor: pointer; border-radius: 5px; background-color: #C6DA52; color: white; border: none;">';
							content += '환불</button></th>';
						}	
						 content += '</tr>';				
			            $('#paylist').append(content);
				}
				
				bill();
				};
			},
			error:function(e){
				console.log(e);
			}
			});//	
			
			
			
			
	}
	
	
	function bill(){
		
		
	$('.paymentid').on('click', function() {
		console.log("영수증 리스트 호출");
		
		var idx = $(this).html();
		console.log(idx);
		
		$.ajax({
			type:'post',
			url:'customer/detail.ajax/bill', 
			data:{'paymentidx':idx},
			dataType:'JSON',
			success:function(obj){
				console.log(obj);
				console.log("영수증 호출 뿌려주기");				
				var content = '';
				$('#paylist').empty();					
				if (obj.size == 0) {					
					 content = '<tr>';				 
					 content += '<td style=" text-align: center; color: red;" colspan="5">구매이력이 존재하지 않습니다</td>';
					 content += '</tr>';				
		            $('#paylist').append(content);
				}else {
					
				for (var i = 0; i < obj.size; i++) {
					 	 content = '<tr class="text-start fw-bold fs-7 text-uppercase gs-0">';																	
					 	content += '<th class="min-w-130px" style="text-align: center;"><p class="paymentid">'+obj.list[i].payment_id+'</p></th>';
					 	content += '<th class="min-w-130px" style="text-align: center;">'+obj.list[i].payment_date+'</th>';
					 	if(obj.list[i].payment_status == '90'){
					 		content += '<th class="min-w-130px" style="text-align: center;">결제</th>'; 
						 } else {
							 content += '<th class="min-w-130px" style="text-align: center;">결제취소</th>';
						}		
					 	content += '<th class="min-w-130px" style="text-align: center;">'+obj.list[i].actual_amount+'</th>';
					 	if(obj.list[i].payment_status == '91'){
					 		content += '<th class="min-w-130px" style="text-align: center;">횐불됨</th>'; 
						 } else {
							content += '<th class="min-w-130px" style="text-align: center;">';
							content += '<button id="refundBut" data-product-id="'+ obj.list[i].iamport_idx +'"style="margin:0px 5px; cursor: pointer; border-radius: 5px; background-color: #C6DA52; color: white; border: none;">';
							content += '환불</button></th>';
						}	
						 content += '</tr>';				
			            $('#paylist').append(content);
				}
				
				bill();
				};
			},
			error:function(e){
				console.log(e);
			}
			});//	
			
			
		
		
		
		
		
		
	})
		
		
	}
	
	
	
	
	
	
	
	
	/* productlistcall  */
	function productlistcall(){
		console.log("제품 구매 이력 리스트 호출");
		const startdate = document.getElementById('ufirstsearchdate').value;
		const enddate = document.getElementById('ulastsearchdate').value;
		var memberidx= ${info.member_idx};		
		
		if(startdate > enddate){
			
		 	 alert("해당 기간의 조회가 불가능합니다.");
		 	 
		 }else{
			 
		$.ajax({
			type:'post',
			url:'customer/detail.ajax/productlistcall', 
			data:{'startdate':startdate, 'enddate':enddate,'memberidx':memberidx},
			dataType:'JSON',
			success:function(obj){
				console.log(obj);
				console.log("리스트 호출 뿌려주기");				
				var content = '';
				$('#paylist').empty();					
				if (obj.size == 0) {					
					 content = '<tr>';				 
					 content += '<td style=" text-align: center; color: red;" colspan="5">구매이력이 존재하지 않습니다</td>';
					 content += '</tr>';				
		            $('#paylist').append(content);
				}else {
					
				for (var i = 0; i < obj.size; i++) {
					 	 content = '<tr class="text-start fw-bold fs-7 text-uppercase gs-0">';																	
					 	content += '<th class="min-w-130px" style="text-align: center;" onclick" >'+obj.list[i].payment_id+'</th>';
					 	content += '<th class="min-w-130px" style="text-align: center;">'+obj.list[i].payment_date+'</th>';
					 	if(obj.list[i].payment_status == '90'){
					 		content += '<th class="min-w-130px" style="text-align: center;">결제</th>'; 
						 } else {
							 content += '<th class="min-w-130px" style="text-align: center;">결제취소</th>';
						}		
					 	content += '<th class="min-w-130px" style="text-align: center;">'+obj.list[i].actual_amount+'</th>';
					 	if(obj.list[i].payment_status == '91'){
					 		content += '<th class="min-w-130px" style="text-align: center;">횐불됨</th>'; 
						 } else {
							content += '<th class="min-w-130px" style="text-align: center;">';
							content += '<button id="refundBut" data-product-id="'+ obj.list[i].iamport_idx +'"style="margin:0px 5px; cursor: pointer; border-radius: 5px; background-color: #C6DA52; color: white; border: none;">';
							content += '환불</button></th>';
						}	
						 content += '</tr>';				
			            $('#paylist').append(content);
				}
				};
			},
			error:function(e){
				console.log(e);
			}
			});//	
		 }
	}



	// 환불 버튼 클릭 요소 가져오기
    $(document).on('click', '#refundBut', function() {
        var iamportIdx = $(this).data('product-id');
		console.log('환불 버튼 클릭시 포트 번호 요소 가져오기 확인 : ',iamportIdx);
        refund(iamportIdx);
    });
	
    // 환불 요청
	function refund(iamportIdx){
		$.ajax({
	        type: 'get',
	        url: 'request/refund.ajax',
	        data: {
	            'iamportIdx': iamportIdx
	        },
	        dataType: 'json',
	        success: function (data) {
				console.log(data);
				if(data){					
				productlistcall();
				}else{
					alert('환불이 실패했습니다.');
				}
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
    }
	
	


	var msg = "${msg}";
	if(msg != ""){
		alert(msg);
	}

</script>

</html>