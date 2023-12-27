<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<head>
<base href="../../../" />
<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by
	KeenThemes</title>
<meta charset="utf-8" />
<meta name="description"
	content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
<meta name="keywords"
	content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="article" />
<meta property="og:title"
	content="Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes" />
<meta property="og:url"
	content="https://themes.getbootstrap.com/product/craft-bootstrap-5-admin-dashboard-theme" />
<meta property="og:site_name" content="Craft by Keenthemes" />
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

<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
<style>
.custom-input-group {
	position: absolute;
	top: 800px; /* 원하는 수직 위치 (위치는 조절 가능합니다.) */
	left: 20px; /* 원하는 수평 위치 (위치는 조절 가능합니다.) */
}

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
<body id="kt_body"
	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<!--begin::Theme mode setup on page load-->
	<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
	<!--end::Theme mode setup on page load-->
	<!--begin::Header 헤더 시작 -->
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	<!--end::Header 헤더 닫기-->
	<!--begin::Main-->
	<!--begin::Root-->
	<div class="d-flex flex-column flex-root">
		<!--begin::Page-->

		<div class="page d-flex flex-row flex-column-fluid">
			<!--begin::Wrapper-->

			<div class="wrapper d-flex flex-column flex-row-fluid"
				id="kt_wrapper">
				<!--begin::Content-->

				<div class="content fs-6 d-flex flex-column flex-column-fluid"
					id="kt_content" style="margin-top: 90px;">
					<!--================================메인 내용들어가는부분================================================-->
					<!--사이드바 넣는곳  -->
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>

					<!-- 사이드바 닫는곳 -->
					<!--begin::Post-->
					<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
						<!--begin::Container-->
						<div class="container-xxl">
							<!--begin::Category-->
							<div class="card card-flush">
								<!--begin::Card header-->
								<div class="card-header align-items-center py-5 gap-2 gap-md-5">
									<!--begin::Card title-->
									<div class="card-title">
										<!--begin::Search-->
										<div class="d-flex align-items-center position-relative my-1"
											id="searchContainer">
											<i
												class="ki-duotone ki-magnifier fs-3 position-absolute ms-4">
												<span class="path1"></span> <span class="path2"></span>
											</i> <input type="text"
												data-kt-ecommerce-category-filter="search"
												class="form-control form-control-solid w-250px ps-12"
												placeholder="내용을 입력하세요" />
										</div>

										<!--end::Search-->
									</div>

									<div class="mb-0">
										<label class="form-label">입고 희망 날짜</label> 
									    	<form id="dateForm" action="/dateSelect" method="get">
    <!-- Date Input -->
    <input type="date" id="birthdate" name="birthdate">

    <!-- Submit Button -->
    <button type="button" onclick="submitForm()">선택</button>
</form>
									    	 		
									    	
									    	 	
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
											<tr
												class="text-start text-gray-500 fw-bold fs-7 text-uppercase gs-0"
												style="background-color: lightgrey">
												<th class="w-550px pe-2">제품 이름</th>
												<th class="min-w-350px">제품 번호</th>
												<th class="min-w-350px">분류(대분류>중분류)</th>
												<th class="min-w-200px">제품 개수
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
											</tr>
										</thead>
										<tbody class="fw-semibold text-gray-600">
											<c:forEach items="${list}" var="order">
												<tr>
													<td>${order.productName} <input type="hidden"
														name="productId" value="${order.productId}">
													</td>
													<td>${order.productId}</td>
													<td><c:choose>
															<c:when
																test="${order.categoryName eq '주류' or order.categoryName eq '가공' or order.categoryName eq '신선'}">
            식품 > ${order.categoryName}
        </c:when>
															<c:when
																test="${order.categoryName eq '주방' or order.categoryName eq '청소' or order.categoryName eq '생활잡화'}">
            생필품 > ${order.categoryName}
        </c:when>
															<c:when
																test="${order.categoryName eq '가전' or order.categoryName eq '컴퓨터' or order.categoryName eq '디지털'}">
            전자제품 > ${order.categoryName}
        </c:when>
															<c:otherwise>
            기타 > ${order.categoryName}
        </c:otherwise>
														</c:choose></td>

													<td style="text-align: center;">
														<div class="input-group w-md-200px" data-kt-dialer="true"
															data-kt-dialer-currency="true" data-kt-dialer-min="0"
															data-kt-dialer-max="9999999999999999999"
															data-kt-dialer-step="1" data-kt-dialer-prefix="">

															<!-- begin::Decrease control -->
															<button
																class="btn btn-icon btn-outline btn-active-color-primary"
																type="button" data-kt-dialer-control="decrease">
																<i class="ki-duotone ki-minus fs-2"></i>
															</button>
															<!-- end::Decrease control -->

															<!-- begin::Input control -->
															<input type="text" class="form-control"
																placeholder="Amount" value="0"
																data-kt-dialer-control="input" name="count" />
															<!-- end::Input control -->
															

															<!-- begin::Increase control -->
															<button
																class="btn btn-icon btn-outline btn-active-color-primary"
																type="button" data-kt-dialer-control="increase">
																<i class="ki-duotone ki-plus fs-2"></i>
															</button>
															<button type="button" onclick="submitForm(this)"
																id="kt_docs_sweetalert_basic" class="btn btn-primary">추가</button>
															<!-- end::Increase control -->

														</div>

													</td>
												</tr>
											</c:forEach>




										</tbody>
										<!--end::Table body-->

									</table>
									<!--end::Table-->

								</div>

								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#kt_modal_scrollable_2"
									style="position: absolute; bottom: 0; right: 0;">발주할
									물품 목록</button>

							</div>

							<div class="modal fade" tabindex="-1" id="kt_modal_scrollable_2">
								<div class="modal-dialog modal-dialog-scrollable modal-lg">
									<div class="modal-content">
										<div class="modal-header">
											<h1>발주할 물품</h1>


											<!--begin::Close-->
											<div
												class="btn btn-icon btn-sm btn-active-light-primary ms-2"
												data-bs-dismiss="modal" aria-label="Close">
												<i class="ki-duotone ki-cross fs-2x"><span class="path1"></span><span
													class="path2"></span></i>

											</div>

											<!--end::Close-->
										</div>

										<div class="modal-body">



												<div class="py-5">
													<div class="table-responsive">
														<div class="w-150px">
															배송기사 선택 <select class="form-select form-select-solid"
																data-control="select2" data-dropdown-css-class="w-200px"
																data-placeholder="배송기사를 선택 해주세요!" data-hide-search="true">
														<c:forEach items="${list3}" var="order3">
																<option value="1" selected>${order3.driverName}</option>
												</c:forEach>
															</select>
														
														</div>
														
														<table
															class="table table-row-dashed table-row-gray-300 gy-7">
															<thead>
															</thead>
															<tbody>
																<c:forEach items="${list2}" var="order2">
																<tr class="fw-bold fs-6 text-gray-800">
																	<th>X</th>
																	<th>${order2.productName}</th>
																	<th colspan="2"></th>
																	<th><div class="input-group w-md-200px"
																			data-kt-dialer="true" data-kt-dialer-currency="true"
																			data-kt-dialer-min="0"
																			data-kt-dialer-max="9999999999999999999"
																			data-kt-dialer-step="1" data-kt-dialer-prefix="">
	
																			<!--begin::Decrease control-->
																			<button
																				class="btn btn-icon btn-outline btn-active-color-primary"
																				type="button" data-kt-dialer-control="decrease">
																				<i class="ki-duotone ki-minus fs-2"></i>
																			</button>
																			<!--end::Decrease control-->
	
																			<!--begin::Input control-->
																			<input type="text" class="form-control"
																				placeholder="Amount" value="0"
																				data-kt-dialer-control="input" />
																			<!--end::Input control-->
	
																			<!--begin::Increase control-->
																			<button
																				class="btn btn-icon btn-outline btn-active-color-primary"
																				type="button" data-kt-dialer-control="increase">
																				<i class="ki-duotone ki-plus fs-2"></i>
																			</button>
																			<!--end::Increase control-->
																		</div> <!--end::Dialer--></th>
																	<th>낱개 갯수:${order2.unitQuantity}</th>
	
																</tr>
</c:forEach>
															</tbody>
														</table>	
	
													</div>
												</div>
											</div>
	
											<div class="modal-footer">
	
												<button type="button" class="btn btn-primary">발주 하기</button>
	
											</div>
	
										</div>
									</div>
								</div>
							</div>
						<!--end::Container-->
					</div>
				</div>
				<!--end::Content-->
			</div>
			<!--end::Wrapper-->
		</div>
		<!--end::Page-->
	</div>
	<!--end::Root-->

	<!--begin::Javascript-->
	<script>var hostUrl = "/";</script>
	<!--begin::Global Javascript Bundle(mandatory for all pages)-->
	<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
	<script src="resource/assets/js/scripts.bundle.js"></script>
	<!--end::Global Javascript Bundle-->
	<!--begin::Vendors Javascript(used for this page only)-->
	<script
		src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
	<!--end::Vendors Javascript-->
	<!--begin::Custom Javascript(used for this page only)-->
	<script
		src="resource/assets/js/custom/apps/ecommerce/catalog/categories.js"></script>
	<script src="resource/assets/js/widgets.bundle.js"></script>
	<script src="resource/assets/js/custom/widgets.js"></script>
	<!--end::Custom Javascript-->
	<!--end::Javascript-->
	<script>$("#kt_daterangepicker_1").daterangepicker();</script>
	<script>
    document.querySelector('.deleteRow').addEventListener('click', function () {
        var row = this.parentNode.parentNode;
        row.parentNode.removeChild(row);
    });
</script>
	<script>
    document.getElementById('searchContainer').style.display = 'none';

    document.querySelector('[data-kt-ecommerce-category-filter="search"]').addEventListener('input', function() {
        var searchContainer = document.getElementById('searchContainer');
        searchContainer.style.display = this.value.trim() === '' ? 'none' : 'flex';
    });

    function submitForm(button) {
        var row = button.closest('tr'); 

        
        Swal.fire({
            title: '확인',
            text: '물품을 추가하시겠습니까?',
            icon: 'question',
            showCancelButton: true,
            confirmButtonText: '확인',
            cancelButtonText: '취소',
        }).then((result) => {
            if (result.isConfirmed) {
            	
                // 폼 생성
                var form = document.createElement('form');
                form.action = '/order/ordercart/insert';
                form.method = 'POST';

                // hidden input 추가 (productId)
                var productIdInput = document.createElement('input');
                productIdInput.type = 'hidden';
                productIdInput.name = 'productId';
                productIdInput.value = row.querySelector('input[name="productId"]').value.trim();
                form.appendChild(productIdInput);

                // hidden input 추가 (count)
                var countInput = document.createElement('input');
                countInput.type = 'hidden';
                countInput.name = 'count';
                countInput.value = row.querySelector('input[name="count"]').value.trim();
                form.appendChild(countInput);
                
             
                

                // 폼을 body에 추가하고 submit
                document.body.appendChild(form);
                form.submit();

                // 폼을 body에서 제거
                document.body.removeChild(form);
            }
        });
    }
    
    function submitForm() {
       
        document.getElementById("dateForm").submit();
    }
</script>
</body>
<!--end::Body-->
</html>