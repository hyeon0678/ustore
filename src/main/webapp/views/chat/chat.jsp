<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<base href="../../" />
<head>
<title>USstore</title>
<meta charset="utf-8" />
<meta name="description"
	content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
<meta name="keywords"
	content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="canonical" href="https://preview.keenthemes.com/craft" />
<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
<!-- jstree 링크  -->
<link href="resource/assets/plugins/custom/jstree/jstree.bundle.css"
	rel="stylesheet" type="text/css" />
<!--begin::Fonts(mandatory for all pages)-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
<link href="resource/assets/plugins/custom/leaflet/leaflet.bundle.css"
	rel="stylesheet" type="text/css" />
<link
	href="resource/assets/plugins/custom/datatables/datatables.bundle.css"
	rel="stylesheet" type="text/css" />
<link href="resource/assets/plugins/global/plugins.bundle.css"
	rel="stylesheet" type="text/css" />
<link href="resource/assets/css/style.bundle.css" rel="stylesheet"
	type="text/css" />
<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
<style>
.chat_modal_body {
	display: flex;
	padding: 10px;
}
.participaint_emp{
	cursor: pointer;
	hover
}
.participaint_emp:hover{
	color: #C6DA52;
}
</style>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body"
	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
	<!--begin::Theme mode setup on page load-->
	<script>
		var defaultThemeMode = "light";
		var themeMode;
		if (document.documentElement) {
			if (document.documentElement.hasAttribute("data-bs-theme-mode")) {
				themeMode = document.documentElement
						.getAttribute("data-bs-theme-mode");
			} else {
				if (localStorage.getItem("data-bs-theme") !== null) {
					themeMode = localStorage.getItem("data-bs-theme");
				} else {
					themeMode = defaultThemeMode;
				}
			}
			if (themeMode === "system") {
				themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark"
						: "light";
			}
			document.documentElement.setAttribute("data-bs-theme", themeMode);
		}
	</script>
	<jsp:include page="/views/common/header.jsp"></jsp:include>
	<!--end::Theme mode setup on page load-->
	<!--begin::Main-->
	<!--begin::Root-->
	<div class="d-flex flex-column flex-root">
		<!--begin::Page-->
		<div class="page d-flex flex-row flex-column-fluid"
			style="background-color: white;">
			<!--begin::Wrapper-->
			<div class="wrapper d-flex flex-column flex-row-fluid"
				id="kt_wrapper">
			<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
				<!--================================메인 내용들어가는부분================================================-->
				<!--begin::Content-->
				<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 30px; background-color: #fffff8; margin-left: 30px"
					id="kt_content"
					style="margin-top: 10px; background-color: #fffff8;">
					<!--<h1 class="text-gray-900 fw-bold my-1 fs-2">채팅</h1>-->
					<!--begin::Toolbar-->
					<div class="toolbar" id="kt_toolbar">
						<div class=""
							style="display: flex; margin-left: 40px; margin-bottom: 5px;">
							<!--begin::Info-->
							<div
								class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2"
								style="margin-top: 10px;">
							</div>
							<div
								class="d-flex align-items-center flex-nowrap text-nowrap py-1">
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#kt_modal_1"
									id="make_room_btn">방만들기</button>
								<div class="modal fade" tabindex="-1" id="kt_modal_1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<div style="display: flex; align-items: center;">
													<input type="text" class="form-control form-control-solid" id="search-input"
														placeholder="이름을 입력하세요"
														style="width: 200px; height: 30px;" />
													<button type="button" class="btn btn-primary"
														style="margin: 5px;" onclick="empSearch()">검색</button>
														
												</div>
												<div
													class="btn btn-icon btn-sm btn-active-light-primary ms-2"
													data-bs-dismiss="modal" aria-label="Close">
													<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span
														class="path2"></span></i>
												</div>
											</div>
											<div class="chat_modal_body">
												<div class="content_tree"
													style="float: left; width: 280px; height: 400px; overflow-y: auto;">
													<div id="make_room_jstree"></div>
												</div>
												<div class="content_tree" id="make_room_enter_emp"
													style="float: left; width: 280px; height: 400px; border: 1px solid #c6da52; border-radius: 5px; overflow-y: auto;">
												</div>
											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													data-bs-dismiss="modal" id="make_room">채팅방 생성</button>
											</div>
										</div>
									</div>
								</div>
								<!--end::Actions-->
							</div>
						</div>
						<!--end::Toolbar-->
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl">
								<!--begin::Layout-->
								<div class="d-flex flex-column flex-lg-row">
									<!--begin::Sidebar-->
									<div
										class="flex-column flex-lg-row-auto w-100 w-lg-300px w-xl-400px mb-10 mb-lg-0">
										<!--begin::Contacts-->
										<div class="card card-flush">
											<!--begin::Card body-->
											<div class="card-body pt-5" id="kt_chat_contacts_body"
												style="height: 700px; overflow-y: auto;">
												<!--begin::List-->
												<div class="scroll-y me-n5 pe-5 h-700px "
													id = "chat_list_div"
													data-kt-scroll="true"
													data-kt-scroll-activate="{default: false, lg: true}"
													data-kt-scroll-max-height="500px"
													data-kt-scroll-dependencies="#kt_header, #kt_app_header, #kt_toolbar, #kt_app_toolbar, #kt_footer, #kt_app_footer, #kt_chat_contacts_header"
													data-kt-scroll-wrappers="#kt_content, #kt_app_content, #kt_chat_contacts_body"
													data-kt-scroll-offset="5px">
												</div>
												<!--end::List-->
											</div>
											<!--end::Card body-->
										</div>
										<!--end::Contacts-->
									</div>
									<!--end::Sidebar-->
									<!--begin::Content-->
									<div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
										<!--begin::Messenger-->
										<div class="card" id="kt_chat_messenger">
											<!--begin::Card header-->
											<div class="" id="kt_chat_messenger_header"
												style="display: flex; height: 50px; border-bottom: 1px solid #99A1B7; justify-content: space-between; align-items: center;">
												<!--begin::Card toolbar-->
												<div style="margin-left: 20px; margin-top: 10px;">
													<h3 class="chat-room-name"></h3>
												</div>
												<div class="chat-msg-tool-bar"
													style="display: none; align-items: center; width: 120px; justify-content: space-around; margin-right: 20px;">
													<div class="card-toolbar">
														<!-- ===============================체팅 참가인원 확인 아이콘======================================== -->
														<!--begin::Menu-->
														<div class="me-n3" style="margin: 10px;">
															<button class="btn btn-sm btn-icon participants-btn"
																data-kt-menu-trigger="click"
																data-kt-menu-placement="bottom-end">
																<!--begin::Svg Icon | path: /var/www/preview.keenthemes.com/keenthemes/craft/docs/core/html/src/media/icons/duotune/abstract/abs015.svg-->
																<span class="ki-duotone ki-dots-square fs-2"><img src="resource/assets/media/icon/abs015.svg"/></span>
																<!--end::Svg Icon-->

															</button>
															<!--begin::Menu 3-->
															<div
																class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px py-3"
																data-kt-menu="true">
																<!--begin::Heading-->
																<div class="menu-item px-3">
																	<div
																		class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">참여한
																		인원들</div>
																</div>
																<!--end::Heading-->
																<!--begin::Menu item-->
																<div id="participatns"
																	style="height: 150px; overflow-y: auto; border: 1px solid #c6da52;">
																	
																</div>
																<!--end::Menu item-->
															</div>
															<!--end::Menu 3-->
														</div>
														<!--end::Menu-->
													</div>
													<!--end::Card toolbar-->
													<div class="card-toolbar">
														<!-- ===============================체팅 나가기 아이콘======================================== -->
														<!--begin::Menu-->
														<div class="me-n3">
															<button class="btn btn-sm btn-icon quit-room"
																data-kt-menu-trigger="click"
																data-kt-menu-placement="bottom-end"
																style="margin-right: 30px; padding: 10px;">
																<!--begin::Svg Icon | path: /var/www/preview.keenthemes.com/keenthemes/craft/docs/core/html/src/media/icons/duotune/arrows/arr076.svg-->
																<span class="ki-duotone ki-dots-square fs-2"><img src="resource/assets/media/icon/arr096.svg"/></span>
																<!--end::Svg Icon-->
															</button>
														</div>
														<!--end::Menu-->
													</div>
													<!--end::Card toolbar-->
												</div>
											</div>
											<!--end::Card header-->
											<!-- =============================체팅의 내용 바디============================================================ -->
											<!--begin::Card body-->
											<div class="card-body" id="chat_messenger_body"
												style="height: 500px;">
												<!-- ========================상대방 메세지 예시=============================================================== -->
												<!--begin::Messages-->
												<div class="scroll-y me-n5 pe-5 h-300px h-lg-auto" id="msg-content"
													data-kt-element="messages" data-kt-scroll="true"
													data-kt-scroll-activate="{default: false, lg: true}"
													data-kt-scroll-max-height="450px"
													data-kt-scroll-dependencies="#kt_header, #kt_app_header, #kt_app_toolbar, #kt_toolbar, #kt_footer, #kt_app_footer, #kt_chat_messenger_header, #kt_chat_messenger_footer"
													data-kt-scroll-wrappers="#kt_content, #kt_app_content, #kt_chat_messenger_body"
													data-kt-scroll-offset="5px">
													
												</div>
												<!--end::Messages-->
											</div>
											<!--end::Card body-->
											<!--begin::Card footer-->
											<div class="card-footer pt-4" id="kt_chat_messenger_footer">
												<!--begin::Input-->
												<textarea class="form-control form-control-flush mb-3" id="msg-box"
													rows="1" data-kt-element="input" placeholder="메세지를 입력해주세요."
													style="height: 50px; resize: none;" maxlength="200"></textarea>
												<!--end::Input-->
												<!--begin:Toolbar-->
												<div class="d-flex flex-stack">
													<!--begin::Actions-->
													<div class="d-flex align-items-center me-2"></div>
													<!--end::Actions-->
													<!--begin::Send-->
													<button class="btn btn-primary" type="button" id="send-msg">Send</button>
													<!--end::Send-->
												</div>
												<!--end::Toolbar-->
											</div>
											<!--end::Card footer-->
										</div>
										<!--end::Messenger-->
									</div>
									<!--end::Content-->
								</div>
								<!--end::Layout-->
								<!--end::Modals-->
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
					</div>
					<!--end::Content-->

				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
		</sec:authorize>
		<script>
			var hostUrl = "assets/";
		</script>
   	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
   	<script src="resource/assets/plugins/custom/jstree/jstree.bundle.js"></script>
</body>
<script>

	let makeRoomParticipantList = [];
	let chatParticipantList = [];
	callChatRoomList();
	let username = '${principal.username}'
	let empName = '${principal.name}'+'('+'${principal.department}'+'${principal.position}'+')'
	let roomNum = '';
    let subscription = null;
    let jsTreeData = [];
    let departmentData = [];
    let searchTreeData = [];
    let treeEmpData = [];
    //let socket = null;
    //let stompClient = null;
    let clickCnt = 0;
    // 
	$(document).ready(function(){
		
		headerOnReady()
		console.log("socket connection");
		getCurrentTime()
		$('#send-msg').prop('disabled', true);
		$('#msg-box').prop('readonly', true);
		
	});
	
    
	function callChatRoomList(){
		$.ajax({
			url:'/chat/chatRoomList.ajax',
			method:'GET',
			dataType:'JSON',
			success:function(data){
				console.log("caht list:"+data.list);
				$('#chat_list_div').empty();
				drawChatRoomList(data.list);
			},error: function(error){
				console.log(error);
			}
		})		
	}
	
	function drawChatRoomList(list){
		
		console.log(list.length);
		if(list.length < 1){
			$('#chat_list_div').append("<p>참여한 채팅방이 없습니다.</p>");
			return true;
		}
		for(let elem of list){
			let date = getCurrentTime(elem.lastMsgTime)
			console.log(elem.lastMsgTime);
			content ="<div class='chat-list-content-div bg-hover-light-primary text-hover-primary ' style='border: 1px solid #ffffca; height: 80px; border-radius: 5px;'>"
			content +="<p style='display:none'>"+elem.chatRoomIdx+"</p>"
			content +="<p class='individual' style='display:none'>"+elem.isIndividual+"</p>"
			content +="<div class='d-flex flex-column' style='margin: 5px; height: 80px;'>"
			content +="<div class='chatmain' style='display: flex; justify-content: space-between; margin-top: 10px;'>"
			content +="<a class='fs-8 fw-bold text-gray-900 text-hover-primary room-name' style='margin: 0px;'>"+elem.chatRoomName+"</a>"
			content +="<span class='text-muted fs-7 mb-1' style='text-align: right; margin: 0px;'>"+date
			content +="</span></div>"
			content +="<div class='d-flex flex-column align-items-end ms-2'>"
			if(elem.readCnt!=0){
				content +="<span class='cachnum' style='color: #255000;'>"+elem.readCnt
			}else{
				content +="<span class='cachnum' style='color: #255000;'>"
			}
			content +="</span></div></div></div>"
			$('#chat_list_div').append(content);
		}
		clickChatRoomListElem()
	}
	
	$('#make_room_btn').on('click', function(){
		$.ajax({
			url:'/organizationChart.ajax',
			method:'GET',
			dataType:'JSON',
			success:function(data){
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
		
	});
	
	$('#make_room').on('click', function(){
		console.log("make_room_click")
		if(makeRoomParticipantList == ''){
			FalseModal('채팅 참여자를 선택해주세요')
			return false;
		}
		$.ajax({
			data:{
				particList:JSON.stringify(makeRoomParticipantList)
			},
			url:'/chat/makeRoom.ajax',
			type:'POST',
			dataType:'JSON',
			success:function(data){
				console.log("make roooomm"+data.result);
				if(data.result == 'FAIL'){
					FalseModal("채팅방 생성을 실패했습니다")
				}else if(data.result == 'SUCCESS'){
					$('#make_room_enter_emp').empty();
					makeRoomParticipantList=[];
					callChatRoomList();
				}else if(data.result == 'EXIST'){
					$('#make_room_enter_emp').empty();
					makeRoomParticipantList=[];
					FalseModal("이미 1:1 채팅이 존재합니다")
				}
			},error:function(error){
				console.log(error);				
			}
		})	
	});
	
    function findEmp(empIdx) {
        for (let i = 0; i < makeRoomParticipantList.length; i++) {
            if (makeRoomParticipantList[i].empIdx == empIdx) {
                return i
            }
        }
        return -1;
    }
	
	function makeRoomJsTree(treeData){
		console.log("makeRoom"+treeData);
		
		$('#make_room_jstree').jstree('destroy');
		$('#make_room_jstree').jstree({
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
		treeDbClick();
		participantClick();
		
	}
	
	function participantClick() {
		$('div.participaint_emp').on('click', function() {
			$(this).remove();
			let removeId = $(this).children('a').html();
			let index = findEmp(removeId);
			makeRoomParticipantList.splice(index);
		});
	}

	function treeDbClick() {
		$('#make_room_jstree').bind(
				"dblclick.jstree",
				function(e, data) {
					var selectedNode = e.target;

					let id = e.target.id;
					let index = id.indexOf('_')
					console.log(id)
					id = id.substr(0, index)
					console.log(findEmp(id));
					if(id == username){
						return false;
					}
					if (findEmp(id) < 0) {
						let participant = {}
						participant.empIdx = id;
						participant.name = selectedNode.text;
						makeRoomParticipantList.push(participant);
						content = "<div class='participaint_emp'>"
								+ selectedNode.text
								+ "<a style='visibility:hidden'>" + id
								+ "</a></div>"
						$('#selectedNodeInput').val("선택된 노드 :" + selectedNode);
						$('#make_room_enter_emp').append(content);
						participantClick();
					}else{
						FalseModal("이미 선택된 사원입니다");
					}
				});
	}
	
	function empSearch() {
		console.log("검색");
		$('#make_room_jstree').jstree(true).search($('#search-input').val());
	}

	$('#send-msg').on('click', function(){
		console.log('msgclick')
		var message = $('#msg-box').val().trim();
		console.log(message)
		sendMessage(message);
	});
	
	function clickChatRoomListElem(){
		$('.chat-list-content-div').on('click', function(){
			$('#send-msg').prop('disabled', false);
			$('#msg-box').prop('readonly', false);
			let isIndividual = $(this).children('p.individual').html();
			let newRoomNum =  $(this).children('p').html();
			let $roomName = $(this).children('div');
			$roomName = $roomName.children('div');
			let roomName = $roomName.children('a').text();
			
			if(isIndividual == 'Y'){
				$('.quit-room').css({'visibility':'hidden'});
			}else{
				$('.quit-room').css({'visibility':'visible'});
			}
			
			if(roomNum != newRoomNum){
				if(subscription != null){
					subscription.unsubscribe('/topic/chat/'+roomNum);
				}
				roomNum = newRoomNum;
				console.log(subscription);
				subscripe();
				callChatList(roomNum);
				$('.chat-room-name').html(roomName);
				$('.chat-msg-tool-bar').css({'display':'flex'});
				participantsList();
				quitRoom();
				callChatRoomList();
			}
			
		});
	}
	
	function callChatList(roomNum){
		$.ajax({
			data:{
				'roomNum':roomNum
			},
			url:'/chat/chatList.ajax',
			type:'get',
			dataType:'json',
			success:function(data){
				console.log(data.chatdata);
				drawChatHistory(data.chatdata)
				
			}, error:function(){
				
			}
		})
	}
	
	function drawChatHistory(data){
		$('#msg-content').empty();
		console.log(data);
		for(let message of data){
			content = ""
			let date = getCurrentTime(message.sendDate)
			console.log("chat history")
			if(message.sender == 'system' && message.data != null){
				content += "<div class='fs-5 menu-title' style='text-align:center;margin:50px 0px; color:#78829D'>"+message.data+"</div>"
			}else if(message.sender == username){
				content+="<div class='d-flex justify-content-end mb-10'>"
				content+="<div class='d-flex flex-column align-items-end'>"
				content+="<div class='d-flex align-items-center mb-2'>"
				content+="<div class='me-3'><a class='fs-5 fw-bold text-gray-900 ms-1'>"
				content+="나 </a></div></div>"
				content+="<div class='p-5 rounded bg-light-success text-gray-900 fw-semibold mw-lg-400px text-end' data-kt-element='message-text'>" 
				content+=message.data+"</div><p>"+date+"</p></div></div>"
			}else{
				content += "<div class='d-flex justify-content-start mb-10'>"
				content += "<div class='d-flex flex-column align-items-start'>"
				content += "<div class='d-flex align-items-center mb-2'><div class='ms-3'>"
				content += "<a class='fs-5 fw-bold text-gray-900 text-hover-primary me-1'>"
				content += message.empName+"</a></div></div>"
				content += "<div class='p-5 rounded bg-light-info text-gray-900 fw-semibold mw-lg-400px text-start'data-kt-element='message-text'>" 
				content += message.data+"</div><p>"+date+"</p></div></div>"
			}
			$('#msg-content').append(content);
			scrollBottom();
		}
		
	}
	
	function onError(error){
		//alert('서버와 연결할 수 없습니다. 다시 시도해 주세요');
		console.log(error);
	}
	
	function onMessageReceived(payload){
		var message = JSON.parse(payload.body);
		console.log(message);
		setRead(message.roomNum, message.chatIdx);
		console.log(message);
		let data = [];
		data.push(message);
		drawReceivedData(data);
	}
	
	function drawReceivedData(data){
		for(let message of data){
			content = ""
			let date = getCurrentTime(message.sendDate)
			console.log("chat history")
			if(message.sender == 'system' && message.data != null){
				content += "<div class='fs-5 menu-title' style='text-align:center;margin:50px 0px; color:#78829D'>"+message.data+"</div>"
			}else if(message.sender == username){
				content+="<div class='d-flex justify-content-end mb-10'>"
				content+="<div class='d-flex flex-column align-items-end'>"
				content+="<div class='d-flex align-items-center mb-2'>"
				content+="<div class='me-3'><a class='fs-5 fw-bold text-gray-900 ms-1'>"
				content+="나 </a></div></div>"
				content+="<div class='p-5 rounded bg-light-success text-gray-900 fw-semibold mw-lg-400px text-end' data-kt-element='message-text'>" 
				content+=message.data+"</div><p>"+date+"</p></div></div>"
			}else{
				content += "<div class='d-flex justify-content-start mb-10'>"
				content += "<div class='d-flex flex-column align-items-start'>"
				content += "<div class='d-flex align-items-center mb-2'><div class='ms-3'>"
				content += "<a class='fs-5 fw-bold text-gray-900 text-hover-primary me-1'>"
				content += message.empName+"</a></div></div>"
				content += "<div class='p-5 rounded bg-light-info text-gray-900 fw-semibold mw-lg-400px text-start'data-kt-element='message-text'>" 
				content += message.data+"</div><p>"+date+"</p></div></div>"
			}
			$('#msg-content').append(content);
			scrollBottom();
		}
		
	}

	function subscripe(){
		console.log("연결");
		subscription = stompClient.subscribe('/topic/chat/'+roomNum, onMessageReceived);
	}

	function sendMessage(message){
		console.log('sendMsg : '+message);
		if(message && stompClient){
			let chatMessage = {
					sender : username,
					data : message,
					roomNum : roomNum,
					empName: empName
			}
			stompClient.send("/app/chat", {}, JSON.stringify(chatMessage));
		}
		scrollBottom();
		$('#msg-box').val('');
	}

	$('#msg-box').on('keyup', function(){
		console.log($(this).val());
		if($('#msg-box').prop('readonly') == false){
			if($(this).val()==''){
				$('#send-msg').prop('disabled', true);
			}else{
				$('#send-msg').prop('disabled', false);
			}
		}
	});
	function participantsList(){
		$('.participants-btn').on('click', function(){
			
			if(clickCnt == 0){
				clickCnt = 1
				$.ajax({
					data:{
						'roomNum':roomNum
					},
					url:'/chat/participant.ajax',
					type:'GET',
					dataType:'JSON',
					success:function(data){
						console.log(data);
						$('#make_room_enter_emp').empty();
						drawParticipants(data.participants);
						
					},error:function(error){
						console.log(error);				
					}
				})
			}else if(clickCnt == 1){
				clickCnt = 0;
			}
		});
	}
	
	function drawParticipants(participants){
		let contents = '';
		$('#participatns').empty();
		console.log(participants);
		
		for(let data of participants){
			console.log(data);
			contents += '<span>'+data.empInfo+'</span><br/>';
		}
		$('#participatns').append(contents);
	}

	function quitRoom(){
		
		$('.quit-room').on('click', function(){
			$.ajax({
				data:{
					'roomNum':roomNum
				},
				url:'/chat/quitRoom.ajax',
				type:'GET',
				dataType:'JSON',
				success:function(data){
					console.log(data.result);
					if(data.result == 'SUCCESS'){
						$('#msg-content').empty();
						$('.chat-room-name').html('');
						$('.chat-msg-tool-bar').css({'display':'none'});
						$('#send-msg').prop('disabled', true);
						$('#msg-box').prop('readonly', true);
						subscription.unsubscribe('/topic/chat/'+roomNum);
						callChatRoomList();												
					}else{
						FalseModal("채팅방 나가기에 실패했습니다 잠시 후 다시 시도해주세요");
					}
				},error:function(error){
					console.log(error);				
				}
			})
		});
	}
	function getCurrentTime(timestamp){
		var date = new Date(timestamp);
		let chatDate = moment(date).format('YY-MM-DD HH:mm');
	    return chatDate;
	}
	function setRead(roomNum, chatIdx){
		$.ajax({
			data:{
				'roomNum':roomNum,
				'chatIdx':chatIdx
			},
			url:'/chat/setRead.ajax',
			type:'GET',
			dataType:'JSON',
			success:function(data){
				callChatRoomList();
			},error:function(error){
				console.log(error);				
			}
		});
	}
	function scrollBottom(){
		$('#msg-content').scrollTop($('#msg-content')[0].scrollHeight)
	}
</script>
</html>