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
	<link rel="shortcut icon" href="<c:url value='/resource/assets/media/logos/favicon.ico' />" />
	<!--begin::Fonts(mandatory for all pages)-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
	<!--end::Fonts-->
	<!--begin::Vendor Stylesheets(used for this page only)-->
	<link href="<c:url value='/resource/assets/plugins/custom/leaflet/leaflet.bundle.css' />" rel="stylesheet" type="text/css" />
	<link href="<c:url value='/resource/assets/plugins/custom/datatables/datatables.bundle.css' />" rel="stylesheet" type="text/css" />
	<!--end::Vendor Stylesheets-->
	<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
	<link href="<c:url value='/resource/assets/plugins/global/plugins.bundle.css' />" rel="stylesheet" type="text/css" />		
	<link href="<c:url value='/resource/assets/css/style.bundle.css' />" rel="stylesheet" type="text/css" />
	<!--end::Global Stylesheets Bundle-->
	<link href="<c:url value='/resource/assets/plugins/custom/jstree/jstree.bundle.css' />" rel="stylesheet" type="text/css" />		
	<style>
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
		<jsp:include page="/views/common/header.jsp"></jsp:include>
				
		<!--begin::Main-->
		<!--begin::Root-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid">
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content">
					<!--================================메인 내용들어가는부분================================================-->
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
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
								<button type="button" class="btn btn-light-primary me-3" id="btnApproval" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
								<i class="ki-duotone ki-filter fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>결재하기</button>
								<button type="button" class="btn btn-light-primary me-3" id="btnApprReject" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-bs-toggle="modal" data-bs-target="#kt_modal_2">
								<i class="ki-duotone ki-filter fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>반려하기</button>
								<button type="button" class="btn btn-light-primary me-3" id="btnApprModify" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-bs-toggle="modal" data-bs-target="#kt_modal_3">
								<i class="ki-duotone ki-filter fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>수정하기</button>
								<button type="button" class="btn btn-light-primary me-3" id="btnApprInfo" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-bs-toggle="modal" data-bs-target="#kt_modal_1">
								<i class="ki-duotone ki-filter fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>결재정보</button>
								<button type="button" class="btn btn-light-primary me-3" id="btnGoBack" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
								<i class="ki-duotone ki-filter fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
								</i>뒤로가기</button>								
							</div>
							<!--end::Toolbaricon-->									
						</div>
						<!--end::Toolbar-->
						<!-- 결재 양식 들어오는 곳 -->		
						<form id="docFormContainer" action="/saveDocument" method="post">	
							<p>Selected Form: <%= request.getParameter("common_idx") %></p>
							<div class="loadApprDoc">	
							${htmlContent}				
							</div>	
						</form>					
					</div>
				<!--end::Content--> 
    			</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<!--end::Root-->

		<!--begin::modal-->
		<!--결재정보 모달-->
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
							<div class="emptree border" style="max-height: 600px; overflow-y: auto; overflow-x: hidden; margin: 5px; position: relative;" >
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
								<div style="position: absolute; bottom: 20px; text-align: center; left: 25%;">
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
						<!-- 아래쪽 div -->
						<c:if test="${commentsExist}">
							<div>
								<div class="apprreceiver border"  style="align-items: center; margin: 5px;">
									<div class="d-flex flex-column-auto h-40px flex-center text-light-success bg-success" style="margin: 10px 0px;">
										<span class="text-center">결재의견(반려, 수정)</span>
									</div>										
									<div class="d-flex flex-column receiver scroll" id="receiver" style="height: 100px;">
										<div style="overflow: auto;">
											<table class="w-100">
												<thead>
													<tr>
														<th>결재자명</th>
														<th>일시</th>
														<th>의견</th>
													</tr>
												</thead>
												<tbody>	
													<tr>
														<td colspan="3" style="text-align: center;">의견이 없습니다.</td>
													</tr>													
												</tbody>
											</table>
										</div>										
									</div>
								</div>
							</div>	
						</c:if>										
					</div>

					<div class="modal-footer" style="display: flex; justify-content: center;">
						<button type="button" class="btn btn-primary" id="saveApprLine">저장</button>
					</div>
				</div>
			</div>
		</div>
		
		<!--반려하기모달--> 
		<div class="modal fade" tabindex="-1" id="kt_modal_2">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title">반려하기</h1>

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
									<tr>										
										<th>결재문서명</th>
										<th colspan="2" style="text-align: left;"></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>반려의견</td>
										<td colspan="2" rowspan="5"style="text-align: left;">
											<textarea cols="30" rows = "5" placeholder="반려 결재 의견 입력은 필수 입니다."></textarea>
										</td>								
									</tr>
								</tbody>
							</table>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-primary">반려</button>
						<button type="button" class="btn btn-light" data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		
		<!--수정하기모달--> 
		<div class="modal fade" tabindex="-1" id="kt_modal_3">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title">수정하기</h1>

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
									<tr>
										<th>결재문서명</th>
										<th colspan="2" style="text-align: left;"></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>수정의견</td>
										<td colspan="2" rowspan="5"style="text-align: left;">
											<textarea cols="30" rows = "5" placeholder="수정 의견 입력은 필수 입니다."></textarea>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-primary">수정</button>
						<button type="button" class="btn btn-light" data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>

								
		<!--begin::Javascript-->
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="<c:url value='/resource/assets/plugins/global/plugins.bundle.js' />"></script>
		<script src="<c:url value='/resource/assets/js/scripts.bundle.js' />"></script>		
		<!--end::Global Javascript Bundle-->
		<script src="<c:url value='/resource/assets/plugins/custom/jstree/jstree.bundle.js' />"></script>
		

		
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
	
    
    $(document).ready(function () {
    	var common_idx=${common_idx};
    	// 초기에 선택된 양식에 대한 HTML 파일 로드
        var formPage = '<%= request.getAttribute("formPage") %>';
        if (formPage) {
            loadFormPage(formPage, common_idx);
        }
        
        
    	 // 결재하기 버튼 클릭 시의 동작
        $('#btnApproval').on('click', function () {
            // 여기에 결재상신 버튼 클릭 시 수행할 동작 추가
            console.log('결재하기 버튼 클릭');
        });

        // 반려하기 버튼 클릭 시의 동작
        $('#btnApprReject').on('click', function () {
            // 여기에 결재정보 버튼 클릭 시 수행할 동작 추가
            console.log('반려하기 버튼 클릭');
            var myModal2 = new bootstrap.Modal(document.getElementById('kt_modal_2'), {
                backdrop: 'static', // 배경 클릭 시 모달이 닫히지 않도록 설정
                keyboard: false // Esc 키를 눌렀을 때 모달이 닫히지 않도록 설정
            });
            myModal.show();
        });

        // 수정하기 버튼 클릭 시의 동작
        $('#btnApprModify').on('click', function () {
            // 여기에 임시저장 버튼 클릭 시 수행할 동작 추가
            console.log('임시저장 버튼 클릭');
            var myModal3 = new bootstrap.Modal(document.getElementById('kt_modal_3'), {
                backdrop: 'static', // 배경 클릭 시 모달이 닫히지 않도록 설정
                keyboard: false // Esc 키를 눌렀을 때 모달이 닫히지 않도록 설정
            });
            myModal3.show();
        });
        
     	// 결재정보 버튼 클릭 시의 동작
        $('#btnApprInfo').on('click', function () {
            // 여기에 임시저장 버튼 클릭 시 수행할 동작 추가
            console.log('임시저장 버튼 클릭');
            var myModal1 = new bootstrap.Modal(document.getElementById('kt_modal_1'), {
                backdrop: 'static', // 배경 클릭 시 모달이 닫히지 않도록 설정
                keyboard: false // Esc 키를 눌렀을 때 모달이 닫히지 않도록 설정
            });
            myModal1.show();
        });

        // 뒤로가기 버튼 클릭 시의 동작
        $('#btnGoBack').on('click', function () {
        	if (confirm('저장하지 않고 뒤로 가시겠습니까?')) {
                // 사용자가 Yes를 클릭한 경우 /approvalReq 페이지로 이동
                window.location.href = '/approvalReq';
            } else {
                // 사용자가 No 또는 취소를 클릭한 경우 아무 동작도 하지 않음
                console.log('뒤로가기 버튼 클릭 - 취소');
            }            
        });
        
        $('#kt_modal_1').on('shown.bs.modal', function(){
			getTreeData();
		})
        
    });
		
	
	function getTreeData(){
		$.ajax({
			url:'/organizationChart.ajax',
			method:'GET',
			dataType:'JSON',
			success:function(data){
				console.log(data);
				jsTreeData = data.treeData;
				jsTree(data.treeData);
			},error: function(error){
				console.log(error);
			}
		})
	}
	
	function jsTree(treeData){
		$('#kt_docs_jstree_basic').jstree({
			"core" : {
				"data" : treeData,
				"themes" : {
					"responsive": true
				}
			},
			"types" : {
				  "department": {
					    "icon": "fa fa-building" // 부서 아이콘
				  },
				  "employee": {
				    "icon": "fa fa-user", // 직원 아이콘
				    "selectable": true // 선택 가능하도록 설정
				  }
			},
			"plugins": ["types","search"]
			,
			"search":{
				/* "show_only_matches" : true,  */
				"show_only_matches_children" : true
			}
		});
	}

	function empSearch() {
		console.log("검색");
		$('#kt_docs_jstree_basic').jstree(true).search($('#empName').val());
	}

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