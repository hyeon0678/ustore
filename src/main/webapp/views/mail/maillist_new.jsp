<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="kr">
<!--begin::Head-->
<base href="../../" />
<head>
	<title>UStore</title>
	<meta charset="utf-8" />
	<meta name="description"
		content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
	<meta name="keywords"
		content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="canonical" href="https://preview.keenthemes.com/craft" />
	<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
	<!--begin::Fonts(mandatory for all pages)-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
	<!--end::Fonts-->
	<!--begin::Vendor Stylesheets(used for this page only)-->
	<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css" rel="stylesheet" type="text/css" />
	<link href="resource/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
	<link href="resource/assets/plugins/custom/jstree/jstree.bundle.css" rel="stylesheet" type="text/css" />

	<!--end::Vendor Stylesheets-->
	<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
	<link href="resource/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />

	<link href="" rel="stylesheet" type="text/css" />
	<link href="resource/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
	<!--end::Global Stylesheets Bundle-->
	<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
	
	<script src="resource/assets/plugins/custom/ckeditor/ckeditor-classic.bundle.js"></script>

	<style>
		.ck-editor__editable { height: 400px; }
  		.ck-content { font-size: 12px; }
		
		.comm-content-body {
			height: 100%;
			padding: auto;
		}

		.img-button {
			border: none;
		}

		.mail-comm {
			display: flex;
			justify-content: space-between;
			margin-right: 30px;
			margin: 5px 40px 30px 40px;
		}

		.comm-head {
			margin: 20px 0px 30px 40px;
		}

		.comm-right {
			display: flex;
		}

		.mail-elem-lable {
			width: 80px;
		}

		.mail-elem {
			display: flex;
		}
		
		.upload_li{
			display:flex;
		}
		
		input[type=file]::file-selector-button {
			  width: 80px;
			  height: 30px;
			  background: #C6DA52;
			  border-radius: 10px;
			  color: white;
			  cursor: pointer;
			  border:none;
			  &:hover {
			    background: white;
			    color: #C6DA52;
			  }
			}
	</style>
</head>
<!--end::Head-->
<!--begin::Body-->

<body id="kt_body"
	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	<!--begin::Theme mode setup on page load-->
	<script>var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
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
						<h1 class="text-gray-900 fw-bold my-1 fs-2" style="margin-left: 50px;">메일 작성</h1>
					<!--================================메인 내용들어가는부분================================================-->
					
					<div class="container flex-column flex-lg-row ">
						<div class="comm-head">
						</div>
						<div class="mail-comm">
							<div class="comm-left">
							</div>
							<div class="comm-right">
								<button type="submit" class="btn btn-primary span-search-button" onclick="savemail()"
									style="margin-left: 10px;">메일 보내기</button>
							</div>
						</div>
					</div>
					<div class="container d-flex flex-column flex-lg-row comm-content-body"
						id="kt_docs_content_container">
						<div class="card card-docs  flex-row-fluid mb-2" id="kt_docs_content_card"
							style="margin-right: 5px; width: 26%; padding-left: 10px;">
							<div style="display: flex; align-items: center; margin-top: 30px;" >
								<input type="text" class="form-control form-control-solid" id="empName"
									placeholder="이름을 입력하세요"
									style="width: 180px; height: 30px;" />
								<button class="" onclick="empSearch()"
										style="margin:0px 5px; cursor: pointer; border-radius: 5px; background-color: #C6DA52; color: white; border: none; width:50px; " >검색</button>
							</div>
							<!-- js트리 그리는 곳-->							
								<div class="content_tree"
									style="float: left; width: 300px; height: 450px; overflow-y: auto; margin-top: 50px;">
									<div id="make_room_jstree"></div>
								</div>							
							<!-- js트리 끝나는 곳-->
						</div>
							<!--begin::Card-->
							<div class="card" style="width: 76%;">
								<div class="card-body p-0">
									<!--begin::Form-->
									<form id="kt_inbox_compose_form">
										<!--begin::Body-->
										<div class="d-block">
											<!--begin::To-->
											<div class="d-flex align-items-center border-bottom px-8 min-h-50px">
												<!--begin::Label-->
												<div class="text-dark fw-bold w-500px" id="make_room_enter_emp"  style="display: flex; align-items: center;">
													To: 
												</div>
												<!--end::Label-->
												​
												<!--end::CC & BCC buttons-->
											</div>
											<!--end::To-->
											<!--begin::Subject-->
											<div class="border-bottom">
												<input
													class="form-control form-control-transparent border-0 px-8 min-h-45px" id="subject"
													name="compose_subject" placeholder="제목을 입력해주세요.">
											</div>
											<!--end::Subject-->

											<!--begin::Message-->
											<div id="kt_docs_ckeditor_classic">
													<textarea name="text" id="editor"  style="height: 800px;"></textarea>
													
											</div>
											<!--end::Message-->
										</div>
										<!--end::Body-->
										
										<div class="d-flex flex-stack flex-wrap gap-2 py-5 ps-8 pe-5 border-top">
											<div class="d-flex align-items-center me-3" >
												<!-- <input type="file" name="file"  id="upload_btn"  multiple="multiple"  onchange="filechange()"/> -->
											</div>											
										</div>
										
										<div class="px-15 px-10">
												<ul class="upload_ul">													
												</ul>	
										</div>
									</form>
								</div>
							</div>
							<!--end::Card-->

					</div>
					
				</div>
				<!--end::Content-->
			</div>
			<!--end::Wrapper-->
		</div>
		</div>
		<!--end::Page-->

		<!--end::Root-->

		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!-- 에디터 스크립트 -->
		<script src="resource/assets/plugins/custom/jstree/jstree.bundle.js"></script>
		<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
		<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
</body>
<script type="text/javascript">
			jstreelistcall();



			let makeRoomParticipantList = [];
			let departmentData = [];
			let treeEmpData = [];
			let saveempnum = [];
			let fileList = [];
			var formData = new FormData();			
			var empnum = new Array();
			var filename = new Array();

			function fileDeleteClick(){
				   $('.upload_cancel').on('click', function() {
				      console.log('upload_cancel');
				        var index = $(this).next().html();
				        console.log(index);
				        fileList.splice(index, 1);
				        var reIndex = $(this).closest('.upload_li').nextAll();
				        if(reIndex.length > 0){
				            for(var elem of reIndex){
				                console.log(elem);
				                let index = elem.lastChild.innerHTML;
				                elem.lastChild.innerHTML = index-1;
				            }
				        }
				        
				        $(this).closest('.upload_li').remove();
				        console.log(fileList);
				     });
				}

				$('#upload_btn').change(function() {
					//this.value = ''; 
				   content = '';  
				   if(fileList.length == 3){
				        alert('파일첨부는 4개까지 가능합니다');
				        return false;
				    }
				   
				    var files = this.files;
				    for(var i = 0; i < files.length; i++) {
				        var file = files[i];
				        fileList.push(file);
				        filename.push(file.name);
				        content+='<li class="upload_li"><div>'
				        content+= file.name
				        content+='</div><div class="upload_cancel badge badge-light fs-8">x</div>'
				        content+='<p style="display:none">'
				        if(fileList.length > 0){
				           content+= fileList.length-1+'</p></li>'    
				        }else{
				           content+= 0+'</p></li>'           
				        }
				     }
				     $('.upload_ul').append(content);
				     console.log(content);
				    //this.value = ''; 
				    fileDeleteClick();
				});
			
				// editor.setData('<p>example</p>');

			function savemail(){
				/*
				var formData = new FormData();
				var inputFile = $("input[name='file']");
				var files = inputFile[0].files;
				console.log(files);
				for(var i =0;i<files.length;i++){
					formData.append("uploadFile", files[i]);
				}
				*/
				
				console.log("메일 보내기");
				//console.log(saveempnum);
				console.log("empnum : "+empnum);
				// formData.append( "upload_btn", $("#upload_btn")[0].files[0] );
				formData.append('saveempnum',empnum);
				formData.append('subject',$("#subject").val());
				formData.append('content',content);
				console.log(formData);
				 var content = editor.getData();
				 console.log(content);
				$.ajax({
					url:'mail/new.ajax/save',
					method:'post',
					data:{	
						//formData
						'saveempnum':empnum,
						// 'filename':filename,
						'subject':$("#subject").val(),
						'content':content
						//'formData':JSON.stringify(formData)
						},
					dataType:'JSON',
					success:function(data){
						console.log("메일 저장 들어가기"+data);						
					},error: function(error){
						console.log(error);
					}
				})//
				 location.href='mail/out';	
			}
			
			
			
			
			
			function jstreelistcall(){
				console.log("js트리 그려주기 들어감");				
				$.ajax({
					url:'/organizationChart.ajax',
					method:'GET',
					dataType:'JSON',
					success:function(data){
						console.log("데이터 들어가기"+data);
						jsTreeData = data.treeData;
						for(let jtData of data.treeData){
							if(jtData.type == 'department'){
								departmentData.push(jtData);
							    
							}else{
								treeEmpData.push(jtData)
							}
							
						}
						console.log(treeEmpData)
						makeRoomJsTree(data.treeData);
					},error: function(error){
						console.log(error);
					}
				})
				
				
			}
			
			
			
			
			// jsTree를 그려준다
			function makeRoomJsTree(treeData){
			   console.log("makeRoom"+treeData);
			   $('#make_room_jstree').jstree('destroy');
			   $('#make_room_jstree').jstree({
			      "core" : {
			         "data" : treeData,
			         "themes" : {
			               "responsive": true
			            }

			      },"Disable" : {
			            "label" : "Disable",
			            "action" : function(obj) {
			               $("#make_room_jstree").jstree("disable_node", username);
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
			      },
			   );
			   
			}
			
			function empSearch() {
				console.log("검색");
				$('#make_room_jstree').jstree(true).search($('#empName').val());
			}

			
			
			// 참여자 리스트에서 클릭한 사람 삭제
			
			   $('div.participaint_emp').on('click', function() {
			      $(this).remove();
			      let removeId = $(this).children('a').html();
			      let index = findEmp(removeId);
			      makeRoomParticipantList.splice(index);
			   });
			
			
			// js트리를 더블클릭했을 때 일어나는 이벤트 함수
			//function treeDbClick() {}
				
				//var nodede = $('#make_room_jstree').jstree(true).get_selected(true)[0];
				
			   $('#make_room_jstree').bind(
			         "dblclick.jstree",
			         function(e, data) {
			            var selectedNode = e.target;
			            console.log(selectedNode);
			            
			
					//더블클릭에 대한 함수 안에 아래와 같이 넣기
					if(selectedNode.type != 'department'){
					               // 직원 수신자란에 추가하는 코드  
					
			            let id = e.target.id;
			            let index = id.indexOf('_')
			            console.log(id)
			            id = id.substr(0, index)
			            console.log(findEmp(id));
			            if (findEmp(id) < 0) {
			               let participant = {}
			               participant.empIdx = id;
			               participant.name = selectedNode.text;
			               makeRoomParticipantList.push(participant);
			               empnum.push(id);
			               formData.append('saveempnum', id);
			               content = "<div class='participaint_emp' style='width: 150px;'>"
			                     + selectedNode.text
			                     + "<input style='visibility:hidden' name='empnum' value='"+id+"'/>"
			                     + "</div>"
			               $('#selectedNodeInput').val("선택된 노드 :" + selectedNode);
			               $('#make_room_enter_emp').append(content);
			               console.log("직원 추가 : "+id);
			               participantClick();
			            }
			            }else{
			               alert('부서는 추가할 수 없습니다.');
			            }
			            
			         });
			
			
			// 채팅방 참여자 리스트에 클릭한 사람이 있는지 확인
			function findEmp(empIdx) {
			   for (let i = 0; i < makeRoomParticipantList.length; i++) {
			      if (makeRoomParticipantList[i].empIdx == empIdx) {
			         return i
			      }
			   }
			   return -1;
			}
			
			function filechange(event) {
				console.log($('#file').val());
				$('#upload_btn').value='';
				//this.value = ''; 
				$('.upload_ul').empty();
				fileList = [];
			}
			
			
			
			
			
			
			
			
</script>


<script>

		



	var ajax = true;

	ClassicEditor
		.create(document.querySelector('#editor'), {language: "ko"})
		 .then( newEditor => {
		    editor = newEditor;
		  } )
		  .catch( error => {
		    console.error( error );
		  } );
</script>
<!--end::Body-->

</html>