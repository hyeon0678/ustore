<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<head>
<base href="../../../" />
<title>stock_detail</title>
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
h1 {
	color: lightgray; /* 원하는 색상으로 변경 */
}

.distroyBtn {
	display: inline-block;
	background-color: #C6DA52;
	border-color: #C6DA52;
}

.container {
	text-align: right;
}

.dangaBtn {
	background-color: #C6DA52;
	text-align: center;
	border-color: #C6DA52;
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
				<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">재고 상세보기</h1>
					<!--================================메인 내용들어가는부분================================================-->
					<!--사이드바 넣는곳  -->
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>

					<!-- 사이드바 닫는곳 -->

					<!--begin::Post-->
					<div class="container">
					<h3 style="color:#fffff8;">칸 넣기용</h3>
					</div>
					<div class="stock">
    <table id="stockDetailTable">
        <tr>
            <td>분류</td>
            <td colspan="2" id="categoryName"></td>
        </tr>
        <tr>
            <td>상품 코드</td>
            <td id="productId"></td>
            
        </tr>
        <tr>
            <td>상품 명</td>
            <td id="productName"></td>
        </tr>
        <tr>
            <td>재고</td>
            <td id="stock"></td>
        </tr>
        <tr>
            <td>단위(파렛트)</td>
            <td id="unitQuantity" style="text-align: center;"></td>
            <td><button onclick="modifyUnitQuantity()" id="unitQuantityBtn" class="btn btn-primary">단위 수정</button></td>
        </tr>
        <tr>
            <td>단가</td>
            <td id="purchasePrice" style="text-align: center;"></td>
            <td><button onclick="modifyPurchasePrice()" id="purchaseBtn" class="btn btn-primary">단가 수정</button></td>
        </tr>
    
    </table>
</div>
					<div>
						<div class="table-responsive">
							<table
								class="table table-hover table-rounded table-striped border gy-7 gs-7"
								style="text-align: center;">
								<thead>
									<tr class="text-start fw-bold fs-7 text-uppercase gs-0" style=" color: #c6da52;">
										<th style="text-align: center;">입고 날짜</th>
										<th style="text-align: center;">파렛트/전체</th>


									</tr>
								</thead>
								<tbody>
								<c:forEach items="${incomingList}" var="incoming">
									<tr>
									<td>${incoming.receiptDate}</td>
									<td>${incoming.quantity}/${incoming.unitQuantity * incoming.quantity}</td>
							</tr>
							</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
					<hr width="100%" color="black" align="center">

					<h1>폐기/파손/분실</h1>
					<div class="container">
						<button type="button" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#kt_modal_2"
							style="background-color: #C6DA52">폐기/파손 등록</button>

						<div class="modal fade" tabindex="-1" id="kt_modal_2">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h3 class="modal-title">폐기/파손 등록</h3>

										<!--begin::Close-->
										<div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
											data-bs-dismiss="modal" aria-label="Close">
											<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span
												class="path2"></span></i>
										</div>
										<!--end::Close-->
									</div>

									<div class="modal-body">
										<div class="table-responsive">
											<table
												class="table table-hover table-rounded table-striped border gy-7 gs-7">
												<thead>
													<tr
														class="fw-semibold fs-6 text-gray-800 border-bottom-2 border-gray-200">

														<th class="min-w-70px">구분</th>
														<th colspan="2"><select
															class="form-select form-select-solid"
															data-control="select2" data-placeholder="선택"
															data-hide-search="true">
																<option></option>
																<option value="1" selected="selected">파손</option>
																<option value="2">폐기</option>
																<option value="3">분실</option>

														</select></th>


													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="min-w-70px">수량</td>
														<td colspan="2"><input type="text"
															class="form-control" placeholder="개수를 입력해 주세요." /></td>


													</tr>
													<tr>
														<td class="min-w-70px">사유</td>
														<td colspan="2" rowspan="5"><textarea cols="50"
																rows="10" placeholder="내용을 입력해 주세요"  class="form-control"></textarea></td>


													</tr>
												</tbody>
											</table>
										</div>
									</div>

									<div class="modal-footer">

										<button class="btn btn-primary">등록</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div>
						<div class="table-responsive">
							<table
								class="table table-hover table-rounded table-striped border gy-7 gs-7">
								<thead>
									<tr class="text-start fw-bold fs-7 text-uppercase gs-0" style=" color: #c6da52;">
										<th>파손/폐기/분실 일자</th>
										<th>구분</th>
										<th>수량(낱개)</th>
										<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사유</th>

									</tr>
								</thead>
								<tbody id="tableBody">
									
									
								</tbody>
							</table>

						</div>
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
	<script>
		var hostUrl = "/";
	</script>
	<!--begin::Global Javascript Bundle(mandatory for all pages)-->
	<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
	<script src="resource/assets/js/scripts.bundle.js"></script>
	<script
		src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
	<script
		src="resource/assets/js/custom/apps/ecommerce/catalog/categories.js"></script>
	<script src="resource/assets/js/widgets.bundle.js"></script>
	<script src="resource/assets/js/custom/widgets.js"></script>

	<script>
		$("#kt_daterangepicker_1").daterangepicker();
	</script>
	<script>
    document.addEventListener('DOMContentLoaded', function () {
     
        fetchStockDetail(); 
    });

    function fetchStockDetail() {
       
        var urlParams = new URLSearchParams(window.location.search);
        var productId = urlParams.get('productId');

       
        fetch('/stock/stockdetail/data?productId=' + encodeURIComponent(productId))
            .then(response => response.json())
            .then(data => {
            
                updateStockDetailTable(data);
            })
            .catch(error => {
                console.error('Error fetching stock detail:', error);
            });
    }

    function updateStockDetailTable(data) {
   
        document.getElementById('categoryName').textContent = data[0].categoryName;
        document.getElementById('productId').textContent = data[0].productId;
        document.getElementById('productName').textContent = data[0].productName;
        document.getElementById('stock').textContent = data[0].stock;
        document.getElementById('unitQuantity').textContent = data[0].unitQuantity;
        document.getElementById('purchasePrice').textContent = data[0].purchasePrice;
    }
    
 
    //-------------------------------------------------단가 수정
 
    function modifyPurchasePrice() {
    var button = document.querySelector('#purchaseBtn');
    var purchasePriceCell = document.getElementById('purchasePrice');

    if (button.textContent === '단가 수정') {
       
        button.textContent = '수정 완료';

       
        var inputElement = document.createElement('input');
        inputElement.type = 'text';
        inputElement.value = purchasePriceCell.textContent;

       
        inputElement.setAttribute('class', 'form-control');
        inputElement.style.width = '100px';

        purchasePriceCell.innerHTML = '';
        purchasePriceCell.appendChild(inputElement);

        
        inputElement.focus();
    } else if (button.textContent === '수정 완료') {
      
        var newPurchasePrice = purchasePriceCell.querySelector('input').value;
        var empIdx = ${principal.username};
        var productId = document.getElementById('productId').textContent;

        
        $.ajax({
            url: '/stock/stockdetailpu/update', 
            method: 'POST',
            data: {
                purchasePrice: newPurchasePrice, 
                productId: productId,
                empIdx: empIdx
            },
            success: function (data) {
          
                console.log('Ajax request successful:', data);

            
                button.textContent = '단가 수정';
                purchasePriceCell.innerHTML = newPurchasePrice;
            },
            error: function (error) {
            
                console.error('Ajax request error:', error);
                button.textContent = '단가 수정';
                purchasePriceCell.innerHTML = newPurchasePrice;
            }
        });
    }
}
    //---------------------단위 수정
    
    function modifyUnitQuantity() {
    var button = document.querySelector('#unitQuantityBtn');
    var unitQuantityCell = document.getElementById('unitQuantity');

    if (button.textContent === '단위 수정') {
      
        button.textContent = '수정 완료';

       
        var inputElement = document.createElement('input');
        inputElement.type = 'text';
        inputElement.value = unitQuantityCell.textContent;

     
        inputElement.setAttribute('class', 'form-control');
        inputElement.style.width = '100px';

        unitQuantityCell.innerHTML = '';
        unitQuantityCell.appendChild(inputElement);

   
        inputElement.focus();
    } else if (button.textContent === '수정 완료') {
    
        var newUnitQuantity = unitQuantityCell.querySelector('input').value;
        var empIdx = ${principal.username};
        var productId = document.getElementById('productId').textContent;

      
        $.ajax({
            url: '/stock/stockdetailun/update', 
            method: 'POST',
            data: {
                unitQuantity: newUnitQuantity,
                productId: productId,
                empIdx: empIdx
            },
            success: function (data) {
              
                console.log('Ajax request successful:', data);

             
                button.textContent = '단위 수정';
                unitQuantityCell.innerHTML = newUnitQuantity;
            },
            error: function (error) {
         
                console.error('Ajax request error:', error);
                button.textContent = '단위 수정';
                unitQuantityCell.innerHTML = newUnitQuantity;
            }
        });
    }
}
  //-----------------------------------폐기/파손 등록----------------------------------
$(document).ready(function () {
    var isClickable = true;

    $('#kt_modal_2').on('shown.bs.modal', function () {
    
        function registerButtonClickHandler() {
            if (!isClickable) {
                return;
            }

            var operationType = $('select[data-control="select2"]').val();
            var quantity = $('input.form-control').val();
            var reason = $('textarea.form-control').val();
            var empIdx = ${principal.username};
            var productId = document.getElementById('productId').textContent;

            // Check for empty values
            if (operationType.trim() === '' || quantity.trim() === '' || reason.trim() === '') {
                Swal.fire({
                    text: '입력하지 않은 내용이 있습니다.',
                    icon: 'info',
                    confirmButtonText: '확인',
                    customClass: {
                        confirmButton: 'btn btn-danger'
                    }
                });
                return;
            }

            isClickable = false;

            $.ajax({
                url: '/stock/stockdetailhistory/insert',
                method: 'POST',
                data: {
                    operationType: operationType,
                    quantity: quantity,
                    reason: reason,
                    productId: productId,
                    empIdx: empIdx
                },
                success: function (data) {
                    console.log('Ajax request successful:', data);

                    Swal.fire({
                        text: '파손 등록이 완료 되었습니다.',
                        icon: 'success',
                        confirmButtonText: '확인',
                        customClass: {
                            confirmButton: 'btn btn-primary'
                        }
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Reset input values
                            $('select[data-control="select2"]').val('');
                            $('input.form-control').val('');
                            $('textarea.form-control').val('');

                            // Close modal
                            $('.btn[data-bs-dismiss="modal"]').click();
                            isClickable = true;
                            $('.btn-primary').off('click', registerButtonClickHandler); 
                  
                            fetchStockDetailHistory(productId);
                            fetchStockDetail();
                        }
                    });
                },
                error: function (error) {
                    Swal.fire({
                        text: '파손 등록이 실패했습니다.',
                        icon: 'error',
                        confirmButtonText: '확인',
                        customClass: {
                            confirmButton: 'btn btn-danger'
                        }
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Close modal
                            $('.btn[data-bs-dismiss="modal"]').click();
                            isClickable = true;
                            $('.btn-primary').off('click', registerButtonClickHandler); 
                            fetchStockDetailHistory(productId);
                            fetchStockDetail();
                        }
                    });
                }
            });
        }

        $('.btn-primary').on('click', registerButtonClickHandler);

        $('#kt_modal_2').on('hidden.bs.modal', function () {
            $('.btn-primary').off('click', registerButtonClickHandler);
        });
    });
    headerOnReady();
});
  //--------------------------------------------------
 
function fetchStockDetailHistory(productId) {
    $.ajax({
        url: "/stock/stockdetailhistory/list",
        type: 'GET',
        data: {productId: productId},
        dataType: 'json',
        success: function(data) {
           
            $('#tableBody').empty();

       
            if (data.length === 0) {
            
                var noRecordMessage = '<tr><td></td><td colspan="2" style="color: lightgrey;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;폐기/파손 기록이 없습니다.</td><td></td></tr>';
                $('#tableBody').append(noRecordMessage);
            } else {
           
                $.each(data, function(index, item) {
                    var operationTypeText = '';
                    switch (item.operationType) {
                        case 1:
                            operationTypeText = '파손';
                            break;
                        case 2:
                            operationTypeText = '폐기';
                            break;
                        case 3:
                            operationTypeText = '분실';
                            break;
                        default:
                            operationTypeText = '알 수 없음';
                    }

                    var row = '<tr>' +
                        '<td>' + item.regDate + '</td>' +
                        '<td>' + operationTypeText + '</td>' +
                        '<td>' + item.quantity + '</td>' +
                        '<td>' + item.reason + '</td>' +
                        '</tr>';
                    $('#tableBody').append(row);
                });
            }
        },
        error: function(e) {
            console.log(e);
        }
    });
}


$(document).ready(function() {
    var urlParams = new URLSearchParams(window.location.search);
    var productId = urlParams.get('productId');
    fetchStockDetailHistory(productId);
});
</script>
	<!--end::Custom Javascript-->
	<!--end::Javascript-->
	</sec:authorize>
</body>
<!--end::Body-->
</html>