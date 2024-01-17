<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<head>
<base href="../../../" />
<title>Ustore</title>
<meta charset="utf-8" />
<meta name="description"
	content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
<meta name="keywords"
	content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="canonical" href="https://preview.keenthemes.com/craft" />
<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
<!--begin::Fonts(mandatory for all pages)-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
<!--end::Fonts-->
<!--begin::Vendor Stylesheets(used for this page only)-->
<link
	href="resource/assets/plugins/custom/datatables/datatables.bundle.css"
	rel="stylesheet" type="text/css" />
<!--end::Vendor Stylesheets-->
<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
<link href="resource/assets/plugins/global/plugins.bundle.css"
	rel="stylesheet" type="text/css" />
<link href="resource/assets/css/style.bundle.css" rel="stylesheet"
	type="text/css" />
<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css"
	rel="stylesheet" type="text/css" />

<!--end::Global Stylesheets Bundle-->
<script>
	// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }
</script>

</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body"
	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<!--begin::Theme mode setup on page load-->
	<script>
		var defaultThemeMode = "light";
		var themeMode;
		if (document.documentElement) {
			if (document.documentElement.hasAttribute("data-bs-theme-mode")) {
				themeMode = document.documentElement
						.getAttribute("data-bs-theme-mode");
			} else {
				if (localStorage.getItem("data-bs-theme") !== null) {
					themeMode = localStorage.getItem("data-bs-theme");
				} else {
					themeMode = defaultThemeMode;
				}
			}
			if (themeMode === "system") {
				themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark"
						: "light";
			}
			document.documentElement.setAttribute("data-bs-theme", themeMode);
		}
	</script>
	<!--end::Theme mode setup on page load-->
	<!--begin::Main-->
	<!--begin::Root-->
	<!--begin::Header 헤더 시작 -->
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	<!--end::Header 헤더 닫기-->
	<div class="d-flex flex-column flex-root">
		<!--begin::Page-->
		<div class="page d-flex flex-row flex-column-fluid">
			<!--begin::Wrapper-->

			<div class="wrapper d-flex flex-column flex-row-fluid"
				id="kt_wrapper">
				<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
				<div class="content fs-6 d-flex flex-column flex-column-fluid"
					id="kt_content"
					style="margin-top: 30px; background-color: #fffff8; margin-left: 30px">
					<h1 class="text-gray-900 fw-bold my-1 fs-2"
						style="margin-left: 50px;">발주 리스트</h1>
					<!--================================메인 내용들어가는부분================================================-->
					<!--사이드바 넣는곳  -->


					<!-- 사이드바 닫는곳 -->

					<!--begin::Post-->
					<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
						<!--begin::Container-->
						<div class="card card-flush mb-0" data-kt-sticky="false"
							data-kt-sticky-name="inbox-aside-sticky"
							data-kt-sticky-offset="{default: false, xl: '100px'}"
							data-kt-sticky-height="300px"
							data-kt-sticky-width="{lg: '275px'}" data-kt-sticky-left="auto"
							data-kt-sticky-top="100px" data-kt-sticky-animation="false"
							data-kt-sticky-zindex="95">
							<!--begin::Aside content-->
							<div class="card-body">
								<!--==========================================서브 사이드바 컨텐츠 리스트==================================================================-->
								<!--begin::Menu-->
								<div
									class="menu menu-column menu-rounded menu-state-bg menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary"
									style="width: 100%; white-space: nowrap">
									<!--begin::Menu item-->

									<!--end::Menu item-->
									<!--begin::Menu item-->
									<div class="menu-item mb-3"
										onclick="location.href='/order/list';">
										<!--begin::Inbox  href="/customer/general" -->
										<span class="menu-link"> <span class="menu-icon"><img
												src="resource/assets/media/icon/side_products.svg"
												class="ki-duotone ki-gift fs-2" style="opacity: .3"></span> <span
											class="menu-title fw-bold">발주</span>
										</span>
										<!--end::Inbox-->
									</div>
									<div class="menu-item mb-3">
										<!--begin::Inbox-->
										<span class="menu-link active"> <span class="menu-icon"><img
												src="resource/assets/media/icon/side_products.svg"
												class="ki-duotone ki-gift fs-2" style="opacity: .3"></span> <span
											class="menu-title fw-bold">발주 리스트</span>
										</span>
										<!--end::Inbox-->
									</div>
									<!--end::Menu item-->
									<!--begin::Menu item-->

									<!--end::Menu item-->
								</div>
								<!--end::Menu-->

							</div>
							<!--end::Aside content-->
						</div>
						<div class="container-xxl">
							<!--begin::Category-->
							<div class="card card-flush">
								<!--begin::Card header-->
								<div class="card-header align-items-center py-5 gap-2 gap-md-5">
									<!--begin::Card title-->
									<div class="card-title">
										<!--begin::Search-->
										<div class="d-flex align-items-center position-relative my-1">
											<i
												class="ki-duotone ki-magnifier fs-3 position-absolute ms-4">
												<span class="path1"></span> <span class="path2"></span>
											</i> <input type="text"
												data-kt-ecommerce-category-filter="search"
												class="form-control form-control-solid w-250px ps-12"
												placeholder="입고 날짜를 입력 해주세요." />
											<button class="btn btn-primary">검색</button>
										</div>
										<!--end::Search-->

									</div>

									<!--end::Card title-->
									<!--begin::Card toolbar-->
									<!--begin::Add product-->

									<!--end::Card toolbar-->
								</div>
								<!--end::Card header-->
								<!--begin::Card body-->
								<div class="card-body pt-0">
									<!--begin::Table-->
									<table class="table align-middle table-row-dashed fs-6 gy-5"
										id="kt_ecommerce_category_table">
										<thead>
											<tr class="text-start fw-bold fs-7 text-uppercase gs-0"
												style="color: #c6da52;">
												<th class="min-w-125px">입고 날짜</th>
												<th class="min-w-125px">발주 번호</th>
												<th class="min-w-125px">차량 번호</th>
												<th class="min-w-125px">배송기사
													이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
											</tr>
										</thead>
										<tbody class="fw-semibold text-gray-600">
											<c:forEach items="${orderlist}" var="List">
												<tr>
													<td>${List.expArrivalDate}</td>
													<td><a href="#" class="btn btn-link text-primary"
														data-bs-toggle="modal" data-bs-target="#kt_modal_1"
														data-order-idx="${List.orderIdx}"> ${List.orderIdx} </a></td>
													<td>${List.resourceName}</td>

													<td>${List.driverName}&nbsp;&nbsp;&nbsp;&nbsp;</td>

												</tr>
											</c:forEach>

										</tbody>
										<!--end::Table body-->
									</table>
									<!--end::Table-->
								</div>
								<!--end::Card body-->
							</div>
							<!--end::Category-->
						</div>
						<!--end::Container-->
					</div>
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
	<script>
		var hostUrl = "/";
	</script>
	<!--begin::Global Javascript Bundle(mandatory for all pages)-->
	<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
	<script src="resource/assets/js/scripts.bundle.js"></script>
	<!--end::Global Javascript Bundle-->
	<!--begin::Vendors Javascript(used for this page only)-->
	-->
	<script
		src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
	<!--end::Vendors Javascript-->
	<!--begin::Custom Javascript(used for this page only)-->
	<script
		src="resource/assets/js/custom/apps/ecommerce/catalog/categories.js"></script>
	<script src="resource/assets/js/widgets.bundle.js"></script>
	<script src="resource/assets/js/custom/widgets.js"></script>
	<script>
		$("#kt_daterangepicker_1").daterangepicker();
	</script>
	<!--end::Custom Javascript-->
	<!--end::Javascript-->
	<div class="modal fade" tabindex="-1" id="kt_modal_1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title">배송 품목</h3>

					<!--begin::Close-->
					<div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
						data-bs-dismiss="modal" aria-label="Close">
						<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span
							class="path2"></span></i>
					</div>
					<!--end::Close-->
				</div>

				<div class="modal-body">
					<div class="py-5">
						<div class="table-responsive">
							<table class="table table-row-dashed table-row-gray-300 gy-7">
								<thead>
									<tr class="text-start fw-bold fs-7 text-uppercase gs-0"
										style="color: #c6da52;">
										<th style="text-align: center;">상품 번호</th>
										<th style="text-align: center;">상품 명</th>
										<th style="text-align: center;">수량(파렛트/전체)</th>

									</tr>
								</thead>
								<tbody>

								</tbody>
							</table>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>

	<script>
		$(document)
				.ready(
						function() {
							var modalClicked = false;

							$('#kt_modal_1')
									.on(
											'show.bs.modal',
											function(e) {
												if (!modalClicked) {
													modalClicked = true;

													var orderIdx = $(
															e.relatedTarget)
															.data('order-idx');

													$.ajax({
																url : '/orderlist/modallist',
																method : 'POST',
																data : {
																	orderIdx : orderIdx
																},
																success : function(
																		response) {

																	console
																			.log(response);

																	var modalTableBody = $('#kt_modal_1 .table tbody');
																	modalTableBody
																			.empty();

																	for (var i = 0; i < response.length; i++) {
																		var order = response[i];
																		var html = '<tr>'
																				+ '<td style="text-align: center;">'
																				+ order.productId
																				+ '</td>'
																				+ '<td style="text-align: center;">'
																				+ order.productName
																				+ '</td>'
																				+ '<td style="text-align: center;">'
																				+ order.quantity
																				+ '/'
																				+ order.quantity
																				* order.unitQuantity
																				+ '&emsp;'
																				+ '</td>'
																				+ '</tr>';
																		modalTableBody
																				.append(html);
																	}
																},
																error : function(
																		e) {

																	console
																			.error(e);
																},
																complete : function() {
																	modalClicked = false;
																}
															});
												}
											});
							headerOnReady();
						});
	</script>
</body>
<!--end::Body-->
</html>