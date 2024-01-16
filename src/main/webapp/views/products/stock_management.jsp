<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<head> 	
<base href="../../../" />
<title>stock_management</title>
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
	<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
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
				<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">재고 관리</h1>
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
										<div class="d-flex align-items-center position-relative my-1">
											<i
												class="ki-duotone ki-magnifier fs-3 position-absolute ms-4">
												<span class="path1"></span> <span class="path2"></span>
											</i> <input type="text"
												data-kt-ecommerce-category-filter="search"
												class="form-control form-control-solid w-300px ps-12"
												placeholder="상품 명과 상품 번호를 입력 해주세요." />
												<button class="btn btn-primary">검색</button>
										</div>
										<!--end::Search-->
									</div>
									<!--end::Card title-->
									<!--begin::Card toolbar-->
									<!--begin::Add product-->
									<button type="button" class="btn btn-primary"
										data-bs-toggle="modal" data-bs-target="#kt_modal_scrollable_2">
										품목 추가</button>

									<div class="modal fade" tabindex="-1"
										id="kt_modal_scrollable_2">
										<div class="modal-dialog modal-dialog-scrollable">
											<div class="modal-content">
												<div class="modal-header">
													<h2 class="modal-title" style=" color: #c6da52;">물품 항목 추가</h2>

													<!--begin::Close-->
													<div
														class="btn btn-icon btn-sm btn-active-light-primary ms-2"
														data-bs-dismiss="modal" aria-label="Close">
														<i class="ki-duotone ki-cross fs-2x"><span
															class="path1"></span><span class="path2"></span></i>
													</div>
													<!--end::Close-->
												</div>
												<form id="myForm" action="stock/stockmanagement/insert" method="post">
													
													<div class="modal-body">
														
														<div class="table-responsive">

															<table
																class="table table-hover table-rounded ta	ble-striped border gy-7 gs-7">
																<thead>
																	<tr
																		class="fw-semibold fs-6 text-gray-800">

																		<td class="min-w-125px">물품명&emsp;</td>
																		<td colspan="2"><input type="text" class="form-control" placeholder="물품 이름을 입력 해주세요." name="productName"/></td>

																	</tr>
																</thead>
																<tbody>
																	<tr
																		class="fw-semibold fs-6 text-gray-800">
																		<td class="min-w-125px" style="vertical-align: bottom;">분류</td>
																		<td>대분류 <select
																			class="form-select form-select-solid"
																			data-control="select2" data-placeholder="선택"
																			data-hide-search="true" name="Bselect" id="Bselect">
																				<option></option>
																				<option value="식품">식품</option>
																				<option value="생필품">생필품</option>
																				<option value="전자제품">전자제품</option>
																		</select>
																		</td>
																		<td >중분류 <select
																			class="form-select form-select-solid"
																			data-control="select2" data-placeholder="선택"
																			data-hide-search="true" name="categoryId"
																			id="Sselect">
																				<option></option>
																		</select>
																		</td>


																	</tr>

																	<tr
																		class="fw-semibold fs-6 text-gray-800">
																		<td class="min-w-125px" style="vertical-align: bottom;">단위(파렛트)</td>
																		<td colspan="2"><input type="text" class="form-control" placeholder="단위(파렛트)를 입력 해주세요." name="unitQuantity"/></td>
																	</tr>
																	<tr
																		class="fw-semibold fs-6 text-gray-800">
																		<td class="min-w-125px" style="vertical-align: bottom;">단가(낱개)</td>
																		<td colspan="2"><input type="hidden" name="empIdx" value="${principal.username}"/><input type="text" class="form-control" placeholder="단가(낱개)를 입력 해주세요." name="purchasePrice"/></td></tr>
																</tbody>

															</table>

														</div>




													</div>

													<div class="modal-footer">
														<button id="submitButton" class="btn btn-primary">항목 추가</button>

													</div>
												</form>
											</div>
										</div>
									</div>
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
												<th class="min-w-125px">상품번호</th>
												<th class="min-w-125px">상품명</th>
													<th class="min-w-125px">수량(파렛트/전체)</th>
												<th class="min-w-70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;삭제</th>
											</tr>
										</thead>
										<tbody class="fw-semibold text-gray-600">
											<c:forEach items="${list}" var="stock">
												<tr>
													<td>${stock.productId}</td>
													 <td>
            <div class="d-flex">
                <a href="/stock/stockdetail/list?productId=${stock.productId}" class="btn-link text-gray-800 text-hover-primary fs-5 fw-bold mb-1">
    ${stock.productName}
</a>
            </div>
        </td>
													<td><c:choose>
    <c:when test="${stock.stock gt 0}">
        <c:set var="roundedStock" value="${fn:substringBefore(fn:replace(Math.ceil(stock.stock / stock.unitQuantity), '\\\\.0', ''), '.')}" />
        ${roundedStock}
    </c:when>
    <c:otherwise>
        0
    </c:otherwise>
</c:choose>/ ${stock.stock}</td>

													<td ><button class="btn btn-primary" onclick="confirmDelete('${stock.productId}')">삭제</button></td>
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


	<script>
	$(document).ready(function() {
	  
	    $("#Sselect").prop("disabled", true);

	    $("#Bselect").change(function() {
	        var selectedLargeCategory = $(this).val();

	     
	        if (!selectedLargeCategory) {
	 
	            $("#Sselect").prop("disabled", true).empty();
	        } else {
	        
	            $("#Sselect").prop("disabled", false).empty();
	            if (selectedLargeCategory === "식품") {
	                $("#Sselect").append('<option value="01">주류</option>');
	                $("#Sselect").append('<option value="02">가공</option>');
	                $("#Sselect").append('<option value="03">신선</option>');
	            } else if (selectedLargeCategory === "생필품") {
	                $("#Sselect").append('<option value="04">주방</option>');
	                $("#Sselect").append('<option value="05">청소</option>');
	                $("#Sselect").append('<option value="06">생활잡화</option>');
	            } else if (selectedLargeCategory === "전자제품") {
	                $("#Sselect").append('<option value="07">가전</option>');
	                $("#Sselect").append('<option value="08">컴퓨터</option>');
	                $("#Sselect").append('<option value="09">디지털</option>');
	            }
	        }
	    });

	    headerOnReady();
	});
	//------------------------------------------
	function confirmDelete(productId) {
    Swal.fire({
        text: '물품을 삭제 하시겠습니까?.',
        icon: 'info',
        showCancelButton: true,
        buttonsStyling: false,
        confirmButtonText: '확인',
        cancelButtonText: '취소',
        customClass: {
            confirmButton: 'btn btn-primary',
            cancelButton: 'btn btn-secondary'
        }
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: '/stock/stockmanagement/delete',
                method: 'POST',
                data: {
                    productId: productId
                },
                success: function (data) {
                    if (data === "물품이 삭제 되었습니다.") {
    
                        Swal.fire({
                            text: data,
                            icon: 'success',
                            confirmButtonText: '확인',
                            customClass: {
                                confirmButton: 'btn btn-primary'
                            }
                        }).then(() => {
                            window.location.href = '/stock/stockmanagement/list';
                        });
                    } 
                },
                error: function (error) {
                	  Swal.fire({
                          text: '해당 물품은 아직 입고처리중인 상품입니다.',
                          icon: 'info',
                          confirmButtonText: '확인',
                          customClass: {
                              confirmButton: 'btn btn-primary'
                          }
                      });
                    console.error('Error during deletion:', error);
                }
            });
        }
    });
}
		
		
	</script>
<script>
  
    document.getElementById('myForm').addEventListener('submit', function (event) {
  
        var productName = document.querySelector('[name="productName"]').value;
        var Bselect = document.querySelector('[name="Bselect"]').value;
        var categoryId = document.querySelector('[name="categoryId"]').value;
        var unitQuantity = document.querySelector('[name="unitQuantity"]').value;
        var purchasePrice = document.querySelector('[name="purchasePrice"]').value;

     
        if (productName.trim() === '') {
            Swal.fire({
                text: '물품명을 입력해주세요.',
                icon: 'info',
                confirmButtonText: '확인',
                customClass: {
                    confirmButton: 'btn btn-primary'
                }
            });
            event.preventDefault();
        } else if (Bselect.trim() === '') {
            Swal.fire({
                text: '분류를 선택해주세요.',
                icon: 'info',
                confirmButtonText: '확인',
                customClass: {
                    confirmButton: 'btn btn-primary'
                }
            });
            event.preventDefault();
        }else if (unitQuantity.trim() === '') {
            Swal.fire({
                text: '단위를 입력해주세요.',
                icon: 'info',
                confirmButtonText: '확인',
                customClass: {
                    confirmButton: 'btn btn-primary'
                }
            });
            event.preventDefault();
        } else if (purchasePrice.trim() === '') {
            Swal.fire({
                text: '단가를 입력해주세요.',
                icon: 'info',
                confirmButtonText: '확인',
                customClass: {
                    confirmButton: 'btn btn-primary'
                }
            });
            event.preventDefault();
        } else {
        
            event.preventDefault();
            Swal.fire({
                text: '물품이 추가 되었습니다.',
                icon: 'success',
                confirmButtonText: '확인',
                customClass: {
                    confirmButton: 'btn btn-primary'
                }
            }).then(function () {
        
                document.getElementById('myForm').submit();
            });
        }
    });
</script>
</sec:authorize>
</body>
<!--end::Body-->
</html>