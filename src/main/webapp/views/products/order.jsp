<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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

button {
	background-color: white;
	border: white;
	box-shadow: none;
}

button i.bi {
	font-size: 1.5rem; /* 원하는 크기로 조절하세요 */
}
</style>

</head>

<!--end::Head-->
<!--begin::Body-->
<body id="kt_body"
	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="principal" />
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
						id="kt_content"
						style="margin-top: 30px; background-color: #fffff8; margin-left: 30px">
						<h1 class="text-gray-900 fw-bold my-1 fs-2"
							style="margin-left: 50px;">발주</h1>
						<!--================================메인 내용들어가는부분================================================-->
						<!--사이드바 넣는곳  -->
						<jsp:include page="/views/common/sidebar.jsp"></jsp:include>

						<!-- 사이드바 닫는곳 -->
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="card card-flush mb-0" data-kt-sticky="false"
								data-kt-sticky-name="inbox-aside-sticky"
								data-kt-sticky-offset="{default: false, xl: '100px'}"
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
										<div class="menu-item mb-3">
											<!--begin::Inbox-->
											<span class="menu-link active"> <span
												class="menu-icon"><img
													src="resource/assets/media/icon/side_products.svg"
													class="ki-duotone ki-gift fs-2" style="opacity: .3"></span>
												<span class="menu-title fw-bold">발주</span>
											</span>
											<!--end::Inbox-->
										</div>
										<div class="menu-item mb-3"
											onclick="location.href='/orderlist/list';">
											<!--begin::Inbox  href="/customer/general" -->
											<span class="menu-link"> <span class="menu-icon"><img
													src="resource/assets/media/icon/side_products.svg"
													class="ki-duotone ki-gift fs-2" style="opacity: .3"></span>

												<span class="menu-title fw-bold">발주 리스트</span>
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
											<div class="d-flex align-items-center position-relative my-1"
												id="searchContainer">
												<i
													class="ki-duotone ki-magnifier fs-3 position-absolute ms-4">
													<span class="path1"></span> <span class="path2"></span>
												</i> <input type="text"
													data-kt-ecommerce-category-filter="search"
													class="form-control form-control-solid w-300px ps-12"
													placeholder="제품이름 또는 번호를 입력 해주세요." />
												<button class="btn btn-primary">검색</button>
											</div>
											<!--end::Search-->


										</div>

										<div class="mb-0">
											<label class="form-label">입고 희망 날짜</label>
											<!-- Date Input -->
											<input class="form-control form-control-solid"
												placeholder="날짜를 선택 해주세요." id="kt_daterangepicker_3"
												name="birthdate" />




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
														<td>${order.productName}<input type="hidden"
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
									<div style="margin-top: 20px;">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal"
											data-bs-target="#kt_modal_scrollable_2"
											style="position: absolute; bottom: 0; right: 0;">발주할
											물품 목록</button>
									</div>
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
													<i class="ki-duotone ki-cross fs-2x"><span
														class="path1"></span><span class="path2"></span></i>

												</div>

												<!--end::Close-->
											</div>

											<div class="modal-body">



												<div class="py-5">
													<div class="table-responsive">
														<div style="display: flex;">
															<div class="w-150px">
																배송기사 선택 <select class="form-select form-select-solid"
																	data-control="select2"
																	data-dropdown-css-class="w-200px"
																	data-placeholder="배송기사를 선택 해주세요!"
																	data-hide-search="true" id="orderDriverList">
																	<c:forEach items="${list3}" var="order3">
																		<option value="${order3.driverIdx}" selected>${order3.driverName}</option>
																	</c:forEach>
																</select>

															</div>
															<div class="w-150px">
																배송차량 선택 <select class="form-select form-select-solid"
																	data-control="select2"
																	data-dropdown-css-class="w-200px"
																	data-placeholder="배송차량을 선택 해주세요!"
																	data-hide-search="true" id="orderCarNum">
																	<c:forEach items="${list4}" var="order4">
																		<option value="${order4.resourceIdx}" selected>${order4.resourceName}</option>
																	</c:forEach>
																</select>

															</div>
															<div id="selectedDate" style="margin-left: auto;"></div>
														</div>
														<table
															class="table table-row-dashed table-row-gray-300 gy-7"
															id="orderModal">
															<thead>
																<tr class="text-start fw-bold fs-7 text-uppercase gs-0"
																	style="color: #c6da52;">
																	<th class="min-w-125px">삭제</th>
																	<th class="min-w-125px">물품 명</th>
																	<th class="min-w-125px">발주할 물품 개수(파레트)</th>
																	<th class="min-w-125px">낱개 개수(총합)</th>
																</tr>
															</thead>
															<tbody id="orderModalBody">
															</tbody>
														</table>

													</div>
												</div>
											</div>

											<div class="modal-footer">

												<button type="button" class="btn btn-primary" id="orderBtn">발주
													하기</button>

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
        var countValue = row.querySelector('input[name="count"]').value.trim();
        var emp = '${principal.username}';
        
        if (countValue === '' || parseInt(countValue) === 0) {
           
            Swal.fire({
                title: '알림',
                text: '발주할 물품 개수를 입력해주세요.',
                icon: 'info',
                confirmButtonText: '확인',
                buttonsStyling: false,
                customClass: {
                    confirmButton: 'btn btn-primary'
                }
            });
            return; 
        }

        Swal.fire({
            title: '확인',
            text: '물품을 추가하시겠습니까?',
            icon: 'question',
            showCancelButton: true,
            confirmButtonText: '확인',
            cancelButtonText: '취소',
        }).then((result) => {
            if (result.isConfirmed) {
                var selectedDate = $('#kt_daterangepicker_3').val().trim();

             
                if (new Date(selectedDate) < new Date()) {
                    Swal.fire({
                        title: '확인',
                        text: '입고희망 날짜는 오늘 날짜 이후로 선택 해야 합니다.',
                        icon: 'info',
                        showCancelButton: false,
                        confirmButtonText: '확인',
                    });
                } else {
             
                    $.ajax({
                        url: '/order/ordercart/insert',
                        method: 'POST',
                        data: {
                            productId: row.querySelector('input[name="productId"]').value.trim(),
                            count: countValue,
                            birthdate: selectedDate,
                            empIdx: emp,
                            firstbirthdate: selectedDate,
                        },
                        success: function (response) {
                            console.log('물품 추가 결과:', response);

                            Swal.fire({
                                title: response === 'success' ? '물품이 추가되었습니다.' : '이미 추가된 물품입니다.',
                                icon: response === 'success' ? 'success' : 'error',
                                confirmButtonText: '확인',
                                buttonsStyling: false,
                                customClass: {
                                    confirmButton: 'btn btn-primary'
                                }
                            });
                        },
                        error: function (e) {
                            console.error('물품 추가 에러:', e);
                        }
                    });
                }
            }
        });
    }
    // --------------------------------------------------------------------------------------------------------
    $("#kt_daterangepicker_3").daterangepicker({
        singleDatePicker: true,
        showDropdowns: true,
        minYear: 1901,
        maxYear: parseInt(moment().format("YYYY"),12)
       	
    }
);
    //--------------------------------------------------------------------발주 모달 리스트
    
 $(document).ready(function() {
    $('#kt_modal_scrollable_2').on('show.bs.modal', function (e) {
    	fetchDriverList();
    	fetchData();
    });
    function fetchDriverList() {
        
        $.ajax({
            url: '/order/orderdriver/list',
            method: 'GET',
            dataType: 'json',
            success: function(driverList, textStatus, xhr) {
                renderDriverList(driverList);
            },
            error: function(e) {
                console.error('에러....:', e);
            }
        });
    }

    function renderDriverList(driverList) {
       
        var selectElement = $('#orderDriverList'); 
        selectElement.empty();

        if (driverList.length === 0) {
            selectElement.append('<option value="" selected>드라이버 없음</option>');
        } else {
            $.each(driverList, function(index, driver) {
                selectElement.append('<option value="' + driver.driverIdx + '">' + driver.driverName + '</option>');
            });
        }
    }
    function fetchData() {
        $.ajax({
            url: '/order/ordercart/list',
            method: 'GET',
            dataType: 'json',
            success: function(data, textStatus, xhr) {
                    renderData(data);
            },
            error: function(e) {
                console.error('에러....:', e);
            }
        });
    }

    function renderData(data) {
        var tableBody = $('#orderModalBody'); 
        tableBody.empty();

        if (data.length === 0) {
            tableBody.append('<tr><td colspan="5">발주할 물품을 추가해주세요.</td></tr>');
        } else {
            $.each(data, function(index, order) {
                var row = $('<tr>');
                row.append('<td class="min-w-125px"><button class="delete-btn" data-product-name="' + order.productName + '"><i class="bi bi-x-circle"></i></button></td>');
                row.append('<td class="min-w-125px">' + order.productName + '</td>');
                row.append('<td class="min-w-125px">' + order.orderQuantity +'개(파레트 개수)'+ '</td>');
                row.append('<td class="min-w-125px">' + order.orderQuantity*order.unitQuantity +'개'+'</td>');
                tableBody.append(row);
            });

            $('.delete-btn').click(function() {
                var productName = $(this).data('product-name');
                $.ajax({
                    url: '/order/ordercart/delete',
                    method: 'POST',
                    data: { productName: productName },
                    success: function(response) {
                        console.log('삭제 성공:', response);
                        fetchData();
                    },
                    error: function(e) {
                        console.error('삭제 에러:', e);
                    }
                });
            });
        }
    }
    headerOnReady();
});
    //-----------------------------------------------------발주하기-------------------------------------------
const orderButton = document.getElementById('orderBtn');

orderButton.addEventListener('click', async function () {
    try {
     
        const response = await $.ajax({
            url: '/order/ordercart/list',
            method: 'GET',
            dataType: 'json'
        });

        console.log('서버 응답:', response);
        if (response.length === 0) {
        // 따로 넣을 내용있으면 넣으려고 비워둠
        } else {
      
            Swal.fire({
                text: '물품을 발주 하시겠습니까?',
                icon: 'question',
                showCancelButton: true,
                confirmButtonText: '확인',
                cancelButtonText: '취소',
                buttonsStyling: false,
                customClass: {
                    confirmButton: 'btn btn-primary',
                    cancelButton: 'btn btn-secondary'
                }
            }).then((result) => {
                if (result.isConfirmed) {
                	var emp = '${principal.username}';
                    const selectedDriverIdx = $("select[data-control='select2']").val();
                    const selectedResourceIdx = $("#orderCarNum").val();
                    $.ajax({
                        url: '/order/insert',
                        method: 'POST',
                        data: {
                            driverIdx: selectedDriverIdx,
                            empIdx : emp,
                            resourceIdx :selectedResourceIdx 
                        },
                        success: function (response) {
                          	
                            console.log('발주 성공:', response);

                         
                            Swal.fire({
                                text: '발주가 성공적으로 완료되었습니다.',
                                icon: 'success',
                                buttonsStyling: false,
                                confirmButtonText: '확인',
                                customClass: {
                                    confirmButton: 'btn btn-primary'
                                }
                            }).then(() => {
                            
                                $('.btn[data-bs-dismiss="modal"]').click();
                                $('table#kt_ecommerce_category_table input[name="count"]').val(0);
                            });
                        },
                        error: function (e) {
                       
                            console.error('발주 에러:', e);
                        }
                    });
                }
            });
        }
    } catch (error) {
        console.error('에러....:', error);
        Swal.fire({
            text: '발주할 물품이 없습니다.',
            icon: 'info',
            buttonsStyling: false,
            confirmButtonText: '확인',
            customClass: {
                confirmButton: 'btn btn-primary'
            }
        });
    }
});

    //-------------------------------------------------------------------
    var msg = "${msg}";
if(msg != ""){
	alert(msg);
}
//--------------------------------------------------------------------


</script>
		<script>
    $(document).ready(function() {
        $('#kt_daterangepicker_3').change(function() {
            var selectedDate = $(this).val();
            var formattedDate = moment(selectedDate, 'MM/DD/YYYY').format('YYYY-MM-DD');

            $('#selectedDate').text('입고희망 날짜: ' + formattedDate);
        });
    });
</script>
	</sec:authorize>
</body>
<!--end::Body-->
</html>