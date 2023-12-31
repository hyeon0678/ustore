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
			margin: 20px 50px;
			padding: 20px;

		}
	</style>
</head>
<!--end::Head-->
<!--begin::Body-->

<body id="kt_body"
	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
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
				<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content"
					style="margin-top: 90px; background-color: #fffff8;">
					<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">Membership</h1>

					<!--begin::details View-->
					<div class="card mb-5 mb-xl-10" id="kt_profile_details_view"
						style="align-self: center; width: 1400px; margin-top: 50px; background-color: white;">
						<!--begin::Card header-->
						<div class="card-header cursor-pointer">
							<!--begin::Card title-->
							<div class="card-title m-0">
								<h3 class="fw-bold m-0">${userstate}멤버쉽 : ${userstate}</h3>
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
										<span class="fw-bold fs-6 text-gray-800">도재학</span>
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
										<span class="fw-bold fs-6 text-gray-800">도재학</span>
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
										<span class="fw-bold fs-6 text-gray-800">도재학</span>
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
										<span class="fw-bold fs-6 text-gray-800">도재학</span>
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
										<span class="fw-bold fs-6 text-gray-800">도재학</span>
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
										<span class="fw-bold fs-6 text-gray-800">도재학</span>
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
										<span class="fw-bold fs-6 text-gray-800">도재학</span>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
							</div>
							<!--=======================다음줄===========================-->
							<div style="width: 600px; ">
								<!--begin::Input group-->
								<div class="row mb-6" style="width: 600px;">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted" style="width: 130px;">사업자 번호</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-8 fv-row" style="display: flex; align-items: center;">
										<div class="col-lg-3">
											<span class="fw-bold fs-6 text-gray-800">20238956</span>
										</div>
										<i class="ki-duotone ki-scroll fs-2qx"
											style="margin-right: 5px; margin-left: 10px;">
											<span class="path1"></span>
											<span class="path2"></span>
											<span class="path3"></span>
										</i>
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
										<span class="fw-bold fs-6 text-gray-800">도재학</span>
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
								<!--begin::Row-->
								<div class="row mb-7">
									<!--begin::Label-->
									<label class="col-lg-2 fw-semibold text-muted" style="width: 130px;">멤버쉽</label>
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
									<label class="col-lg-2 fw-semibold text-muted" style="width: 130px;">회원등급</label>
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
									<label class="col-lg-2 fw-semibold text-muted" style="width: 130px;">보유 총
										포인트</label>
									<!--end::Label-->
									<!--begin::Col-->
									<div class="col-lg-3" style="display: flex;">
										<span class="fw-bold fs-6 text-gray-800">12005268 포인트</span>
										<input type="button" class="btn btn-primary" value="포인트 내역"
											style="width: 120px; height: 40px; margin-left: 5px;" />
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->
							</div>
							<!--end::Card body-->


						</div>
						<!--===============================================풋터 시작 부분======================================================-->
	
						<!--begin::Card footer-->
						<div class="card-footer pt-4" id="kt_chat_messenger_footer" style="display: flex;">
							<!--begin::Actions-->
							<div class="">
								<button type="button" class="btn btn-primary" data-bs-toggle="modal"
									data-bs-target="#kt_modal_1">
									구매내역
								</button>
								<div class="modal fade" tabindex="-1" id="kt_modal_1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<div style="display: flex; align-items: center;">
													<input type="text" class="form-control form-control-solid"
														placeholder="이름을 입력하세요" style="width:200px; height:30px; " />
													<button type="button" class="btn btn-primary"
														style="margin: 5px;">검색</button>
												</div>
												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
													data-bs-dismiss="modal" aria-label="Close">
													<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span
															class="path2"></span></i>
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
													< </div>
												</div>
	
												<div class="modal-footer">
													<button type="button" class="btn btn-primary"
														data-bs-dismiss="modal">채팅방 생성</button>
												</div>
											</div>
										</div>
									</div>
									<!--end::Actions-->
								</div>
	
	
								<!--begin:Toolbar-->
								<div class="">
									<!--begin::Actions-->
									<div class="d-flex align-items-center me-2">
									</div>
									<!--end::Actions-->
									<!--begin::Send-->
									<button class="btn btn-primary" type="button" data-kt-element="send">수정</button>
									<!--end::Send-->
								</div>
								<!--end::Toolbar-->
								<!--begin:Toolbar-->
								<div class="">
									<!--begin::Actions-->
									<div class="d-flex align-items-center me-2">
									</div>
									<!--end::Actions-->
									<!--begin::Send-->
									<button class="btn btn-primary" type="button" data-kt-element="send">탈퇴하기</button>
									<!--end::Send-->
								</div>
								<!--end::Toolbar-->
								<!--begin::Actions-->
								<div class="">
									<button type="button" class="btn btn-primary" data-bs-toggle="modal"
										data-bs-target="#kt_modal_1">
										기간연장
									</button>
									<div class="modal fade" tabindex="-1" id="kt_modal_1">
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
														< </div>
													</div>
	
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															data-bs-dismiss="modal">채팅방 생성</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--end::Actions-->
								<!--begin::Actions-->
								<div class="">
									<button type="button" class="btn btn-primary" data-bs-toggle="modal"
										data-bs-target="#kt_modal_1">
										재연장
									</button>
									<div class="modal fade" tabindex="-1" id="kt_modal_1">
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
														< </div>
													</div>
	
													<div class="modal-footer">
														<button type="button" class="btn btn-primary"
															data-bs-dismiss="modal">채팅방 생성</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								
								<!--end::Actions-->
	
	
	
							</div>
						</div>
						
						<!--end::details View-->
















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
	begin::Vendors Javascript(used for this page only)-->
	<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
	<!--end::Vendors Javascript-->

	<!--end::Javascript-->
</body>
<!--end::Body-->
<script>
</script>

</html>