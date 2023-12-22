<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<link rel="shortcut icon" href="/media/logos/favicon.ico" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="/css/style.bundle.css" rel="stylesheet" type="text/css" />
		
		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
		<style>
			h1 {
				color: lightgray; /* 원하는 색상으로 변경 */
			}
			.distroyBtn {
		   display: inline-block;
		   background-color: #C6DA52;
		  
		   border-color: #C6DA52;
		}
		.container{
		text-align: right;
		}
		.dangaBtn{
	   
	   background-color: #C6DA52;
		   text-align: center;
			border-color: #C6DA52;
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
		
						<!--begin::Post-->
						<div class="container"><button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_1" style="background-color: #C6DA52;">
    단위/단가 수정
</button>

<div class="modal fade" tabindex="-1" id="kt_modal_1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">단위/단가 수정</h3>

                <!--begin::Close-->
                <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                    <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                </div>
                <!--end::Close-->
            </div>

            <div class="modal-body">
                <div class="table-responsive">
	<table class="table table-hover table-rounded table-striped border gy-7 gs-7">
		<thead>
			<tr class="fw-semibold fs-6 text-gray-800 border-bottom-2 border-gray-200">
				<th>단가</th>
				<th><input type="text" class="form-control" placeholder="수정할 단가를 입력해 주세요."/></th>
			
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>단위(파레트)</td>
				<td><input type="text" class="form-control" placeholder="수정할 단위를 입력해 주세요."/></td>
			
			</tr>
		</tbody>
	</table>
</div>
            </div>

            <div class="modal-footer">
                
                <button type="button" class="btn btn-primary" style ="background-color: #255000">저장</button>
            </div>
        </div>
    </div>
</div></div>
					<div class = "stock" >
				<table>
				<tr>
				<td>분류</td>
				<td colspan="2">식품>음료</td>
				</tr>
				<tr>
				<td>상품 코드</td>
				<td>P113006</td>
				</tr>
				<tr>
				<td>상품 명</td>
				<td>코카콜라</td>
				</tr>
				<tr>
				<td>재고</td>
				<td>8381</td>
				</tr>
					<tr>
				<td>단위(파렛트)</td>
				<td>1000</td>
				</tr>
				<tr>
				<td>단가</td>
				<td>1,000</td>
				
				</tr>
				
				</table>
					
					
					</div>
					<div>
					<div class="table-responsive">
	<table class="table table-hover table-rounded table-striped border gy-7 gs-7" style = "text-align: center;">
		<thead>
			<tr class="fw-semibold fs-6 text-gray-800 border-bottom-2 border-gray-200" style="background-color: rgb(235, 234, 234);">
				<th>입고 날짜</th>
				<th>파렛트/전체</th>
			
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>23.12.20</td>
				<td>4/399</td>

			</tr>
			<tr>
				<td>23.12.20</td>
				<td>4/399</td>

			</tr>
		</tbody>
	</table>
</div>
					
					</div>
					<hr width = "100%" color = "black" align="center">
					
					<h1>폐기/파손/분실</h1>
					<div class="container"><button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_2" style ="background-color:#C6DA52">
    폐기/파손 등록
</button>

<div class="modal fade" tabindex="-1" id="kt_modal_2">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">폐기/파손 등록</h3>

                <!--begin::Close-->
                <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                    <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                </div>
                <!--end::Close-->
            </div>

            <div class="modal-body">
                <div class="table-responsive">
	<table class="table table-hover table-rounded table-striped border gy-7 gs-7">
		<thead>
			<tr class="fw-semibold fs-6 text-gray-800 border-bottom-2 border-gray-200" >
				
				<th>구분</th>
				<th colspan="2"><select class="form-select form-select-solid" data-control="select2" data-placeholder="파손" data-hide-search="true">
    <option></option>
    <option value="1">파손</option>
    <option value="2">폐기</option>
    <option value="3">분실</option>
  
</select></th>
			
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>수량(낱개)</td>
				<td colspan="2"><input type="text" class="form-control" placeholder="개수를 입력해 주세요."/></td>
				
			
			</tr>
			<tr>
				<td>사유</td>
				<td colspan="2" rowspan="5"><textarea cols="50" rows = "10" placeholder="내용을 입력해 주세요"></textarea></td>
				
			
			</tr>
		</tbody>
	</table>
</div>
            </div>

            <div class="modal-footer">
               
                <button type="button" class="btn btn-primary" style ="background-color: #255000">등록</button>
            </div>
        </div>
    </div>
</div></div>
				
					<div>
					<div class="table-responsive">
	<table class="table table-hover table-rounded table-striped border gy-7 gs-7">
		<thead>
			<tr class="fw-semibold fs-6 text-gray-800 border-bottom-2 border-gray-200" style="background-color: rgb(235, 234, 234);" >
				<th>파손/폐기/분실 일자</th>
				<th>구분</th>
				<th>수량(낱개)</th>
				<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사유</th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>23.12.20</td>
				<td>파손</td>
				<td >1</td>
				<td>창고에서 떨어뜨려 파손</td>
			
			</tr>
			<tr>
				<td>23.12.20</td>
				<td>파손</td>
				<td>1</td>
				<td>창고에서 떨어뜨려 파손</td>
			
			</tr>
		</tbody>
	</table>
	
</div>
					</div>
				
		<!--end::Modal - Users Search-->
		<!--end::Modals-->
		<!--begin::Javascript-->
		<script>var hostUrl = "/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="/plugins/global/plugins.bundle.js"></script>
		<script src="/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<script src="/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->
		<script src="/js/custom/apps/ecommerce/catalog/categories.js"></script>
		<script src="/js/widgets.bundle.js"></script>
		<script src="/js/custom/widgets.js"></script>
		<script src="/js/custom/apps/chat/chat.js"></script>
		<script src="/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="/js/custom/utilities/modals/create-project/type.js"></script>
		<script src="/js/custom/utilities/modals/create-project/budget.js"></script>
		<script src="/js/custom/utilities/modals/create-project/settings.js"></script>
		<script src="/js/custom/utilities/modals/create-project/team.js"></script>
		<script src="/js/custom/utilities/modals/create-project/targets.js"></script>
		<script src="/js/custom/utilities/modals/create-project/files.js"></script>
		<script src="/js/custom/utilities/modals/create-project/complete.js"></script>
		<script src="/js/custom/utilities/modals/create-project/main.js"></script>
		<script src="/js/custom/utilities/modals/users-search.js"></script>
		<script>$("#kt_daterangepicker_1").daterangepicker();</script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>