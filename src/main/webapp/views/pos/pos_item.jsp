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
		<script src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
	<style>
  /* 다이얼러 너비 재정의 */
  .mw-150px {
    max-width: 100px; /* 필요한대로 너비를 조정하세요 */
  }

  /* 버튼 크기 재정의 */
  .btn-outline.btn-active-color-primary {
    padding: 5px; /* 필요한대로 여백을 조정하세요 */
  }

  /* 입력 필드 크기 재정의 */
  .dialer {
    width: 0px; /* 필요한대로 너비를 조정하세요 */
    height: 43px; /* 필요한대로 높이를 조정하세요 */
    font-size: 14px; /* 필요한대로 글꼴 크기를 조정하세요 */
  }
  
    /* 첫 번째 테이블의 물품수량 셀 조정 */
  #cartTable th[style="margin-left: 100px;"] {
    padding-left: 55px; /* 필요한대로 여백을 조정하세요 */
  }

  /* 첫 번째 테이블의 물품수량 입력 필드 위치 조정 */
  #cartTable .input-group.mw-150px {
    margin-right: -150px; /* 필요한대로 여백을 조정하세요 */
  }
    /* 다이얼러 입력 상자 가운데 정렬 */
  .dialer {
    text-align: center; /* 텍스트를 가운데 정렬합니다. */
  }
</style>
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
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="background-color: #fffff8;"> 
						
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
										<div class="card h-xl-100 mb-5">
											<!--begin::Header-->
											<div class="card-header align-items-center border-0 mt-5 ">
												<div class="card-title align-items-start flex-column" style="width:100%;">
												
													<h3 class="fw-bolder text-gray-900 fs-2 mb-5">상품</h3>
														<div style="white-space:nowrap; display: flex; width: 100%;">
														<select class="form-select fs-6" id="productOpt" aria-label="Select option" style="width: auto; height: 40px;">
															<option value="productName">상품명</option>
															<option value="productId">상품코드</option>
															<!-- 추가적인 옵션들을 필요에 따라 추가할 수 있습니다 -->
														</select>
														<input type="text" class="form-control form-control-solid" id="productText" placeholder="이름 입력" style="width: 229px; height: 40px; margin-left: 10px;">
            											<button type="button" class="btn btn-primary fs-7" id="produceBtn" style="white-space:nowrap; margin-left: 11px;">
															검색
														</button>
</div>
												</div>
												<div class="card-toolbar" style="margin-right: 110px;">
													<div class="table-responsive scroll h-600px px-5 " style="overflow-x: hidden" >
											<table class="table table-row-dashed table-row-gray-300 gy-5" style="white-space:nowrap;">
												<thead>
													<tr class="fw-bold fs-6 text-gray-800">
														<th style="text-align: center; padding-left: 9.75px;">보유 수량</th>
														<th style="text-align: center;">상품명</th>
														<th style="text-align: center;">상품코드</th>
														<th style="text-align: center;">가격</th>
														<th style="text-align: center;"></th>
													</tr>
												</thead>
												<tbody id="itemBody">
												<c:forEach var="itemList" items="${itemList}">
													<tr style="vertical-align: middle;">
														<td style="text-align: center; padding-left: 9.75px;">${itemList.stock}</td>
														<td>${itemList.productName}</td>
														<td class="productId">${itemList.productId}</td>
												        <td>${itemList.sellingPrice} 원</td>
												        <th style="text-align: center;">
												            <button type="button" class="btn btn-primary fs-7 productButton" 
												                    data-product-id="${itemList.productId}"
												                    style="white-space:nowrap; margin-left: auto;">
												                선택
												            </button>
												        </th>
													</tr>
												</c:forEach>
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
										<div class="card  h-xl-100">
											<div class="card-header align-items-center border-0 mt-5">
												<h3 class="card-title align-items-start flex-column">
													<span class="fw-bolder text-gray-900 fs-2 mb-5">상품</span>
													
												</h3>
												</div>
												<div class="card-toolbar my-10">
													<div class="table-responsive scroll h-600px px-5 " style="margin-left: 30px; overflow-x: hidden;">
											<table class="table table-row-dashed table-row-gray-300 gy-5" id="cartTable">
												<thead>
													<tr class="fw-bold fs-6 text-gray-800">
														<th>삭제</th>
														<th  style="margin-left: 100px;">결제수량</th>
														<th>단가</th>
														<th>상품명</th>
														<th>상품코드</th>
														<th>상품가격</th>
													</tr>
												</thead>
												<tbody id = "cartBody">
												<c:forEach var="itemCart" items="${itemCart}">
												  <tr style="vertical-align: middle;">
												    <td>
												       <button type="button" class="btn-close"></button>
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
												        <button class="btn btn-icon btn-outline btn-active-color-primary" type="button" data-kt-dialer-control="decrease">
												          <i class="ki-duotone ki-minus fs-2"></i>
												        </button>
												        <!--end::Decrease control-->
												
												        <!--begin::Input control-->
												        <input type="text" class="dialer form-control" placeholder="금액" value="${itemCart.quantity}" id="${itemCart.productId}" data-kt-dialer-control="input" />
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
												    <td>${itemCart.sellingPrice} 원</td>
												    <td>${itemCart.productName}</td>
												    <td>${itemCart.productId}</td>
												    <td>${itemCart.sellingSum} 원</td>
												  </tr>
												</c:forEach>
													
												</tbody>
											</table>
												<div style="display: flex; align-items: center;">
												    <h3 style="margin-left: 20px;" id="allSellingSum">총 결제 금액 : ${allSellingSum} 원</h3>
												    <button type="button" id="modalBut" class="btn btn-primary mx-2" data-bs-toggle="modal" data-bs-target="#kt_modal_1">
												        결제 하기
												    </button>
												</div>
										</div>

												</div>
											</div>
											<!--end::Header-->
										</div>
										<!--end::Table Widget 5-->
									</div>
									<!--end::Col-->
								</div>
								<!--end::Row-->



								<!-- 모달창 공간-->
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
												<div class="py-5">
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">회원이름</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800" id="name">김동동</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">사용 가능 포인트</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800" id="totalPoint">100000</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">멤버쉽 만료일</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800" id="expiryDate">2023-12-12</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">총 구매 가격</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800" id="sellingSum">200000</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">포인트 결제 가능 금액</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800" id="upPoint">10000</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">사용 포인트</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8 row">
																<input type="text" class="form-control form-control-solid" placeholder="사용 포인트 금액을 입력해주세요." id="pointText" oninput="validateInput()">
																<button type="button" class="btn btn-primary fs-7" id="pointBut">
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
																<span class="fs-6 text-gray-800" id="endSellingSum">10000</span>
															</div>
															<!--end::Col-->
													</div>
													<div class="row mb-7">
															<!--begin::Label-->
															<label class="fw-bold col-lg-4 fw-semibold text-gray-800">적립포인트</label>
															<!--end::Label-->
															<!--begin::Col-->
															<div class="col-lg-8">
																<span class="fs-6 text-gray-800" id="endPoint">10000</span>
															</div>
															<!--end::Col-->
													</div>
													
												</div>
												<!-- 모달창 몸통 테이블 끝-->
											</div>

											<div class="modal-footer">
												
												<button onclick="requestPay(${memberIdx})" class="btn btn-primary">결제하기</button>
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

	
	
	function validateInput() {
	    var inputElement = document.getElementById('pointText');
	    var inputValue = inputElement.value;

	    // 정규 표현식을 사용하여 숫자가 아닌 문자를 제거
	    inputValue = inputValue.replace(/[^0-9]/g, '');
		
	    // 최대 이상의 숫자를 입력할 경우 값을 최대로 제한
	    var upPoint = parseInt(replace($('#upPoint').text()),10);
	    if (parseInt(inputValue, 10) > upPoint) {
	        inputValue = viewNum(upPoint.toString());
	    }
	    
	    var totalPoint = parseInt(replace($('#totalPoint').text()), 10);
	    if (parseInt(inputValue, 10) > totalPoint) {
	        inputValue = viewNum(totalPoint.toString());
	    }


	    // 정제된 값을 다시 입력 필드에 설정
	    inputElement.value = inputValue;
	}
	
	
	$('#modalBut').on('click',function(){
		posPayModal(${memberIdx});
	});
	
	function viewNum(Num){
		var i = Num.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		return i;
	}
	function replace(Num){
		var i = Num.replace(/[^0-9]/g, '');
		return i;
	}
	
	var accumulationRate = 0;  // 멈버쉽 비율
	var endPoint = 0; // 적립 가능 포인트 최대 한도
	var contactNum = ''; // 구매자 전화번호
	var sellingSum = 0;
	function posPayModal(memberId){
		$.ajax({
	        type: 'get',
	        url: 'pos/payModal.ajax',
	        data: {
	            'memberId': memberId
	        },
	        dataType: 'json',
	        success: function (data) {
				console.log(data);
				contactNum = data.contactNum;
				$('#name').text(data.name);
				$('#totalPoint').text(viewNum(data.totalPoint));
				$('#expiryDate').text(data.expiryDate);
				sellingSum = data.sellingSum;
				$('#sellingSum').text(viewNum(data.sellingSum));
				$('#upPoint').text(viewNum(data.upPoint));
				$('#endSellingSum').text(viewNum(data.sellingSum));  // 실결제 금액
				$('#endSellingSum').attr('data-product-id', viewNum(data.sellingSum))
				endPoint = data.endPoint;
				$('#endPoint').attr('data-product-id', viewNum(endPoint));
				accumulationRate = data.accumulationRate;
				var calculatedValue = Math.floor(data.upPoint * (accumulationRate / 100));
				if(endPoint<calculatedValue){					
					if(endPoint == 0){
						calculatedValue = 0;
					}else{
						calculatedValue = endPoint;
					}
				}
				$('#endPoint').text(viewNum(calculatedValue));
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	}
	
	
	
		var pointText = 0;
	$('#pointBut').on('click',function(){
		pointText = replace($('#pointText').val());
		console.log('포인트 버튼 확인',pointText);
		var upPoint = replace($('#upPoint').text()) - pointText;
		var endSellingSum = sellingSum - pointText;
		$('#endSellingSum').text(viewNum(endSellingSum));
		var calculatedValue = Math.floor(upPoint * (accumulationRate / 100));
		console.log("endSellingSum",calculatedValue);
		if(endPoint<calculatedValue){					
			if(endPoint == 0){
				calculatedValue = 0;
			}else{
				calculatedValue = endPoint;
			}
		}
		$('#endPoint').text(viewNum(calculatedValue));
	});
	
	
	
	
	
	

    // 지정된 데이터 속성을 가진 모든 다이얼러 엘리먼트를 가져옵니다.
    var dialerElements = document.querySelectorAll(".input-group[data-kt-dialer='true']");
    console.log("다이얼러 엘리먼트 수:", dialerElements.length);

    // 각 다이얼러 엘리먼트를 순회하며 별도의 KTDialer 인스턴스를 초기화합니다.
    dialerElements.forEach(function (dialerElement) {
        console.log("다이얼러를 초기화합니다.");

        var dialerObject = new KTDialer(dialerElement);
        
        dialerObject.on('kt.dialer.changed', function (value) {
            // 다이얼러 값이 변경될 때 처리할 내용을 여기에 작성합니다.
            updateCart(${memberIdx},value.inputElement.id,value.inputElement.value);
        });
    });
	
    
    function updateCart(memberId,productId,quantity){
    	$.ajax({
	        type: 'get',
	        url: 'pos/updateCart.ajax',
	        data: {
	            'memberId': memberId,
	            'productId':productId,
	            'quantity':replace(quantity)
	        },
	        dataType: 'json',
	        success: function (data) {
				console.log(data);
				if(!data.success){					
				alert('재고가 없습니다.');
				}
				drawPosCart(data);
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	}
    
    
    
    
    
    
    
	
	
    $(document).on('click', '.productButton', function() {
        var productId = $(this).data('product-id');
        console.log(productId);
        console.log(${memberIdx});
        posCart(${memberIdx}, productId, 1);
    });
	
	function posCart(memberIdx,productId,quantity){
		$.ajax({
	        type: 'get',
	        url: 'pos/cart.ajax',
	        data: {
	            'memberId': memberIdx,
	            'productId':productId,
	            'quantity':replace(quantity)
	        },
	        dataType: 'json',
	        success: function (data) {
				console.log(data);
				if(!data.success){					
				alert('해당 제품이 이미 장바구니에 있습니다.');
				}					
				drawPosCart(data);
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	}
	
	function drawPosCart(data){
		var content = '';
		console.log("data.allSellingSum",data.allSellingSum);
		data.itemCart.forEach(function(itemCart,idx){
			console.log('그려지는지 확인 : ',itemCart);
			content += '<tr style="vertical-align: middle;">'
			content += '<td>'
			content += '<button type="button" class="btn-close"></button>'
			content += '</td>'
			content += '<td>'
			content += '<div class="input-group mw-150px"'
			content += 'data-kt-dialer="true"'
			content += 'data-kt-dialer-currency="true"'
			content += 'data-kt-dialer-min="1"'
			content += 'data-kt-dialer-max="50000"'
			content += 'data-kt-dialer-step="1"'
			content += '>'
			content += '<button class="btn btn-icon btn-outline btn-active-color-primary" type="button" data-kt-dialer-control="decrease">'
			content += '<i class="ki-duotone ki-minus fs-2"></i>'
			content += '</button>'
			content += '<input type="text" class="dialer form-control" placeholder="금액" value="'+itemCart.quantity+'" id="'+itemCart.productId+'" data-kt-dialer-control="input" />'
			content += '<button class="btn btn-icon btn-outline btn-active-color-primary" type="button" data-kt-dialer-control="increase">'
			content += '<i class="ki-duotone ki-plus fs-2"></i>'
			content += '</button>'
			content += '</div>'
			content += '</td>' 
			content += '<td>'+viewNum(itemCart.sellingPrice)+' 원</td>'
			content += '<td>'+itemCart.productName+'</td>'
			content += '<td>'+itemCart.productId+'</td>'
			content += '<td class ="sum">'+viewNum(itemCart.sellingSum)+' 원</td>'
			content += '</tr>'
		});
		$('#cartBody').empty();
		$('#cartBody').append(content);
		$('#allSellingSum').text("총 결제 금액 : " + viewNum(data.allSellingSum) + " 원");
		
		
		dialerElements = document.querySelectorAll(".input-group[data-kt-dialer='true']");
		// 각 다이얼러 엘리먼트를 순회하며 별도의 KTDialer 인스턴스를 초기화합니다.
	    dialerElements.forEach(function (dialerElement) {
	        var dialerObject = new KTDialer(dialerElement);
	        
	        dialerObject.on('kt.dialer.changed', function (value) {
	            // 다이얼러 값이 변경될 때 처리할 내용을 여기에 작성합니다.
	            console.log(value.inputElement.value.length);
	            updateCart(${memberIdx},value.inputElement.id, value.inputElement.value);
	        });
	    });
		

	    document.querySelectorAll('.btn-close').forEach(function(button) {
		    button.addEventListener('click', function() {
		        // 형제 엘리먼트 중에서 input 요소 찾기
		        var inputElement = this.closest('tr').querySelector('[data-kt-dialer-control="input"]');
		        
		        // 가져온 input 요소의 ID 값 출력 또는 사용
		        var productId = inputElement.id;
		        deleteCart(${memberIdx},productId);
		    });
		});
	}
	
	
	document.querySelectorAll('.btn-close').forEach(function(button) {
	    button.addEventListener('click', function() {
	        // 형제 엘리먼트 중에서 input 요소 찾기
	        var inputElement = this.closest('tr').querySelector('[data-kt-dialer-control="input"]');
	        
	        // 가져온 input 요소의 ID 값 출력 또는 사용
	        var productId = inputElement.id;
	        deleteCart(${memberIdx},productId);
	    });
	});
	
	function deleteCart(memberId,productId){
		$.ajax({
	        type: 'get',
	        url: 'pos/deleteCart.ajax',
	        data: {
	            'memberId': memberId,
	            'productId':productId
	        },
	        dataType: 'json',
	        success: function (data) {
				console.log(data);
				drawPosCart(data);
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	}
	
	$('#produceBtn').on('click',function(){
		var selectedOption = document.getElementById("productOpt").value;
		var searchText = document.getElementById("productText").value;

		productSearch(selectedOption, searchText);



	});
	
	function productSearch(selectedOption, searchText){
		$.ajax({
	        type: 'get',
	        url: 'pos/productSearch.ajax',
	        data: {
	            'selectedOption': selectedOption,
	            'searchText': searchText
	        },
	        dataType: 'json',
	        success: function (data) {
				console.log(data);
				if(data.itemList.length==0){
					alert('검색 결과가 없습니다.');
				}
				drawPosItem(data);
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	}
	
	function drawPosItem(data){
		var content = '';
		data.itemList.forEach(function(itemList,idx){
			content += '<tr style="vertical-align: middle;">'
			content += '<td style="text-align: center; padding-left: 9.75px;">'+viewNum(itemList.stock)+'</td>'
			content += '<td>'+itemList.productName+'</td>'
			content += '<td class="productId">'+itemList.productId+'</td>'
			content += '<td>'+viewNum(itemList.sellingPrice)+'</td>'
			content += '<th style="text-align: center;">'
			content += '<button type="button" class="btn btn-primary fs-7 productButton" '
			content += 'data-product-id="'+itemList.productId+'"'
			content += 'style="white-space:nowrap; margin-left: auto;">'
			content += '선택'
			content += '</button>'
			content += '</th>'
			content += '</tr>'
		});
		$('#itemBody').empty();
		$('#itemBody').append(content);
	}
	
	
	
	
	

	function requestPay(memberId) {
		  IMP.init('imp47548806'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
		  IMP.request_pay({
		    pg: 'html5_inicis',     //  결제 pg사   -- 필수 입력값
		    pay_method: "card",    //  결제 메서드  -- 필수 입력값
		    merchant_uid : memberId+"_"+Date.now(), // 결제 번호 --- 필수 입력값
		    name : 'UStore',  // 결제 이름 -- 필수 입력값
		    amount : replace($('#endSellingSum').text()),   // 가격 -- 필수 입력값    -- replace($('#endSellingSum').text())
		    buyer_tel: contactNum,
		  }, function (rsp) { // callback
			  console.log(rsp);
			    if (rsp.success) { // 성공했을때
			      $.ajax({
				        type: 'get',
				        url: 'request/pay.ajax',
				        data: {
				        	 'merchant_uid' : rsp.merchant_uid,
				        	 'name' : rsp.name,
				        	 'imp_uid' : rsp.imp_uid,
				        	 'paid_amount' : rsp.paid_amount,
				        	 'paymentStatus' : '90',
				        	 'memberId' : memberId,    // 회원 번호
				        	 'endPoint' : replace($('#endPoint').text()),    // 적립 포인트
				        	 'pointText' : pointText,  // 사용 포인트
				        	 'paymentsType': '92',
				        	 'remainPoints' : replace($('#totalPoint').text())-pointText
				        },
				        dataType: 'json',
				        success: function (data) {
							console.log(data);
							if(data){
								window.location.href = "/pos/member";
							}else{
								alert('결제 오류 발생 관리자에게 문의해주세요.')
							}
				        },
				        error: function (e) {
				            console.log(e);
				        }
				    });
			    } else { // 실패했을때
			      var msg = '결제에 실패하였습니다.';
			      alert(msg);
			    }
		  });
		}
	
	
	
	</script>
</html>