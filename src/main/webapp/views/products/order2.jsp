<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
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
	
	<!--begin::Theme mode setup on page load-->
	<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
	<!--end::Theme mode setup on page load-->
	<!--begin::Header 헤더 시작 -->
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	<!--end::Header 헤더 닫기-->
	<!--begin::Main-->
	<!--begin::Root-->
<button id="myButton">ㅎㅇㅎㅇ</button>
<button id="faButton">실퍀ㅋ</button>
<button id="ifButton">경고</button>

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
             
                $.ajax({
                    url: '/order/ordercart/insert',
                    method: 'POST',
                    data: {
                        productId: row.querySelector('input[name="productId"]').value.trim(),
                        count: countValue,
                        birthdate: document.getElementById('kt_daterangepicker_3').value.trim(),
                        empIdx:emp
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
        });
    }
    // -------------------------------------------------------------------
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
        fetchData();
    });

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

                    $.ajax({
                        url: '/order/insert',
                        method: 'POST',
                        data: {
                            driverIdx: selectedDriverIdx,
                            empIdx : emp
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

	  document.getElementById('myButton').addEventListener('click', function() {
		   
	        
		  SuccessModal('모달불러오기 완료');
	     });

</script>


<script>

	  document.getElementById('faButton').addEventListener('click', function() {
		   
	        
		  FalseModal('모달불러오기 완료');
	     });

</script>
<script>

	  document.getElementById('ifButton').addEventListener('click', function() {
		   
	        
		  InfoModal('모달불러오기 완료');
	     });

</script>

</body>
<!--end::Body-->
</html>