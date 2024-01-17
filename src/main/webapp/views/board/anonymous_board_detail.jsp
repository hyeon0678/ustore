<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
	<!--begin::Head-->
	<head>
		<base href="../../../" />
				<title>UStore</title>
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
				<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
				<!--begin::Fonts(mandatory for all pages)-->
				<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
				<!--end::Fonts-->
				<!--begin::Vendor Stylesheets(used for this page only)-->
				<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
				<!--end::Vendor Stylesheets-->
				<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
				<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
				<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css"/>
				<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
				
				<!--end::Global Stylesheets Bundle-->
				<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
				<style>
					
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
				.chart-div{
				display: flex;
				height: 500px;
				margin-bottom: 20px;	
			}
			.chart-body-div{
				width: 45%;
				margin: 10px 20px;
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
		<jsp:include page="/views/common/header.jsp"></jsp:include>
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid">
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 30px; background-color: #fffff8; margin: 50px"> 
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
					<!--================================메인 내용들어가는부분================================================-->
											
						<div class="text" style="text-align: end;">
							<sec:authorize access="hasAnyRole('ROLE_인사팀', 'ROLE_점장')">
								<button class="btn btn-primary" data-kt-element="send" onclick="anboardDel()" style="right: 30px; white-space:nowrap;">삭제하기</button>
							</sec:authorize>
							
							<button type="button" onclick="location.href='/anboard/list'" class="btn btn-primary" style="white-space:nowrap;">목록으로</button>
							
							
						</div>
						
						
						<div class="card" style="text-align: left; margin: 50px;">
						
						
						<div class="card-header" style="margin: 10px; align-items: center;">
							<h1>${board.anony_subject}</h1>
						</div>
						
						
						<p style="margin: 10px;">
						<i class="ki-duotone ki-user fs-2">
							<span class="path1"></span>
							<span class="path2"></span>
						</i>
						${board.reg_date}
						</p>
						
						<div class="card-body" style="text-align: right;">
							
							<div style="width: 90%; text-align: start; margin-top: 20px; margin-bottom: 30px;">
								<c:forEach items="${newFileList}" var="files">
									<img src="/ustore/photo/${files.newfilename}" alt="${files.newfilename}" style="margin: 10px; width: 100%"/>
								</c:forEach>
    							${board.anony_content}
							</div>
							
							<div style="text-align: left;">
								<i class="ki-duotone ki-message-text-2 fs-2">
									<span class="path1"></span>
									<span class="path2"></span>
									<span class="path3"></span>
								</i>조회수 : ${board.anony_hit}
							</div>
						</div>
							
							
								<div class="card-footer">
									
									<input type="text" class="form-control" style="width: 90%;height:50px;float: left;" id="reply" placeholder="댓글을 입력 해주세요."/>
									
									<div style="text-align: end;">
										<button type="button" id="getreply" class="btn btn-primary" style="white-space:nowrap;">
    										작성
										</button>
									</div>
								<table style="width: 100%;">
								
									<tbody id = "list">
		
									</tbody>
								
							</table>
							
					<!-- </div> -->
					
				<!--end::Content--> 
    			</div>
				<!--end::Wrapper-->
			</div>
			</div>
			</div>
			</div>
			</div>
			<!--end::Page-->
		<!--end::Root-->
								
		<!--begin::Javascript-->
		<script>var hostUrl = "/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Vendors Javascript(used for this page only)-->
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--begin::Custom Javascript(used for this page only)-->
		<script src="resource/assets/js/custom/apps/ecommerce/catalog/categories.js"></script>
		<script src="resource/assets/js/widgets.bundle.js"></script>
		<script src="resource/assets/js/custom/widgets.js"></script>
		<script src="resource/assets/js/custom/apps/chat/chat.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/type.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/budget.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/settings.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/team.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/targets.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/files.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/complete.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/create-project/main.js"></script>
		<script src="resource/assets/js/custom/utilities/modals/users-search.js"></script>
		<script>$("#kt_daterangepicker_1").daterangepicker();</script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	
	<script>
	console.log("글 삭제하기");
	var anony_idx = ${board.anony_idx};
	console.log("삭제 글 아이디 : " + anony_idx);
	listCall();
	
	$(function(){headerOnReady()})
	
	function anboardDel(){
		Swal.fire({
		 text: '정말 삭제 하시겠습니까?',
	        icon: 'warning',
	        showCancelButton: true,
	        confirmButtonText: '확인',
	        cancelButtonText: '취소',
	        customClass: {
	            confirmButton: 'btn btn-danger',
	            cancelButton: 'btn btn-light'
	        }
	    }).then((result) => {
	        if (result.isConfirmed) {
				location.href='anboard/delete.ajax?anony_idx='+anony_idx;
	        }
	    });
	}
	
	$("#getreply").on("click", function(){
		reply = $("#reply").val();
		console.log($("#reply").val());
		location.href="anboard/reply?anony_board_idx=" + anony_idx + '&repl_content=' + reply;
		

	});
	
	function listCall() {
		
		$.ajax({
			type:'get',
			url:'anboard/replyList',
			data:{"anony_board_idx": anony_idx},
			dataType:'JSON',
			success:function(data){//data안들어옴
				console.log("data들어오나? : "+data);
				
				drawlist(data.list);	
				
			},
			eorror:function(e){
				console.log(e);
				
			}
		});
	}
	
	function drawlist(list){
		
		console.log("drawlist : " + list);
		var content='';

		list.forEach(function(item,repl_idx){
			content += '<tr>';
			content += '<td style="width:80%;">'+item.repl_content+'</td>';
			content += '<td style="text-align: end; white-space:nowrap;">'+item.reg_date+'</td>';
			content += '<td>'+'<sec:authorize access="hasAnyRole('ROLE_인사팀', 'ROLE_점장')">'+'<div style="text-align: end;">'+'<button id="d" class="btn btn-primary" style="padding:5px; white-space:nowrap;" onclick='+"'location.href="+'"anboard/replyDel?anony_board_idx='+item.anony_board_idx+'&repl_idx='+item.repl_idx+'"'+"'>"+'삭제하기'+'</button>'+'</div>'+'</sec:authorize>'+'</td>';
			content += '</tr>';
			
			console.log(content);
		});
		$('#list').empty();
		$('#list').append(content);
	}
	</script>
	
</html>