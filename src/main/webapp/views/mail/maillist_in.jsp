<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kr">
	<!--begin::Head-->
	<base href="../../" />
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
		
		<style>
			.comm-content-body{
				height: 100%;
				padding: auto;
			}
			.img-button{
				border: none;
			}
			.mail-comm{
				display: flex;
				justify-content: space-between;
				margin-right: 30px;
				margin: 5px 40px 30px 40px;
			}
			.comm-head{
				margin: 20px 0px 30px 40px;
			}
			.comm-right{
				display: flex;
			}
		</style>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
		<jsp:include page="/views/common/header.jsp"></jsp:include>
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
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 30px; background-color: #fffff8; margin-left: 30px"> 
						<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
							<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">받은 메일함</h1>
					<!--================================메인 내용들어가는부분================================================-->
						<div class="container flex-column flex-lg-row ">
							<div class="comm-head">
							</div>
							<div class="mail-comm">
								<div class="comm-left">
									<button type="button" class="btn btn-primary span-pay" onclick="newscript()">메일작성</button>
								</div>	
								<div class="comm-right">
									<input type="text" class="form-control" name="searchlist" placeholder="내용을 입력해주세요" style="width: 200px; height: 40px;">
									<button type="button" class="btn btn-primary span-search-button" style="margin-left: 10px;" onclick="searchbutton()">검색</button>
									<!--begin::Actions-->
												<div class="d-flex">
													<!--begin::Delete-->
													<a class="btn btn-sm btn-icon btn-light btn-active-light-primary me-3" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete" onclick="updatedel()">
														<i class="ki-duotone ki-trash fs-1 m-0">
															<span class="path1"></span>
															<span class="path2"></span>
															<span class="path3"></span>
															<span class="path4"></span>
															<span class="path5"></span>
														</i>
													</a>
													<!--end::Delete-->
												</div>
												<!--end::Actions-->
								</div>
							</div>
						</div>
						<div class="container d-flex flex-column flex-lg-row comm-content-body" id="kt_docs_content_container">
							<div class="card card-docs flex-row-fluid mb-2" id="kt_docs_content_card"> 
								<table class="table align-middle table-row-dashed fs-6 gy-5"
										id="kt_datatable_zero_configuration_mail" style="overflow-x: hidden;">
									<thead>
										<tr class="text-start fw-bold fs-7 text-uppercase gs-0 text-center" style=" color: #c6da52;">
											<th class="min-w-30px text-center"><input type="checkbox" onclick="checked()" value="12"/></th>
											<th class="min-w-30px text-center" >NO.</th>
											<th class="min-w-80px text-center" >상태</th>
											<th class="min-w-200px text-center" >제목</th>
											<th class="min-w-130px text-center" >발신자(팀명)</th>
											<th class="min-w-130px text-center" >수신일</th>
										</tr>
									</thead>
									<tbody class="fw-semibold text-gray-600"  id="list">
									
									
									</tbody>
								</table>
							</div>
								
							</div>
						</div>
					</div>
				<!--end::Content--> 
    			</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<!--end::Root-->
								
		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--end::Javascript-->
	</body>
	<script>
	
	    listcall();
	    var checked = false;
	    var table=$("#kt_datatable_zero_configuration_mail");
	    
		
		function searchbutton(){
			
			var keyword = $('input[name="searchlist"]').val();
		
       	$.ajax({
			type:'get',
			url:'mail/home.ajax/search', 
			data:{'keyword':keyword},
			dataType:'JSON',
			success:function(data){
				console.log(data);
				console.log("리스트 호출 뿌려주기");	
	        	 drawList(data); 
	        },
	        error: function (e) {
	            console.log(e);
	        }
	    });
		}//
	
		function listcall(page){
			console.log("리스트 호출");
			$.ajax({
				type:'get',
				url:'mail/home.ajax/list', 
				data:{},
				dataType:'JSON',
				success:function(data){
					console.log(data);
					console.log("리스트 호출 뿌려주기");
					
					drawList(data);		
					
				},
				error:function(e){
					console.log(e);
				}
				});//	
		}
		
		function newscript(){
			console.log("메일작성하는 페이지 이동");
			location.href='mail/write';
		}
		
		
		
		
	function drawList(obj){
		console.log(obj);
		var pageState = 'RM';
		var content ='';
		
		 $('#list').empty();
			 
		if (obj.size <= 0) {			
			 content = '<tr>';				 
			 content += '<td style="text-align: center; color: red;" colspan="7"> 받은메일이 없습니다 . </td>';
			 content += '</tr>';		
			 $('#list').append(content);
		}else {
		for (var i = 0; i < obj.size; i++) {
			 	content = '<tr>';
			 	content += '<th class="min-w-30px text-center"><input type="checkbox" name="mailidx" value="'+obj.list[i].mailnum+'" /></th>';
			 	content += '<th class="min-w-30px text-center">'+i+'</th>';
			 	if(obj.list[i].mail_read == 'N'){
			 		content += '<th class="min-w-80px text-center" >NEW</th>';
				 } else {
					 content += '<th class="min-w-80px text-center" >read</th>'; 
				}
			 	content += '<th class="min-w-200px text-center" ><a href="mail/detail?idx='+obj.list[i].mailnum+'&&pageState='+pageState+'" class="text-gray-800 text-hover-primary mb-1">'+obj.list[i].mail_subject+'</a></th>';
			 	content += '<th class="min-w-130px text-center" >'+obj.list[i].personname+'</th>';
			 	var date = new Date(obj.list[i].mail_create_date);
				 var dateStr = date.toLocaleDateString("ko-KR");
			 	content += '<th class="min-w-130px text-center" >'+dateStr+'</th>';
			 	
			 	content += '</tr>';
				
				$('#list').append(content);
		};
		};
		    
		if (obj.size > 0) {
			
		table.DataTable( {"ordering": false, "info": false, "destroy": true, "pageLength": 10 , "lengthChange": false } );
		}
	}
	
	function updatedel(){
		
		console.log("메일 휴지통으로 보내기");
		
		var pageState = 'RM';
		var selecteidx = [];
		var checkboxes = document.querySelectorAll('input[name="mailidx"]:checked');
		console.log("선택된 idx"+checkboxes);
		
         $("input[name='mailidx']:checked").each(function() {
             var checkVal = $(this).val();
             console.log(checkVal);
             selecteidx.push(checkVal);
             
             $.ajax({
 				type:'get',
 				url:'mail/home.ajax/update', 
 				data:{'selecteidx':checkVal},
 				dataType:'JSON',
 				success:function(data){
 					console.log(data);
 					console.log("업데이트 성공");
 				},
 				error:function(e){
 					console.log(e);
 				}
 				});//	
         });
         
         
                
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	</script>
	<!--end::Body-->
</html>