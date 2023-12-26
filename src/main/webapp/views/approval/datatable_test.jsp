<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<!-- 버튼을 클릭하면 ajax방식으로 리스트를 요청하게 됩니다.
		리스트 요청이 보내지면 컨트롤러에서 값을 가져오게 되고
		가져온 리스트 정보를 drawList로 값을 넘겨주어 저희가 평소에 하던
		리스트 그리기를 시작합니다.
		여기서 주의할점은 
		$('#list').append(content);
		append뒤에 꼭 
		-> $("#kt_datatable_zero_configuration").DataTable();
		이 와야됩니다.
		이해가 안되신다면 아래 스크립트 부분으로 가시면 확인하실 수 있습니다.
 -->

<html lang="ko">
	<!--begin::Head-->
	<head>
		<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes</title>
		<meta charset="utf-8" />
		<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
		<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="canonical" href="https://preview.keenthemes.com/craft" />
		<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
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
			.signature-table {
            float: right;
            margin-left: 20px;
			}
			.signature-table td {
				border: 1px solid #ddd;
				padding: 10px;
				text-align: center;
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
			<div class="table-responsive">
	<table id="kt_datatable_zero_configuration" class="table table-row-bordered gy-5">
		<thead>
			<tr class="fw-semibold fs-6 text-muted">
				<th>Name</th>
				<th>Position</th>
				<th>Office</th>
				<th>Age</th>
				
			</tr>
		</thead>
		<tbody id="list">
		    </tbody>
	</table>
</div>



<input type="button" id="searchButton" value="검색" style="margin: 0px 5px" class="comm-btn"/>
		</div>
		<!--end::Root-->
								
		<!--begin::Javascript-->
		<script>var hostUrl = "resource/assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->

		<!--end::Global Javascript Bundle-->
		<!--CKEditor Build Bundles:: Only include the relevant bundles accordingly-->

		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>

	
	
	
	$('#searchButton').on('click', function () {
		$.ajax({
	        type: 'get',
	        url: 'list',
	        dataType: 'json',
	        success: function (data) {
	        	console.log(data);
	        	 drawList(data); 
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
	});
	
	function drawList(obj){
		var content ='';
		
		obj.list.forEach(function(item, idx){
			content +='<tr >';
			content +='<td>'+item.id+'</td>';
			content +='<td>'+item.name+'</td>';
			content +='<td>'+item.gender+'</td>';
			content +='<td>'+item.email+'</td>';
			content +='</tr>';
		});
		$('#list').empty();
		$('#list').append(content);

		$("#kt_datatable_zero_configuration").DataTable();
	}
	
	
	</script>
</html>