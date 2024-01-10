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
			text-align: center;
		}		
		.signature-table th{
			border: 1px solid #ddd;
			text-align: center;
			height: 25px;
		}	
		@media print {
        body * {
            visibility: hidden;
        }

        .loadApprDoc, .loadApprDoc * {
            visibility: visible;
        }

        .loadApprDoc {
            position: absolute;
            left: 0;
            top: 0;
            width: 210mm; /* A4 가로 크기 */
            height: 297mm; /* A4 세로 크기 */
            margin: 0 auto; /* 중앙 정렬 */
            padding: 20mm; /* 여백 설정 */
        }
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
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 30px; background-color: #fffff8; margin-left: 30px">
					<!--================================메인 내용들어가는부분================================================-->
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
						<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
									<!--begin::Title-->
									<h1 class="text-gray-900 fw-bold my-1 fs-2">부서문서함</h1>
									<!--end::Title-->									
								</div>
								<!--end::Info-->
								<!--begin::Toolbaricon-->
								<div class="d-flex justify-content-end" data-kt-user-table-toolbar="base">
									<!--begin::Filter-->
									<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" id="btnApprovalInfo" data-kt-menu-placement="bottom-end" data-bs-toggle="modal" data-bs-target="#kt_modal_1">
									<i class="ki-duotone ki-filter fs-2">
										<span class="path1"></span>
										<span class="path2"></span>
									</i>결재정보</button>
									<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" id="btnPrintDoc" data-kt-menu-placement="bottom-end">
									<i class="ki-duotone ki-filter fs-2">
										<span class="path1"></span>
										<span class="path2"></span>
									</i>출력하기</button>
									<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" id="btnGoBack" data-kt-menu-placement="bottom-end">
									<i class="ki-duotone ki-filter fs-2">
										<span class="path1"></span>
										<span class="path2"></span>
									</i>목록으로</button>						
								</div>
								<!--end::Toolbaricon-->		
							</div>
						</div>
						<!--end::Toolbar-->
						<!-- 결재 양식 들어오는 곳 -->		
						<div class="loadApprDoc">	
							<div style="pointer-events: none;">${htmlContent}</div>			
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
							</div>		

							<!-- 오른쪽 div -->
							<div class="d-flex flex-column flex-row-fluid w-350px justify-content-between">
								<div class="apprlineSec border" style="align-items: center; margin: 5px;">
									<div class="d-flex flex-column-auto h-40px flex-center text-light-success bg-success" style="margin: 10px 0px;">
										<span class="text-center">결 재 선</span>
									</div>
									<div class="apprline d-flex flex-column scroll" id="apprlineTable" style="height: 250px;">
										<div style="overflow: auto;">
											<table class="signature-table mr-3 w-100">
												<thead>
													<tr>
														<th>결재타입</th>
														<th>이름</th>
														<th>직책</th>
														<th style="width: 86.22222px;">부서</th>
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
									<div class="d-flex flex-column receiver scroll" id="receiverTable" style="height: 200px;">
										<div style="overflow: auto;">
											<table class="signature-table mr-3 w-100">
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
						<div>
							<div class="comment border"  style="align-items: center; margin: 5px;">
								<div class="d-flex flex-column-auto h-40px flex-center text-light-success bg-success" style="margin: 10px 0px;">
									<span class="text-center">결재의견(반려, 수정)</span>
								</div>										
								<div class="d-flex flex-column commentTable scroll" id="commentlist" style="height: 100px;">
									<div style="overflow: auto;">
										<table class="w-100">
											<thead>
												<tr>
													<th>결재자명</th>
													<th>결재타입</th>
													<th>결재일시</th>
													<th>결재의견</th>
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

					<div class="modal-footer" style="display: flex; justify-content: center;">
						<button type="button" class="btn btn-primary" id="checkapprinfo">확인</button>
					</div>
				</div>
			</div>
		</div>
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
		</sec:authorize>
								
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
	
	var queryString = window.location.search;

	// URLSearchParams를 사용하여 쿼리 문자열을 해석
	var params = new URLSearchParams(queryString);

	// apprIdx와 apprTypeIdx 값을 추출
	var apprIdx = params.get('apprIdx');
	var apprTypeIdx = params.get('apprTypeIdx');

	// 추출된 값 확인 (콘솔에 출력)
	console.log('apprIdx:', apprIdx);
	console.log('apprTypeIdx:', apprTypeIdx);	
	
	var apprContent;
	var approvalLines = [];
	var receivers = [];
	var readonly = true;
	var orderIdx;
	
    function loadFormPage(formPage, common_idx, apprTypeIdx) {
        $.ajax({
            type: 'GET',
            url: "/gethtml?common_idx=" + common_idx,
            success: function (data) {
                // 로드한 HTML을 동적으로 추가
                $('.loadApprDoc').html(data);  
                console.log(apprTypeIdx);
                setValues(apprTypeIdx);     
                generateApproverRow();
                generateSignatureRow();
                
                // 불러온 내용 수정 못하도록 처리
             	// .card-body 클래스를 가진 요소를 찾음
                var cardBody = document.querySelector('.card-bodyform');

                // .card-body 클래스를 가진 요소의 자식 요소들을 찾음
                var childElements = cardBody.querySelectorAll('*');

                // 각 자식 요소에 대해 읽기 전용 속성 설정
                childElements.forEach(function(element) {
                    element.setAttribute('readonly', true);
                });
                
                var selectElementLeaveType = document.getElementById('leaveType');
                if (selectElementLeaveType) {
                	selectElementLeaveType.setAttribute('disabled', true);
                }
                
                $('#orderNumSearch').hide();
                
            },
            error: function (error) {
                console.error('페이지 로드 중 오류가 발생했습니다.');
            }
        });
        
        
        function setValues(apprTypeIdx) {
        	
        	var apprSubject = "${content.apprSubject}";
        	$("#apprSubject").val(apprSubject);
        	
        	// 결재자 정보 불러오기
        	var beforeConvertData = ${apprline};
        	function convertData(secondData){
        		return{
        			empIdx: secondData.emp_idx,
        	        apprType: secondData.appr_type,
        	        name: secondData.approver,
        	        positionType: secondData.positionType,
        	        department: secondData.dept_name,
        	        apprOrder: secondData.appr_order,
        	        apprConfirm: secondData.appr_confirm,
        	        comment : secondData.comment,
        	        apprDate : secondData.appr_date
        		};
        	}
        	
        	approvalLines = beforeConvertData.map(convertData);
        	console.log(approvalLines);
        	        	
       	    // 가공된 데이터를 테이블에 동적으로 추가
		    var tbody = document.getElementById('apprlineTable').getElementsByTagName('tbody')[0];
		    tbody.innerHTML = ""; // 테이블 내용 비우기
	
		    // 새로운 테이블 내용 추가
		    for (var i = approvalLines.length - 1; i >= 0; i--) {
		        var newRow = tbody.insertRow(-1);
		        var cell1 = newRow.insertCell(0);
		        var cell2 = newRow.insertCell(1);
		        var cell3 = newRow.insertCell(2);
		        var cell4 = newRow.insertCell(3);
	
		        cell1.innerHTML = approvalLines[i].apprType;
		        cell2.innerHTML = approvalLines[i].name;
		        cell3.innerHTML = approvalLines[i].positionType;
		        cell4.innerHTML = approvalLines[i].department;
		       
		    }       	    	   		    
		    		
			$("#apprListTable #approverRow").html(generateApproverRow());
			$("#apprListTable tr:last").html(generateSignatureRow());
		    
			
			// tbody 요소를 가져옴
			var commentbody = document.querySelector("#commentlist tbody");

			// approvalLines 배열 순회
			approvalLines.forEach(function(data, index) {
			    // comment가 있는 경우에만 처리
			    if (data.comment !== null) {
			        // tr 요소 생성
			        var row = document.createElement("tr");

			        // 각 컬럼에 데이터 추가
			        var columns = ["name", "apprConfirm", "apprDate", "comment"];
			        columns.forEach(function(column) {
			            var cell = document.createElement("td");
			            // 날짜 데이터의 경우 포맷 변경
			            if (column === "apprDate") {
			                var date = data[column] ? new Date(data[column]) : null;
			                if(date){
				                cell.textContent = date.toLocaleDateString("ko-KR", { year: 'numeric', month: '2-digit', day: '2-digit' });
			                }else{
			                	cell.textContent = '';
			                }              	
			                
			            } else if(column === "apprConfirm") {
			            	var confirmType = data[column]
			            	if(confirmType==0){
			            		cell.textContent = ''; 
			            	}else if(confirmType==1 && index ===0){
			            		cell.textContent = '기안';
			            	}else if(confirmType==1){
			            		cell.textContent = '결재';
			            	}else{
			            		cell.textContent = '반려';
			            	}
			            } else {
			                cell.textContent = data[column];
			            }
			            row.appendChild(cell);
			        });

			        // tbody에 행 추가
			        commentbody.appendChild(row);
			    }
			});
			
			
			// 수신자 정보 불러오기
		    
		    var beforeConvertRecvData = ${receiver};
        	function convertRecvData(secondData){
        		return{
        			empIdx: secondData.emp_idx,
        	        name: secondData.receiver,
        	        positionType: secondData.positionType,
        	        department: secondData.dept_name
        		};
        	}
        	
        	receivers = beforeConvertRecvData.map(convertRecvData);
        	console.log(receivers);
       	 	
        	// 가공된 데이터를 테이블에 동적으로 추가
		    var tbody = document.getElementById('receiverTable').getElementsByTagName('tbody')[0];
		    tbody.innerHTML = ""; // 테이블 내용 비우기
	
		    // 새로운 테이블 내용 추가
		    for (var i = receivers.length - 1; i >= 0; i--) {
		        var newRow = tbody.insertRow(-1);		        
		        var cell1 = newRow.insertCell(0);
		        var cell2 = newRow.insertCell(1);
		        var cell3 = newRow.insertCell(2);
	
		        cell1.innerHTML = receivers[i].name;
		        cell2.innerHTML = receivers[i].positionType;
		        cell3.innerHTML = receivers[i].department;		        
		    }
       	 	
		    if (receivers.length > 0) {
           	 // 수신자 이름들을 담을 배열
               var receiverNames = [];

               // 각 수신자의 이름을 배열에 추가
               receivers.forEach(function(recv) {
               	var receiver = recv.name +'('+ recv.department +' '+ recv.positionType +')'; 
               
                   receiverNames.push(receiver);
               });

               // 수신자 이름들을 쉼표로 구분하여 문자열로 변환
               var receiversString = receiverNames.join(', ');

               // 결재양식의 수신자 input 태그에 수신자 이름 넣기
               document.getElementById('inputReceiver').value = receiversString;
           } else {
               document.getElementById('inputReceiver').value = '내부결재';
           }
		    
        	
        	       	
        	switch (apprTypeIdx) {
            case '30':            	
            	apprContent = "${content.apprContent}";              
                break;
                
            case '31':            	
            	var orderIdx = "${content.orderIdx}";  
            	getItemsForOrder(orderIdx); 
            	
                break;
                
            case '32':            	
                var leaveType = "${content.leaveType}";
                var leaveStartDate = "${content.leaveStartDate}";
                var leaveEndDate = "${content.leaveEndDate}";
                var leaveDays = "${content.leaveDays}";
                var leaveReason = "${content.leaveReason}";
                
                $("#leaveType").val(leaveType);
                $("#kt_daterangepicker_1").val(leaveStartDate + ' - ' + leaveEndDate);
                $("#leaveStartDate").val(leaveStartDate);
                $("#leaveEndDate").val(leaveEndDate);
                $("#leaveDays").text(leaveDays);
                $("#leaveReason").val(leaveReason);
                break;
        	}            
        }
        
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
		    	// 결재자의 appr_confirm이 1이면 이름을 표시, 2이면 반려, 그렇지 않으면 빈칸		    	
		        var signatureContent = "";
		        if (approvalLines[i].apprConfirm === '1') {
		            signatureContent = approvalLines[i].name;
		        } else if (approvalLines[i].apprConfirm === '2') {
		            signatureContent = '반려';
		        }else{
		        	signatureContent = "";
		        }
		        rowHtml += "<td>" + signatureContent + "</td>";
		    }
		    return rowHtml;
		}
    }
   	
	
	$(document).ready(function () {    	
    	
		headerOnReady();
		
		var common_idx=${common_idx};
    	console.log("common_idx : "+common_idx);
    	// 초기에 선택된 양식에 대한 HTML 파일 로드
        var formPage = '<%= request.getAttribute("formPage") %>';
        if (formPage) {
            loadFormPage(formPage, common_idx, apprTypeIdx);
        }
		
        // 결재정보 버튼 클릭 시의 동작
        $('#btnApprovalInfo').on('click', function () {
            console.log('결재정보 버튼 클릭');            
            $('#kt_modal_1').modal('show');
        });

        // 출력하기 버튼 클릭 시의 동작
        $('#btnPrintDoc').on('click', function () {
            console.log('임시저장 버튼 클릭');
            window.print();
        });

        // 뒤로가기 버튼 클릭 시의 동작
        $('#btnGoBack').on('click', function () {
        	if (confirm('리스트 페이지로 이동하시겠습니까?')) {
                window.location.href = '/approval/teamapproval';
            } else {
                console.log('뒤로가기 버튼 클릭 - 취소');
            }            
        });
        
        $('#kt_modal_1').on('shown.bs.modal', function(){
			getTreeData();
		});
		
		$('#checkapprinfo').on('click', function(){
			$('.btn[data-bs-dismiss="modal"]').click();
		});

        
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