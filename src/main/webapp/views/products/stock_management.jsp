<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
	<!--begin::Head-->
	<head>
		<base href="../../../" />
				<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes</title>
				<meta charset="utf-8" />
				<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
				<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />
				<meta property="og:locale" content="en_US" />
				<meta property="og:type" content="article" />
				<meta property="og:title" content="Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes" />
				<meta property="og:url" content="https://themes.getbootstrap.com/product/craft-bootstrap-5-admin-dashboard-theme" />
				<meta property="og:site_name" content="Craft by Keenthemes" />
				<link rel="canonical" href="https://preview.keenthemes.com/craft" />
				<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
				<!--begin::Fonts(mandatory for all pages)-->
				<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
				<!--end::Fonts-->
				<!--begin::Vendor Stylesheets(used for this page only)-->
				<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
				<!--end::Vendor Stylesheets-->
				<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
				<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
				<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
				<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
				<!--end::Global Stylesheets Bundle-->
				<script>
					// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }
				</script>
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
					themeMode = window
							.matchMedia("(prefers-color-scheme: dark)").matches ? "dark"
							: "light";
				}
				document.documentElement.setAttribute("data-bs-theme",
						themeMode);
			}
		</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::Main-->
		<!--begin::Root-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid">
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 90px;">
					<!--================================메인 내용들어가는부분================================================-->
					

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
											</i> <input type="text" data-kt-ecommerce-category-filter="search" class="form-control form-control-solid w-250px ps-12" placeholder="내용을 입력 해주세요." />
											</div>
											<!--end::Search-->
										</div>
										<!--end::Card title-->
										<!--begin::Card toolbar-->
										<!--begin::Add product-->
											<button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#kt_modal_scrollable_2" >
    품목 추가
</button>

<div class="modal fade" tabindex="-1" id="kt_modal_scrollable_2">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>

                <!--begin::Close-->
                <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                    <i class="ki-duotone ki-cross fs-2x"><span class="path1"></span><span class="path2"></span></i>
                </div>
                <!--end::Close-->
            </div>
<form action="stock/stock_management/insert" method="post">
            <div class="modal-body">
                <h2>물품 항목 추가</h2>
                	<div class="table-responsive">
                
	<table class="table table-hover table-rounded ta	ble-striped border gy-7 gs-7">
		<thead>
			<tr class="fw-semibold fs-6 text-gray-800 border	-bottom-2 border-gray-200">
			
				<td>물품명</td>
				<td colspan="2"><Input type = "text" name="product_name"/></td>
		
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>분류</td>
<td>대분류
    <select class="form-select form-select-solid" data-control="select2" data-placeholder="생필품" data-hide-search="true" name="Bselect" id="Bselect">
        <option></option>
        <option value="식품">식품</option>
        <option value="생필품">생필품</option>
        <option value="전자제품">전자제품</option>
    </select>
</td>
<td>중분류
    <select class="form-select form-select-solid" data-control="select2" data-placeholder="생활 잡화" data-hide-search="true" name="category_id" id="Sselect">
        <option></option>
    </select>
</td>

			
			</tr>

				<tr>
				<td>단위(파렛트)</td>
				<td colspan="2"><input type  ="text" name="unit_quantity"/></td>
			</tr>
				<tr>
				<td>단가(낱개)</td>
				<td colspan="2"><input type  ="text" name="purchase_price"/></td>
		
			
			
			<tr>
				<td>판매가</td>
				<td colspan="2"><input type  ="text"  name="selling_price"/></td>
				
			
			</tr>
			
		</tbody>
		
	</table>
	
</div>
                
                
                
                	
            </div>

            <div class="modal-footer">
                <button>항목 추가</button>
                
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
										<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_ecommerce_category_table">
											<thead>
												<tr class="text-start text-gray-500 fw-bold fs-7 text-uppercase gs-0" style="background-color: lightgrey">
													<th class="w-10px pe-2">
														상품번호
													</th>
													<th class="min-w-150px">상품명</th>
													<th class="min-w-650px">수량(파렛트/전체)</th>
													<th class="text-end min-w-70px">삭제 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
												</tr>
											</thead>
											<tbody class="fw-semibold text-gray-600">
											<c:forEach items="${list}" var="stock">
												<tr>
													<td>
														${stock.product_id}
													</td>
													<td>
														<div class="d-flex">
															
															<a href="views/products/stock_detail.jsp" class="text-gray-800 text-hover-primary fs-5 fw-bold mb-1" data-kt-ecommerce-category-filter="category_name">${stock.product_name}</a>
												
														</div>
													</div>
													</td>
													<td>
														${stock.stock}
													</td>
													
													<td class="text-end">
														<a href="#" class="btn btn-sm btn-light btn-active-light-primary btn-flex btn-center" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">Actions 
														<i class="ki-duotone ki-down fs-5 ms-1"></i></a>
														<!--begin::Menu-->
														<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold fs-7 w-125px py-4" data-kt-menu="true">
															<!--begin::Menu item-->
															<div class="menu-item px-3">
																<a href="apps/ecommerce/catalog/add-category.jsp" class="menu-link px-3">Edit</a>
															</div>
															<!--end::Menu item-->
															<!--begin::Menu item-->
															<div class="menu-item px-3">
																<a href="#" class="menu-link px-3" data-kt-ecommerce-category-filter="delete_row">Delete</a>
															</div>
															<!--end::Menu item-->
														</div>
														<!--end::Menu-->
													</td>
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
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->
		<script src="resource/assets/js/custom/apps/ecommerce/catalog/categories.js"></script>
		<script src="resource/assets/js/widgets.bundle.js"></script>
		<script src="resource/assets/js/custom/widgets.js"></script>
		<script src="resource/assets/js/custom/apps/chat/chat.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/type.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/budget.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/settings.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/team.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/targets.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/files.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/complete.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/main.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/users-search.js"></script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
		
		
		<script>
    $(document).ready(function() {
        // 대분류 선택이 변경될 때 이벤트 처리
        $("#Bselect").change(function() {
            // 선택한 대분류 값 가져오기
            var selectedCategory = $(this).val();

            // 중분류 선택 옵션 초기화
            $("#Sselect").empty();

            // 선택한 대분류에 따라 중분류 옵션 추가
            if (selectedCategory === "식품") {
                $("#Sselect").append('<option value="1">주류</option>');
                $("#Sselect").append('<option value="2">가공</option>');
                $("#Sselect").append('<option value="3">신선</option>');
            } else if (selectedCategory === "생필품") {
                $("#Sselect").append('<option value="4">주방</option>');
                $("#Sselect").append('<option value="5">청소</option>');
                $("#Sselect").append('<option value="6">생활잡화</option>');
            } else if (selectedCategory === "전자제품") {
            	 $("#Sselect").append('<option value="7">가전</option>');
                 $("#Sselect").append('<option value="8">컴퓨터</option>');
                 $("#Sselect").append('<option value="9">디지털</option>');
            }
        });
    });
</script>
		
	</body>
	<!--end::Body-->
</html>