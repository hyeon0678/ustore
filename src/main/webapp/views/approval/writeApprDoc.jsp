<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
	<link rel="shortcut icon" href="<c:url value='/resource/assets/media/logos/mainLogo.svg' />" />
	<!--begin::Fonts(mandatory for all pages)-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
	<!--end::Fonts-->
	<!--begin::Vendor Stylesheets(used for this page only)-->
	<link href="<c:url value='/resource/assets/plugins/custom/datatables/datatables.bundle.css' />" rel="stylesheet" type="text/css" />
	<!--end::Vendor Stylesheets-->
	<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
	<link href="<c:url value='/resource/assets/plugins/global/plugins.bundle.css'/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value='/resource/assets/css/style.bundle.css'/>" rel="stylesheet" type="text/css" />
	<!--end::Global Stylesheets Bundle-->		
	<link href="<c:url value='/resource/assets/plugins/custom/jstree/jstree.bundle.css'/>" rel="stylesheet" type="text/css" />	
	<style>		
		.signature-table {
           float: right;
           margin-left: 20px;
		}
		.signature-table td {
				border: 1px solid #ddd;
				padding: 10px;
				text-align: center;
				width: 80px;
		}
		.signature-table th{
			height: 25px;
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
									<h1 class="text-gray-900 fw-bold my-1 fs-2">기안문 작성</h1>
									<!--end::Title-->
								</div>
								<!--end::Info-->
								<!--begin::Toolbaricon-->
								<div class="d-flex justify-content-end" data-kt-user-table-toolbar="base">
									<!--begin::Filter-->
									<button type="button" class="btn btn-light-primary me-3" id="btnSendApproval" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
									<i class="ki-duotone ki-filter fs-2">
										<span class="path1"></span>
										<span class="path2"></span>
									</i>결재상신</button>
									<button type="button" class="btn btn-light-primary me-3" id="btnApprovalInfo" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-bs-toggle="modal" data-bs-target="#kt_modal_1">
									<i class="ki-duotone ki-filter fs-2">
										<span class="path1"></span>
										<span class="path2"></span>
									</i>결재정보</button>
									<button type="button" class="btn btn-light-primary me-3" id="btnSaveTemp" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
									<i class="ki-duotone ki-filter fs-2">
										<span class="path1"></span>
										<span class="path2"></span>
									</i>임시저장</button>
									<button type="button" class="btn btn-light-primary me-3" id="btnGoBack" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
									<i class="ki-duotone ki-filter fs-2">
										<span class="path1"></span>
										<span class="path2"></span>
									</i>뒤로가기</button>								
								</div>
								<!--end::Toolbaricon-->		
							</div>
						</div>
						<!--end::Toolbar-->	
						<!-- 결재 양식 들어오는 곳 -->	
						<p>Selected Form: <%= request.getParameter("common_idx") %></p>	
						<div class="loadApprDoc">	
							${htmlContent}					
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
											<table class="signature-table mr-3 w-100">
												<thead>
													<tr>
														<th>결재타입</th>
														<th>이름</th>
														<th>직책</th>
														<th style="width: 86.22222px;">부서</th>
														<th style="width: 30px;"></th>
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
											<table class="signature-table mr-3 w-100">
												<thead>
													<tr>
														<th>이름</th>
														<th>직책</th>
														<th>부서</th>
														<th style="width: 30px;"></th>
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
		
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
		</sec:authorize>				
								
		<!--begin::Javascript-->
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<!-- daterangepicker -->
		<script src="<c:url value='/resource/assets/plugins/global/plugins.bundle.js' />"></script> 
		<script src="<c:url value='/resource/assets/js/scripts.bundle.js' />"></script>
		<!--end::Global Javascript Bundle-->
		<!-- jstree -->
		<script src="<c:url value='/resource/assets/plugins/custom/jstree/jstree.bundle.js' />"></script>
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
	var common_idx;
	$(document).ready(function () {
		common_idx=${common_idx};
    	// 초기에 선택된 양식에 대한 HTML 파일 로드
        var formPage = '<%= request.getAttribute("formPage") %>';
        if (formPage) {
            loadFormPage(formPage, common_idx);
        }        
        
        var loggedInEmp_idx = ${principal.username};
    	console.log(loggedInEmp_idx);
        addLoggedInEmpToApprLine(loggedInEmp_idx);            	 	
    	 
        // 결재정보 버튼 클릭 시의 동작
        $('#btnApprovalInfo').on('click', function () {
            console.log('결재정보 버튼 클릭');            
            myModal.show();
        });
                
        $('#kt_modal_1').on('shown.bs.modal', function(){
			getTreeData();
		})  	
		
    });
		
    // 동적으로 HTML 파일 로드하는 함수
    function loadFormPage(formPage, common_idx) {
        $.ajax({
            type: 'GET',
            url: "/getHtml?common_idx=" + common_idx,
            success: function (data) {
                // 로드한 HTML을 동적으로 추가
                $('.loadApprDoc').html(data);
            },
            error: function (error) {
                console.error('페이지 로드 중 오류가 발생했습니다.');
            }
        });
    }
    

    var myModal = new bootstrap.Modal(document.getElementById('kt_modal_1'), {
        backdrop: 'static', // 배경 클릭 시 모달이 닫히지 않도록 설정
        keyboard: false // Esc 키를 눌렀을 때 모달이 닫히지 않도록 설정
    });
    
    
	
	
	function getTreeData(){
		$.ajax({
			url:'/organizationChart.ajax',
			method:'GET',
			dataType:'JSON',
			success:function(data){
				console.log(data);
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
	
	// 노드를 선택했을 때의 이벤트 처리
	$('#kt_docs_jstree_basic').on("select_node.jstree", function (e, data) {
	    console.log("select했을때", data.node);
	    var emp_idx = data.node.id.replace("_anchor", "");
	});
	

	// 결재선 정보 및 수신자 정보 설정(결재정보 저장)
	var approvalLines = [];
	var receivers = [];		

    function addLoggedInEmpToApprLine(loggedInEmp_idx){
		$.ajax({
	        type: 'GET',
	        url: '/info/' + loggedInEmp_idx, 
	        success: function (loggedInEmp) {
	            console.log(loggedInEmp);

	            // 생성할 approvalData 객체를 만들어서 데이터 채우기
	            var approvalData = {
	                type: '기안',
	                name: loggedInEmp.empName,
	                position: loggedInEmp.position,
	                positionType: loggedInEmp.positionType,
	                department: loggedInEmp.deptName,
	                apprOrder: 0,  // 결재순서 추가
	                apprConfirm: false  // 결재여부 추가
	            };

	            // 테이블에 데이터 추가
	            addRowToApprLineTable(approvalData);  
	            approvalLines.push(approvalData);
	        },
	        error : function(e){
	        	console.log(e);
	        }
	   });
	}
	
	// 조직도에서 결재선에 추가하는 버튼 함수
	function addApprovalLine() {
	    var selectedNode = $('#kt_docs_jstree_basic').jstree(true).get_selected(true)[0];
	    var emp_idx = selectedNode.id.replace("_anchor", "");

	    // 서버에서 사원 정보 조회
	    $.ajax({
	        type: 'GET',
	        url: '/info/' + emp_idx,
	        success: function (employeeInfo) {
	            console.log(employeeInfo);
				
	            var nextApprOrder = getNextApprOrder();
	            
	            var approvalData = {
	                type: '결재',
	                approverIdx: employeeInfo.empIdx,
	                name: employeeInfo.empName,
	                position: employeeInfo.position,
	                positionType: employeeInfo.positionType,
	                department: employeeInfo.deptName,
	                apprOrder: nextApprOrder,  // 결재순서 추가
	                apprConfirm: false  // 결재여부 추가
	            };

	            // 테이블에 데이터 추가
	            if(selectedNode.type!='department'){
		            addRowToApprLineTable(approvalData);              	
	            }else{
	            	alert('부서는 추가할 수 없습니다.');
	            }

	            if(!isApprDuplicate(approvalData)){
		            // approvalLines 배열에 데이터 추가
		            approvalLines.push(approvalData);
		            console.log("approval array:", approvalLines);
	            }else{
	         		console.log("중복된 데이터가 들어갔습니다.")
	         	}
	        },
	        error: function (error) {
	            console.error('Error fetching employee info:', error);
	        }
	    });
	}

	// 다음 결재순서를 반환하는 함수
	function getNextApprOrder() {
	    return approvalLines.length;
	}
	
	// 결재정보 모달창 결재선 추가 테이블에 행을 추가하는 함수
	function addRowToApprLineTable(approvalData) {
	    var tbody = document.getElementById('apprline').getElementsByTagName('tbody')[0];
	    
	    var isAlreadySelected = checkIfNodeExists(tbody, approvalData);
	    
	    if(!isAlreadySelected){
		    var newRow = tbody.insertRow(0);
	
		    var cell1 = newRow.insertCell(0);
		    var cell2 = newRow.insertCell(1);
		    var cell3 = newRow.insertCell(2);
		    var cell4 = newRow.insertCell(3);
		    var cell5 = newRow.insertCell(4);
	
		    cell1.innerHTML = approvalData.type;
		    cell2.innerHTML = approvalData.name;
		    cell3.innerHTML = approvalData.positionType;
		    cell4.innerHTML = approvalData.department;
	
		    var deleteIcon = document.createElement('i');
		    deleteIcon.className = 'fa fa-trash';
		    deleteIcon.onclick = function () {
		        newRow.remove();
		        removeEmpFromApprLines(approvalData);
		    };
		    cell5.appendChild(deleteIcon);	
		    cell5.style.width='30px';
		    
		 	// 선택한 노드 정보를 행에 저장 (data-node 필요)
		    newRow.setAttribute('data-node', JSON.stringify(approvalData));
	    }else{
	    	alert("이미 선택된 직원입니다.");
	    }
	}

	function removeEmpFromApprLines(empToRemove){
		var index = -1;
	    for (var i = 0; i < approvalLines.length; i++) {
	        if (JSON.stringify(approvalLines[i]) == JSON.stringify(empToRemove)) {
	            index = i;
	            break;
	        }
	    }
	    if (index != -1) {
	        approvalLines.splice(index, 1);
	        console.log("삭제 후 결재선 :", approvalLines);
	    }	
	}
	
	
	// 조직도에서 수신자 추가하는 버튼 함수
	function addReceiver(){
		var selectedNode = $('#kt_docs_jstree_basic').jstree(true).get_selected(true)[0];
		var emp_idx = selectedNode.id.replace("_anchor", "");				
	    
	    // 서버에서 사원 정보 조회
	    $.ajax({
	        type: 'GET',
	        url: '/info/' + emp_idx,
	        success: function (employeeInfo) {
	            console.log(employeeInfo);

	            // 생성할 receiverData 객체를 만들어서 데이터 채우기
	            var receiverData = {
	            	recvIdx: employeeInfo.empIdx,
	                name: employeeInfo.empName,
	                position: employeeInfo.position,
	                positionType: employeeInfo.positionType,
	                department: employeeInfo.deptName
	            };
	            
	         	// 테이블에 데이터 추가
	            if(selectedNode.type!='department'){
	            	addRowToReceiverTable(receiverData);           	
	            }else{
	            	alert('부서는 추가할 수 없습니다.');
	            }	              

	         	if(!isRecvDuplicate(receiverData)){
		            // receivers 배열에 데이터 추가
		            receivers.push(receiverData);   
		            console.log("Receivers array:", receivers);	         		
	         	}else{
	         		console.log("중복된 데이터가 들어갔습니다.")
	         	}
	        },
	        error : function(e){
	        	console.log(e);	
	        }
		});		
	}
	
	// 결재정보 모달창 수신자 추가 테이블에 행을 추가하는 함수
	function addRowToReceiverTable(receiverData) {
		var tbody = document.getElementById('receiver').getElementsByTagName('tbody')[0];
		var isAlreadySelected = checkIfNodeExists(tbody, receiverData);
		
		if (!isAlreadySelected) {		
			var newRow = tbody.insertRow(0); // 첫 번째 위치에 새로운 행 추가
			// 각 셀에 데이터 추가
			var cell1 = newRow.insertCell(0);
			var cell2 = newRow.insertCell(1);
			var cell3 = newRow.insertCell(2);
			var cell4 = newRow.insertCell(3);
			
			cell1.innerHTML = receiverData.name;
			cell2.innerHTML = receiverData.positionType;
			cell3.innerHTML = receiverData.department;
			
			var deleteIcon = document.createElement('i');
			deleteIcon.className = 'fa fa-trash';
			deleteIcon.onclick = function () {
				newRow.remove();
				removeEmpFromReceiver(receiverData);
			};
			cell4.appendChild(deleteIcon);
			cell4.style.width='30px';
			
			// 선택한 노드 정보를 행에 저장 (data-node 필요)
			newRow.setAttribute('data-node', JSON.stringify(receiverData));
		}else{
			alert("이미 선택된 직원입니다.");
		}			
	}    
	
	function removeEmpFromReceiver(empToRemove){
		var index = -1;
	    for (var i = 0; i < receivers.length; i++) {
	        if (JSON.stringify(receivers[i]) == JSON.stringify(empToRemove)) {
	            index = i;
	            break;
	        }
	    }

	    if (index != -1) {
	    	receivers.splice(index, 1);
	        console.log("approval array after removal:", receivers);
	    }	
	}
	
	// 선택된 노드가 존재하는지 확인하는 함수
	function checkIfNodeExists(tbody, rowData) {
    var existingRows = tbody.getElementsByTagName('tr');

	    for (var i = 0; i < existingRows.length; i++) {
	        var row = existingRows[i];
	        var rowNodeString = row.getAttribute('data-node');
	
	        if (rowNodeString) {
	            var rowNode = JSON.parse(rowNodeString);
	
	            if (rowNode.name === rowData.name &&
                    rowNode.position === rowData.position &&
                    rowNode.department === rowData.department) {
	                return true;
	            }
	        }
	    }	
	    return false;
	}
	
	// addr 배열에 중복 데이터가 있는지 확인하는 함수
	function isApprDuplicate(newData) {
	    for (var i = 0; i < approvalLines.length; i++) {
	        if (compareData(approvalLines[i], newData)) {
	            return true; // 중복된 데이터가 있음
	        }
	    }
	    return false; // 중복된 데이터가 없음
	}
	
	
	// receivers 배열에 중복 데이터가 있는지 확인하는 함수
	function isRecvDuplicate(newData) {
	    for (var i = 0; i < receivers.length; i++) {
	        if (compareData(receivers[i], newData)) {
	            return true; // 중복된 데이터가 있음
	        }
	    }
	    return false; // 중복된 데이터가 없음
	}

	// 두 데이터 객체를 비교하는 함수
	function compareData(data1, data2) {
	    return (
	        data1.name === data2.name &&
	        data1.position === data2.position &&
	        data1.positionType === data2.positionType &&
	        data1.department === data2.department
	    );
	}
	    
	    
	// 결재선, 수신자 저장 함수 
	$('#saveApprLine').on('click', function () {
		var approvalSuccess = false;
	    var receiverSuccess = false;
	    
        $.ajax({
        	type: 'POST',
            url: '/saveapprlinedata',
            data: JSON.stringify({
                approvalLines: approvalLines
            }),
            contentType:'application/json; charset=utf-8',
            success: function (data) {
                console.log(data.approvalLines);
                console.log('결재선 정보가 성공적으로 저장되었습니다.'); 
                
                // 결재선 설정에 따라 결재 양식의 우상단에 결재 표시 구역 그리기
                // 결재자명 위치할 행
				function generateApproverRow() {
				    var rowHtml = "";
				    for (var i = 0; i < approvalLines.length; i++) {
				      rowHtml += "<td>" + approvalLines[i].name + "</td>";
				    }
				    return rowHtml;
				}
				// 결재자 사인구역 위치할 행				  
				function generateSignatureRow() {
				    var rowHtml = "";
				    for (var i = 0; i < approvalLines.length; i++) {
				      rowHtml += "<td></td>";
				    }
				    return rowHtml;
				}
				
				$("#apprListTable #approverRow").html(generateApproverRow());
				$("#apprListTable tr:last").html(generateSignatureRow());
                
                // 결재선 정보 저장 성공
	            approvalSuccess = true;
	
	            // 모든 처리가 완료되었을 때 모달 닫기
	            if (approvalSuccess && receiverSuccess) {
	                $('#kt_modal_1').modal('hide');
	            }
            },
            error: function (error) {
                console.error('결재선 정보 저장 중 오류가 발생했습니다.');
                $('#kt_modal_1').modal('hide');
            }
        });
        
        
     	// 서버로 수신자 정보 전송 (AJAX 사용)
        $.ajax({
            type: 'POST',
            url: '/savereceiverdata',
            data: JSON.stringify({
                receivers: receivers
            }),
            contentType: 'application/json; charset=utf-8',
            success: function (data) {
                console.log(data.receivers);
                console.log('수신자 정보가 성공적으로 저장되었습니다.');

                
                if (data.receivers && data.receivers.length > 0) {
                	 // 수신자 이름들을 담을 배열
                    var receiverNames = [];

                    // 각 수신자의 이름을 배열에 추가
                    data.receivers.forEach(function(receiver) {
                    	var receiver = receiver.name +'('+ receiver.department +' '+ receiver.positionType +')'; 
                    
                        receiverNames.push(receiver);
                    });

                    // 수신자 이름들을 쉼표로 구분하여 문자열로 변환
                    var receiversString = receiverNames.join(', ');

                    // 결재양식의 수신자 input 태그에 수신자 이름 넣기
                    document.getElementById('inputReceiver').value = receiversString;
                } else {
                    document.getElementById('inputReceiver').value = '내부결재';
                }
                
             	// 수신자 정보 저장 성공
                receiverSuccess = true;

                // 모든 처리가 완료되었을 때 모달 닫기
                if (approvalSuccess && receiverSuccess) {
                    $('#kt_modal_1').modal('hide');
                }
            },
            error: function (error) {
                // 수신자 정보 저장 중 오류가 발생했을 때의 동작
                console.error('수신자 정보 저장 중 오류가 발생했습니다.');
                $('#kt_modal_1').modal('hide');
            }
        });
        
    });
	

		var ApprovalDto;
		
		document.addEventListener('DOMContentLoaded', function() {

		    switch (common_idx) {
		        case '30':
		            ApprovalDto = bdForm;
		            break;
		        case '31':
		            ApprovalDto = payForm;
		            break;
		        case '32':
		            ApprovalDto = leaveForm;
		            break;
		    }
		});


	
        
	// 임시저장
    $('#btnSaveTemp').on('click', function () {
    	
    	console.log('임시저장 버튼 클릭');    	
	    
        $.ajax({
            url: '/tempsaveappr', 
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(ApprovalDto),
            success: function(response) {
                alert('임시저장이 완료되었습니다.');
            },
            error: function(error) {
                console.error('임시저장 중 오류가 발생했습니다.', error);
            }
        });
        
    });
    
	
	// 결재상신
	$('#btnSendApproval').on('click', function () {
		
		console.log('결재상신 버튼 클릭');		
	    
	    $.ajax({
	        url: '/sendappr',
	        method: 'POST',
	        contentType: 'application/json',
	        data: JSON.stringify(ApprovalDto),
	        success: function (response) {
	            console.log('문서가 결재상신 되었습니다.');
	        },
	        error: function (error) {
	            console.error('결재상신 중 오류가 발생했습니다.');
	        }
	    });
	});

	
	// 뒤로가기 버튼 클릭 시의 동작
    $('#btnGoBack').on('click', function () {
    	if (confirm('저장하지 않고 뒤로 가시겠습니까?')) {
            location.href = '/approval/newapproval';
        } else {
            console.log('뒤로가기 버튼 클릭 - 취소');
        }            
    });
	
	</script>
</html>