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
		<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />

		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled ">
		<!--begin::Theme mode setup on page load-->
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::Main-->
		<!--begin::Root-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid">
				
				<!--begin::Wrapper-->
				<div class="d-flex flex-column flex-row-fluid">

					
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" style="width: 100%;">
						
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" style="margin-left: 30px; margin-right: 30px;">
							<div class="card mb-5 mb-xl-10"  style="width: 100%;">
								<div class="card-body">
									<div class="row d-flex">
								        <div class="col-md-4 d-flex">
								            <!-- 셀렉트 박스 -->
								            <select class="form-select w-50" aria-label="Select option" id="memberSearchOpt">
								                <option value="name">회원명</option>
								                <option value="contact_num">전화번호</option>
								                <!-- 추가적인 옵션들을 필요에 따라 추가할 수 있습니다 -->
								            </select>
											<input type="text" class="form-control form-control-solid" placeholder="검색 정보를 입력해주세요"  id="memberSearchText">
											<input type="button" class="btn btn-primary" value="검색"  id="memberSearchBtn">
											
								        </div>
								        
								    </div>
										<div class="table-responsive">
											<table class="table table-row-dashed table-row-gray-300 gy-5">
												<thead>
													<tr class="fw-bold fs-6 text-gray-800">
														<th>회원번호</th>
														<th>전화번호</th>
														<th>회원명</th>
														<th>회원 종류</th>
														<th>멤버쉽 등급</th>
														<th><p hidden>선택 버튼 칸</p></th>
													</tr>
												</thead>
												<tbody id="memberBody">
													<c:forEach var="list" items="${list}">													
													<tr style="vertical-align: middle;">
														<td>${list.memberIdx}</td>
														<td>${list.contactNum}</td>
														<td>${list.name}</td>
														<td>${list.commonType}</td>
														<td>${list.grade}</td>
														<th><a href="pos/item?memberIdx=${list.memberIdx}" class="btn btn-primary">선택</a></th>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>


								</div>
								<div class="card-footer">
									Footer
								</div>
							</div>
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
		

		
		
		<!--end::Modals-->
		<!--begin::Javascript-->
		<script>var hostUrl = "/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->

		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Vendors Javascript(used for this page only)-->
	
		<!--end::Vendors Javascript-->
		<!--begin::Vendors Javascript(used for this page only)-->


		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->

		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
	
	$('#memberSearchBtn').on('click' ,function(){
		// 선택된 옵션의 값을 가져오기
        var selectedOption = document.getElementById("memberSearchOpt").value;
        
        // 입력된 텍스트 필드의 내용을 가져오기
        var searchText = document.getElementById("memberSearchText").value;
        if(selectedOption == 'contact_num'){
        	if(searchText.length < 4){
        		alert("전화번호는 뒷자리 4자리를 입력해 주세요.");
        	}else{
			memberSearch(selectedOption,searchText);	
        	}
        }else{
        	memberSearch(selectedOption,searchText);
        }	
	});
	
	function memberSearch(selectedOption,searchText){
		
		$.ajax({
	        type: 'get',
	        url: 'pos/memberSearch.ajax',
	        data: {
	            'selectedOption': selectedOption,
	            'searchText': searchText
	        },
	        dataType: 'json',
	        success: function (data) {
				console.log(data);
				if(data.list.length==0){
					alert('검색 결과가 없습니다.');
				}
				drawList(data);
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	}
	
	
	function drawList(data){
		var content='';
        
		data.list.forEach(function(item,idx){
			content += '<tr style="vertical-align: middle;">'
			content += '<td>'+item.memberIdx+'</td>'
			content += '<td>'+item.contactNum+'</td>'
			content += '<td>'+item.name+'</td>'
			content += '<td>'+item.commonType+'</td>'
			content += '<td>'+item.grade+'</td>'
			content += '<th><a href="pos/item?memberIdx=' + item.memberIdx + '" class="btn btn-primary">선택</a></th>';
			content += '</tr>'
		})
		$('#memberBody').empty();
		$('#memberBody').append(content);
	}
	
	
	
	
	
	
	
	
	
</script>
</html>