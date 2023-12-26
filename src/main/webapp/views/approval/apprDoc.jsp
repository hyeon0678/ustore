<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<!--begin::Head-->
	<head>
		<title>UStore</title>
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
		<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		
		<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<link href="resource/assets/plugins/custom/jstree/jstree.bundle.css" rel="stylesheet" type="text/css" />
		<style>
			#kt_modal_1 .modal-content {
				height: 800px; /* 원하는 높이로 조절하세요 */
			}
			.chart-div{
				display: flex;
				height: 500px;
				margin-bottom: 20px;	
			}
			.chart-body-div{
				width: 55%;
				margin: 10px 20px;
			}
			
			
			/* 결재선 테이블 스타일 */
			.approvers {
				width: 100%;
				background-color: #ffffff;
				text-align: center;
				padding: 10px;
				border-radius: 5px;
			}

			.approvers table {
				width: 100%;
				border-collapse: collapse;
			}

			.approvers th, .approvers td {
				border: 1px solid #ddd;
				padding: 8px;
			}
			
			/* 결재의견 테이블 스타일 */
			.approval-comments {
				width: 100%;
				background-color: #ffffff;
				text-align: center;
				padding: 10px;
				border-radius: 5px;
			}

			.approval-comments table {
				width: 100%;
				border-collapse: collapse;
			}

			.approval-comments th, .approval-comments td {
				border: 1px solid #ddd;
				padding: 8px;
			}
			</style>
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
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 90px;">
					<!--================================메인 내용들어가는부분================================================-->
						<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">결재하기</h1>
									<!--end::Title-->
								</div><!--end::Info-->
							</div>								
							<!--begin::Toolbaricon-->
							<div class="d-flex justify-content-end" data-kt-user-table-toolbar="base">
								<!--begin::Filter-->
								<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
								<i class="ki-duotone ki-filter fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>결재하기</button>
								<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
								<i class="ki-duotone ki-filter fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>반려하기</button>
								<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
								<i class="ki-duotone ki-filter fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>수정하기</button>
								<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-bs-toggle="modal" data-bs-target="#kt_modal_1">
								<i class="ki-duotone ki-filter fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>결재정보</button>
								<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
								<i class="ki-duotone ki-filter fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>뒤로가기</button>								
							</div>
							<!--end::Toolbaricon-->									
						</div>
						<!--end::Toolbar-->
						<!-- 결재 양식 들어오는 곳 -->		
						<div class="loadApprDoc">
						</div>				
					</div>
				<!--end::Content--> 
    			</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<!--end::Root-->

		<!--begin::modal-->
		<div class="modal fade" tabindex="-1" id="kt_modal_1" role="dialog">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title">결재정보</h3>
						<!--begin::Close-->
						<div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
							<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
						</div>
						<!--end::Close-->
					</div>

					<div class="modal-body">
						<div class="d-flex flex-row h-600px border">
							<!-- 왼쪽 div -->
							<div class="emptree border" style="max-height: 600px; overflow-y: auto; overflow-x: hidden; margin: 5px;" >
								<div class="d-flex flex-column flex-row-fluid w-350px justify-content-between" style="align-items: center; margin: 5px;">
									<div class="d-flex flex-column-auto h-40px flex-center text-light-success bg-success" style="margin: 5px 0px; width: 100%;">
										<span class="text-center">조 직 도</span>						
									</div>
								</div>
								<div style="margin: 10px;">
									<input type="text" id="empName" placeholder="사원명을 입력하세요"/>
									<button onclick="empSearch()">검색</button>	
								</div>
								<div class="d-flex flex-column-fluid scroll px-5" style="max-height: 400px; overflow-y: auto;">
									<div class="text-black" id="kt_docs_jstree_basic"></div>
								</div>
								<div style="position: absolute; bottom: 40px; text-align: center; left: 15%;">
									<button id="addline" onclick="addApprovalLine()">결재선 추가</button>
									<button id="addrecv" onclick="addReceiver()">수신자 추가</button>
								</div>
							</div>		

							<!-- 오른쪽 div -->
							<div class="d-flex flex-column flex-row-fluid w-350px justify-content-between">
								<div class="apprlineSec border" style="align-items: center; margin: 5px;">
									<div class="d-flex flex-column-auto h-40px flex-center text-light-success bg-success" style="margin: 10px 0px;">
										<span class="text-center">결 재 선</span>
									</div>
									<div class="apprline d-flex flex-column scroll" id="apprline" style="height: 250px;">
										<div style="overflow: auto;">
											<table class="w-100">
												<thead>
													<tr>
														<th>결재타입</th>
														<th>이름</th>
														<th>직책</th>
														<th>부서</th>
													</tr>
												</thead>
												<tbody>											
												</tbody>
											</table>
										</div>
									</div>
								</div>

								<div class="apprreceiver border"  style="align-items: center; margin: 5px;">
									<div class="d-flex flex-column-auto h-40px flex-center text-light-success bg-success" style="margin: 10px 0px;">
										<span class="text-center">수 신 자</span>
									</div>										
									<div class="d-flex flex-column receiver scroll" id="receiver" style="height: 200px;">
										<div style="overflow: auto;">
											<table class="w-100">
												<thead>
													<tr>
														<th>이름</th>
														<th>직책</th>
														<th>부서</th>
													</tr>
												</thead>
												<tbody>														
												</tbody>
											</table>
										</div>										
									</div>
								</div>
							</div>
						</div>											
					</div>

					<div class="modal-footer" style="display: flex; justify-content: center;">
						<button type="button" class="btn btn-primary">저장</button>
					</div>
				</div>
			</div>
		</div>

								
		<!--begin::Javascript-->
		<script>var hostUrl = "resource/assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>		
		<!--end::Global Javascript Bundle-->
		<script src="resource/assets/plugins/custom/jstree/jstree.bundle.js"></script>

		
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
	function empSearch() {
		console.log("검색");
		$('#kt_docs_jstree_basic').jstree(true).search($('#empName').val());
	}

	function addApprovalLine(){
		var approvalData = {
        type: '결재자',
        name: 'John Doe',
        position: '직책',
        department: '부서'
    	};

		// 테이블의 tbody에 맨 위에 데이터를 추가
		var tbody = document.getElementById('apprline').getElementsByTagName('tbody')[0];
		var newRow = tbody.insertRow(0); // 첫 번째 위치에 새로운 행 추가

		// 각 셀에 데이터 추가
		var cell1 = newRow.insertCell(0);
		var cell2 = newRow.insertCell(1);
		var cell3 = newRow.insertCell(2);
		var cell4 = newRow.insertCell(3);

		cell1.innerHTML = approvalData.type;
		cell2.innerHTML = approvalData.name;
		cell3.innerHTML = approvalData.position;
		cell4.innerHTML = approvalData.department;
	}

	function addReceiver(){
		var approvalData = {
        name: 'John Doe',
        position: '직책',
        department: '부서'
    	};

		// 테이블의 tbody에 맨 위에 데이터를 추가
		var tbody = document.getElementById('receiver').getElementsByTagName('tbody')[0];
		var newRow = tbody.insertRow(0); // 첫 번째 위치에 새로운 행 추가

		// 각 셀에 데이터 추가
		var cell1 = newRow.insertCell(0);
		var cell2 = newRow.insertCell(1);
		var cell3 = newRow.insertCell(2);
		
		cell1.innerHTML = approvalData.name;
		cell2.innerHTML = approvalData.position;
		cell3.innerHTML = approvalData.department;
	}

	

	$(document).ready(function(){

		$('#kt_modal_1').on('shown.bs.modal', function(){
	
			$('#kt_docs_jstree_basic').jstree({
				"core" : {
					"themes" : {
						"responsive": true
					},
					"data":[
						{ "id" : "S1", "parent" : "#", "text" : "SI 사업부", "icon" : "glyphicon glyphicon-home" },
						{ "id" : "S2", "parent" : "#", "text" : "솔루션 사업부","alias":"ㅋㅋㅋ" , "icon" : "glyphicon glyphicon-home"  },
						{ "id" : "S3", "parent" : "#", "text" : "AI 사업부", "icon" : "glyphicon glyphicon-home"  },
						{ "id" : "S11", "parent" : "S1", "text" : "공공SI" , "icon" : "glyphicon glyphicon-picture"},
						{ "id" : "S12", "parent" : "S1", "text" : "일반SI", "icon" : "glyphicon glyphicon-picture" },
						{ "id" : "S21", "parent" : "S2", "text" : "그룹웨어" ,"icon" : "glyphicon glyphicon-picture" },
						{ "id" : "S22", "parent" : "S2", "text" : "MES" , "icon" : "glyphicon glyphicon-picture"},
						{ "id" : "S23", "parent" : "S2", "text" : "ERP", "icon" : "glyphicon glyphicon-picture" },
						{ "id" : "S31", "parent" : "S3", "text" : "이미지처리" , "icon" : "glyphicon glyphicon-picture"},
						{ "id" : "S32", "parent" : "S3", "text" : "음성처리" , "icon" : "glyphicon glyphicon-picture"},
						{ "id" : "S33", "parent" : "S3", "text" : "자연어처리" , "icon" : "glyphicon glyphicon-picture"},
						{ "id" : "J01", "parent" : "S11", "text" : "송불곰" , "icon": "glyphicon glyphicon-user" },
						{ "id" : "J02", "parent" : "S31", "text" : "강사자" , "icon": "glyphicon glyphicon-user"},
						{ "id" : "J03", "parent" : "S22", "text" : "송호랑", "icon": "glyphicon glyphicon-user" },
						{ "id" : "J04", "parent" : "S32", "text" : "이늑대" , "icon": "glyphicon glyphicon-user"},
						{ "id" : "J05", "parent" : "S33", "text" : "감여우", "icon": "glyphicon glyphicon-user" },
						{ "id" : "J06", "parent" : "S33", "text" : "김발발", "icon": "glyphicon glyphicon-user" },
						{ "id" : "J07", "parent" : "S12", "text" : "공수달" , "icon": "glyphicon glyphicon-user"},
						{ "id" : "J08", "parent" : "S23", "text" : "황악어" , "icon": "glyphicon glyphicon-user"},
						{ "id" : "J09", "parent" : "S22", "text" : "홍문어" , "icon": "glyphicon glyphicon-user"}
					],
				},
				/* 'data':
					'url': '/your-data-url',
					'dataType': 'json'
					*/
				"types" : {
					"default" : {
						"icon" : "ki-outline ki-folder"
					},
					"file" : {
						"icon" : "ki-outline ki-file"
					}
				},
				"plugins": ["types","search"]
				,
				"search":{
					/* "show_only_matches" : true,  */
					"show_only_matches_children" : true
				}				
			});
			
		});	
		
	})

	


	//이벤트
	$('#kt_docs_jstree_basic').on("changed.jstree", function (e, data) {
		console.log("changed 했을 때", data.selected);
	});

	// Node 열렸을 때
	let isAdded = false;
	$('#kt_docs_jstree_basic').on("open_node.jstree", function (e, data) {
		console.log("open되었을때", data.node);
	});

	// Node 선택했을 때
	$('#kt_docs_jstree_basic').on("select_node.jstree", function (e, data) {
		console.log("select했을때", data.node);
	});



	</script>
</html>