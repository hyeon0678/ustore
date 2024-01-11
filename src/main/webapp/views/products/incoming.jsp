<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<head>
<base href="../../../" />
<title>incoming_managment</title>
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
				<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 30px; background-color: #fffff8; margin-left: 30px"> 
				<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">입고 관리</h1>
					<!--================================메인 내용들어가는부분================================================-->

					<!--사이드바 넣는곳  -->
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>

					<!-- 사이드바 닫는곳 -->


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
										<div class="d-flex align-items-center position-relative my-1">
											<i
												class="ki-duotone ki-magnifier fs-3 position-absolute ms-4">
												<span class="path1"></span> <span class="path2"></span>
											</i> <input type="text"
												data-kt-ecommerce-category-filter="search"
												class="form-control form-control-solid w-250px ps-12"
												placeholder="내용을 입력해주세요." />
												<button class="btn btn-primary">검색</button>
										</div>
										<!--end::Search-->

									</div>
									<div class="mb-0">
										<input class="form-control form-control-solid"
											placeholder="날짜를 선택 해주세요" id="kt_daterangepicker_1" />
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
											<tr class="text-start fw-bold fs-7 text-uppercase gs-0" style=" color: #c6da52;">
												<th class="w-150px pe-2">입고 예정일</th>
												<th class="min-w-150px">발주 번호</th>
												<th class="mi	n-w-125px">차량 번호</th>
												<th class="text-center min-w-100px">배송기사
													이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
											</tr>
										</thead>
										<tbody id="incomingTableBody">
										<c:forEach items="${incomList}" var="List">
										<tr>
										<td>${List.expArrivalDate}</td>
										<td><a href="#" class="btn btn-link text-primary confirmButton" data-order-idx="${List.orderIdx}" data-bs-toggle="modal" data-bs-target="#kt_modal_1">&emsp;${List.orderIdx}</a></td>
										<td>${List.resourceName}</td>
										<td class = "text-center">${List.driverName}</td>
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
				</div>
				<!--end::Content-->
			</div>
			<!--end::Wrapper-->
		</div>
		<!--end::Page-->
	</div>
	<!--end::Root-->


													<div class="modal fade" tabindex="-1" id="kt_modal_1">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<h3 class="modal-title" style=" color: #c6da52;">배송 품목</h3>

																	<!--begin::Close-->
																	<div
																		class="btn btn-icon btn-sm btn-active-light-primary ms-2"
																		data-bs-dismiss="modal" aria-label="Close">
																		<i class="ki-duotone ki-cross fs-1"><span
																			class="path1"></span><span class="path2"></span></i>
																	</div>
																	<!--end::Close-->
																</div>

																<div class="modal-body">
																	<div class="py-5">
																		<div class="table-responsive">
																			<table
																				class="table table-row-dashed table-row-gray-300 gy-7">
																				<thead>
																					<tr class="fw-bold fs-6 text-gray-800">
																						<th>상품 번호</th>
																						<th>상품 명</th>
																						<th>수량(파렛트/전체)</th>
																						<th>입고 확인</th>
																					</tr>
																				</thead>
																				 <tbody id="modalTableBody">
																				</tbody>
																			</table>
																		</div>
																	</div>
																</div>


															</div>
														</div>
													</div>
	<!--begin::Javascript-->
	<script>
		var hostUrl = "/";
	</script>
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
	
	<script>
	
		$("#kt_daterangepicker_1").daterangepicker();
		
		
	// ----------------------입고 리스트 ----------------------------

 $(document).ready(function () {
	  var dateRangePicker = $("#kt_daterangepicker_1");
	    dateRangePicker.val('');
   
    $(document).on('click', '.confirmButton', function () {
        var orderIdx = $(this).data('order-idx');
        confirmButtonClick(orderIdx);
    });

    
    function confirmButtonClick(orderIdx) {
       
        $('#kt_modal_1').modal('show');

  
        $.ajax({
            url: '/stock/incomingmodal/list',
            type: 'GET',
            data: { orderIdx: orderIdx },
            dataType: 'json',
            success: function (data) {
                renderModalData(data, orderIdx);
            },
            error: function (error) {
                console.error('Error fetching modal data:', error);
            }
        });
    }

    function renderModalData(data, orderIdx) {

        var modalTableBody = $('#modalTableBody');
        modalTableBody.empty();

        $.each(data, function (index, item) {
            var isConfStatusN = (item.confStatus !== 'N');
            var row = '<tr>' +
                '<td>' + item.productId + '</td>' +
                '<td>' + item.productName + '</td>' +
                '<td style="text-align: center;">' + item.quantity +'/'+item.quantity * item.unitQuantity+'&emsp;'+'</td>' +
                '<td>' + '<button class="btn btn-primary confirmButton" ' +
                'data-product-id="' + item.productId + '" ' +
                'data-total-quantity="' + item.quantity * item.unitQuantity + '" ' +
                'data-order-idx="' + orderIdx + '" ' +
                (isConfStatusN ? 'disabled' : '') + '>확인</button>' + '</td>' +
                '</tr>';
            modalTableBody.append(row);
        });

       
        $('#modalTableBody').off('click', '.confirmButton').on('click', '.confirmButton', function () {
            var button = $(this);
            var productId = button.data('product-id');
            var totalQuantity = button.data('total-quantity');
            var orderIdx = button.data('order-idx');

            
            button.prop('disabled', true);

            sendRequest(productId, totalQuantity, orderIdx);
        });
    }

   
    function sendRequest(productId, totalQuantity, orderIdx) {
        
        $.ajax({
            url: '/stock/incomingmodal/update',
            type: 'POST',
            data: { productId: productId, totalQuantity: totalQuantity, orderIdx: orderIdx },
            dataType: 'json',
            success: function (response) {
                console.log('Server response:', response);

                if (response === true) {
                    Swal.fire({
                        text: '상품 입고처리가 모두 완료 되었습니다!.',
                        icon: 'success',
                        buttonsStyling: false,
                        confirmButtonText: '확인',
                        customClass: {
                            confirmButton: 'btn btn-primary'
                        }
                    }).then(function () {
                        window.location.href = '/stock/incoming/list';
                    });
                } else {
                   
                }
            },
            error: function (error) {
                console.error('Error sending request:', error);
            }
        });
    }
	  headerOnReady();
});
	//-------------------------------------캘린더------------------------------
	$(document).ready(function () {
    $("#kt_daterangepicker_1").change(function () {
        var selectedDate = $(this).val(); 

        $.ajax({
            url: '/stock/incomingcalendar/list',
            method: 'GET',
            data: { selectedDate: selectedDate },
            success: function (response) {
                console.log('Server response:', response);

              
                var tableBody = $("#incomingTableBody"); 
                tableBody.empty();

              
                $.each(response, function (index, item) {
                    var newRow = '<tr>' +
                        '<td>' + item.expArrivalDate + '</td>' +
                        '<td><a href="#" class="btn btn-link text-primary confirmButton" data-order-idx="' + item.orderIdx + '" data-bs-toggle="modal" data-bs-target="#kt_modal_1">' +'&emsp;'+item.orderIdx + '</a></td>' +
                        '<td>' + item.resourceName + '</td>' +
                        '<td class = "text-center">' + item.driverName + '</td>' +
                        '</tr>';
                    tableBody.append(newRow);
                });
            },
            error: function (error) {
                console.error('Error sending request:', error);
            }
        });
    });
});
</script>
	<!--end::Custom Javascript-->
	<!--end::Javascript-->

</body>
<!--end::Body-->
</html>