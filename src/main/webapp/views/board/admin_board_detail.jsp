<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
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
				<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
				<!--begin::Fonts(mandatory for all pages)-->
				<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
				<!--end::Fonts-->
				<!--begin::Vendor Stylesheets(used for this page only)-->
				<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
				<!--end::Vendor Stylesheets-->
				<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
				<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
				<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
				<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css"/>
				
				
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
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 30px; background-color: #fffff8; margin-left: 30px"> 
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
					<!--================================메인 내용들어가는부분================================================-->
						<div style="margin-top: 100px; margin-left: 50px;">
							<h1>${board.notice_subject}</h1>
							!!!!! ${board.notice_idx} !!!!!
						</div>
						
						<div class="text-end">
							<button type="button" onclick="save()" style="background-color: #C6DA52; position: absolute; width:70px; height: 40px; top:200px; right:200px; font-size: 10px; color: #FFFFFF; border: #C6DA52;">
    							목록으로
							</button>
						</div>
						<div style="text-align: left; margin-top: 100px; margin-left: 50px;">
						<p>
						<i class="ki-duotone ki-user fs-2">
							<span class="path1"></span>
							<span class="path2"></span>
						</i> 
						<i>${board.emp_name}</i>
						<i>${board.reg_date}</i>
						<div class="form-check" style="margin-left: 640px;">
    						<input class="form-check-input" type="checkbox" name="top_fixed" id="flexCheckDefault" value="Y"/>
    						<label class="form-check-label" for="flexCheckDefault">
        						상단 고정 여부
    						</label>
						</div>
						</p>
						<div style="text-align: right; margin-top: -48px; margin-right: 380px;">
    
						<!-- <button type="button" class="btn btn-light">
						<i class="ki-duotone ki-basket fs-2 text-gray-600">
        					<span class="path1"></span>
      						<span class="path2"></span>
        					<span class="path3"></span>
        					<span class="path4"></span>
    					</i> -->
						<button class="btn btn-primary"  data-kt-element="send" onclick="adboardDel()">삭제하기</button>
    					
	
						<!-- </button> -->

						<div style="width: 800px; height: 1000px; overflow: auto; border: solid lightgrey; text-align: center;">
							<c:forEach items="${newFileList}" var="files">
								<img src="/ustore/photo/${files.newfilename}" alt="${files.newfilename}" style="margin: 10px; height: 50%"/>
							</c:forEach>
								
    						<p style="text-align: left;width: 100%;">${board.notice_content}</p>
						</div>
						<div style="text-align: left;">조회수 : ${board.notice_hit}</div>
						<div style="margin-right:150px;">
						<c:forEach items="${file}" var="file">
						<p>file : ${file.orifilname}
						<button type="button" onclick="location.href='download.do?file=${file.newfilename}'" style="background-color: #C6DA52; position: absolute; width:60px; height: 20px; font-size: 10px; color: #FFFFFF; border: #C6DA52;">
    						다운로드
    					</button>
    					</p>
    					</c:forEach>
    					</div>

						<hr color="black" width="100%">



					</div>
					</div>
				<!--end::Content--> 
    			</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
								
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
	/* photoCall(); */
	
	console.log("글 번호 호출");
	var notice_idx = ${board.notice_idx};
	console.log("번호값 : " + notice_idx);
	
	
	/* $(function(){headerOnReady()}) */
	
	/* function photoCall(){
		console.log("공지사항 이미지 호출");
		$.ajax({
			type:'GET',
			data:{'notice_idx':notice_idx},
			url:'board/photo.ajax',
			dataType:'JSON',
			success:function(data){
				let photo = data.photo
				let img = "/ustore/photo/"+photo;
				
				console.log('공지사항이미지');
				console.log("img값 : + "img);
				
				drawlist(data.list);
				console.log("성공 : " + data.list);

			},error:function(error){
				console.log("발생 : " + error);
			}
			
		});
	}
	
	function drawlist(img){
		console.log("drawlist : " + img);
		var content = '';
		
	} */
	
	
	/* console.log("공지사항이미지불러오기!!:" + photoCall); */
	
	/* function drawlist(list){
		console.log("drawlist:" + list);
		var content='';
		
		list.forEach(function (item, new_file_name) {
			content += '<div>'
			content += '<img src="''"/>'
			
		});
	} */
	
	/* $(function(){
		
		$.ajax({
			type:'GET',
			data:{'notice_idx':notice_idx},
			url:'board/photo.ajax',
			dataType:'JSON',
			success:function(data){
				console.log('공지사항이미지');
				let photo = data.photo
				let img = "/ustore/photo/"+photo;
				$('.board-photo').prop("src", img)
			},error:function(error){
				console.log(error);
			}
			
		});
	}) */
	
	
	function adboardDel(){
		console.log("글 삭제");
		location.href='adboard/delete.ajax?notice_idx='+notice_idx;
	}
	
	
	
	function save() {
    	console.log ("topfixsave start");
        var topfix = "";
        
        $('input:checkbox[name=top_fixed]').each(function() {
            if ($(this).is(':checked')) {
                topfix="Y";
            } else {
                topfix="N";
            }
        });
        
        console.log("topfix : " + topfix);
        console.log("notice_idx : " + notice_idx);
    		$.ajax({
    			type:'post',
    			url:'adboard/update.ajax',
    			data:{'notice_idx':notice_idx,'top_fixed':topfix},
    			dataType:'JSON',
    			success:function(data){			
    				console.log("success data : " + data);
    				location.href='/adboard/list';
    			},
    			error:function(e){
    				console.log("error : " + e);
    				location.href='/adboard/list';
    			}	
    		});		
    			
		};

		
	
	</script>
	
	
</html>