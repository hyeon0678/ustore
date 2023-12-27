<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<!--begin::Head-->
	<base href="../../" />
	<head>
		<title>USstore</title>
		<meta charset="utf-8" />
		<meta name="description" content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
		<meta name="keywords" content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="canonical" href="https://preview.keenthemes.com/craft" />
		<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
		<!-- jstree 링크  -->
		<link href="resource/assets/plugins/custom/jstree/jstree.bundle.css" rel="stylesheet" type="text/css" />
		<link href="resource/src/sass/components/_variables.scss" rel="stylesheet" type="text/css" />
		<link href="resource/src/sass/components/buttons" rel="stylesheet" type="text/css" />
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
			.chart-div{
				display: flex;
				height: 500px;
				margin-bottom: 20px;	
			}
			.chart-body-div{
				width: 45%;
				margin: 10px 20px;
			}
			.content_tree{
				margin: 20px 50px;
				padding: 20px;

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
			<div class="page d-flex flex-row flex-column-fluid" style="background-color: white;">
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">

					<!--================================메인 내용들어가는부분================================================-->
					<!--begin::Content-->
					<div class="content fs-6 d-flex flex-column flex-column-fluid" id="kt_content" style="margin-top: 90px; background-color: #fffff8;">
						<!--<h1 class="text-gray-900 fw-bold my-1 fs-2">채팅</h1>-->
						<!--begin::Toolbar-->
						<div class="toolbar" id="kt_toolbar">
							<div class="" style="display: flex; margin-left: 40px; margin-bottom: 5px; ">
								<!--begin::Info-->
								<div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2" style="margin-top: 10px; ">
									<!--begin::Title-->
									
									<!--end::Title-->
								</div>
								<!--end::Info-->
								<!--begin::Actions-->
								<div class="d-flex align-items-center flex-nowrap text-nowrap py-1">
									<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_1">
										방만들기
									</button>									
									<div class="modal fade" tabindex="-1" id="kt_modal_1">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<div style="display: flex; align-items: center;">
														<input type="text" class="form-control form-control-solid" placeholder="이름을 입력하세요" style="width:200px; height:30px; "/>
														<button type="button" class="btn btn-primary" style="margin: 5px;">검색</button>
													</div>
													<!--begin::Close-->
													<div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
														<i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
													</div>
													<!--end::Close-->
												</div>
												<div class="" >
													<div class="content_tree" style="float: left; width: 280px; height: 400px; overflow-y: auto;">
														<!-- 조직도 그리기 -->
														<!-- <span>여기에 조직도를 그려주세요</span> -->
														<!-- js트리 그리는 공간 -->
														<div id="kt_docs_jstree_basic">
															<ul>
															<li>
																Root node 1
																<ul>
																	<li data-jstree='{ "selected" : true }'>
																		<a href="javascript:;">
																		Initially selected </a>
																	</li>
																	<li data-jstree='{ "icon" : "ki-outline ki-geolocation text-success fs-4" }'>
																		custom icon URL
																	</li>
																	<li data-jstree='{ "opened" : true }'>
																		initially open
																		<ul>
																		<li data-jstree='{ "disabled" : true }'>
																			Disabled Node
																		</li>
																		<li data-jstree='{ "type" : "file" }'>
																			Another node
																		</li>
																		</ul>
																	</li>
																	<li data-jstree='{ "icon" : "ki-outline ki-message-text-2 text-danger fs-7" }'>
																		홍대관(팀원)
																	</li>
																</ul>
															</li>
															<li data-jstree='{ "selected" : true }'>
																<a href="javascript:;">
																Initially selected </a>
																</li>
																<li>
																	Root node 1
																	<ul>
																	<li data-jstree='{ "selected" : true }'>
																		<a href="javascript:;">
																			Initially selected </a>
																	</li>
																	<li data-jstree='{ "icon" : "ki-outline ki-geolocation text-success fs-4" }'>
																		custom icon URL
																	</li>
																	<li data-jstree='{ "opened" : true }'>
																		initially open
																		<ul>
																			<li data-jstree='{ "disabled" : true }'>
																				Disabled Node
																			</li>
																			<li data-jstree='{ "type" : "file" }'>
																				Another node
																			</li>
																		</ul>
																	</li>
																	<li data-jstree='{ "icon" : "ki-outline ki-message-text-2 text-danger fs-7" }'>
																		홍대관(팀원)
																	</li>
																	</ul>
																</li>
															</ul>
														</div>
														<!-- js트리 끝나는 곳-->
													</div>
													<div class="content_tree" style="float:left;width: 280px; height: 400px; border: 1px solid #c6da52; border-radius: 5px; overflow-y: auto;">
														<span>홍길동(인사팀 팀장)</span><br/>
														<span>홍길동(인사팀 팀장)</span><br/>
														<span>홍길동(인사팀 팀장)</span><br/>
														<span>홍길동(인사팀 팀장)</span><br/>
														<span>홍길동(인사팀 팀장)</span><br/>
														<span>홍길동(인사팀 팀장)</span><br/>
														<span>홍길동(인사팀 팀장)</span><br/>
														<span>홍길동(인사팀 팀장)</span><br/>
														<span>홍길동(인사팀 팀장)</span>
													</div>
												</div>
									
												<div class="modal-footer">
													<button type="button" class="btn btn-primary" data-bs-dismiss="modal">채팅방 생성</button>
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
									<div class="flex-column flex-lg-row-auto w-100 w-lg-300px w-xl-400px mb-10 mb-lg-0">
										<!--begin::Contacts-->
										<div class="card card-flush">											
											<!--begin::Card body-->
											<div class="card-body pt-5" id="kt_chat_contacts_body"  style="height: 700px; overflow-y: auto;">
												<!--begin::List-->
												<div class="scroll-y me-n5 pe-5 h-200px " data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="500px" data-kt-scroll-dependencies="#kt_header, #kt_app_header, #kt_toolbar, #kt_app_toolbar, #kt_footer, #kt_app_footer, #kt_chat_contacts_header" data-kt-scroll-wrappers="#kt_content, #kt_app_content, #kt_chat_contacts_body" data-kt-scroll-offset="5px">
													<!-- 여기가 체팅 방 리스트의 시작 -->
													<!-- 체팅방 예시 -->

													<!--begin::User-->
													<div class="bg-hover-light-primary text-hover-primary" style="border: 1px solid #ffffca; height: 80px; border-radius: 5px; ">
														<!--begin::Details-->
														<div class="d-flex flex-column" style="margin:5px; height: 80px;">															
															<!--begin::Details-->
																<div class="chatmain" style="display: flex; justify-content: space-between; margin-top: 10px;">
																<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary " style=" margin: 0px;">김지혜</a>
																<span class="text-muted fs-7 mb-1" style="text-align: right; margin: 0px;">YY.MM.dd.HH.mm</span>
																</div>
																<!--end::Details-->
																<!--begin::Lat seen-->														
																<div class="d-flex flex-column align-items-end ms-2" >
																	<span class="cachnum" style="color: #255000;">읽지않은메세지갯수</span>
																</div>
																<!--end::Lat seen-->
														</div>
														<!--end::Details-->
													</div>
													
													<!--end::User-->

												<!-- ============================================================================================= -->
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
											<div class="" id="kt_chat_messenger_header" style="display: flex; height: 50px; border-bottom: 1px solid #99A1B7; justify-content: space-between; align-items: center; ">
												<!--begin::Card toolbar-->
												<div style="margin-left:20px; margin-top: 10px;"><h3>김지혜</h3></div>
												<div style="display: flex; align-items: center; width: 120px; justify-content: space-around; margin-right: 20px;">
												<div class="card-toolbar">
													<!-- ===============================체팅 참가인원 확인 아이콘======================================== -->
													<!--begin::Menu-->
													<div class="me-n3" style="margin: 10px;">
														<button class="btn btn-sm btn-icon" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" >
															<!--begin::Svg Icon | path: /var/www/preview.keenthemes.com/keenthemes/craft/docs/core/html/src/media/icons/duotune/abstract/abs015.svg-->
																<span class="ki-duotone ki-dots-square fs-2"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path d="M21 7H3C2.4 7 2 6.6 2 6V4C2 3.4 2.4 3 3 3H21C21.6 3 22 3.4 22 4V6C22 6.6 21.6 7 21 7Z" fill="currentColor"/>
																<path opacity="0.3" d="M21 14H3C2.4 14 2 13.6 2 13V11C2 10.4 2.4 10 3 10H21C21.6 10 22 10.4 22 11V13C22 13.6 21.6 14 21 14ZM22 20V18C22 17.4 21.6 17 21 17H3C2.4 17 2 17.4 2 18V20C2 20.6 2.4 21 3 21H21C21.6 21 22 20.6 22 20Z" fill="currentColor"/>
																</svg>
																</span>
															<!--end::Svg Icon-->

														</button>
														<!--begin::Menu 3-->
														<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px py-3" data-kt-menu="true" >
															<!--begin::Heading-->
															<div class="menu-item px-3">
																<div class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">참여한 인원들</div>
															</div>
															<!--end::Heading-->
															<!--begin::Menu item-->
															<div style="height: 150px; overflow-y: auto; border: 1px solid #c6da52;">
																<span>홍길동(인사팀 팀장)</span><br/>
																<span>홍길동(인사팀 팀장)</span><br/>
																<span>홍길동(인사팀 팀장)</span><br/>
																<span>홍길동(인사팀 팀장)</span><br/>
																<span>홍길동(인사팀 팀장)</span><br/>
																<span>홍길동(인사팀 팀장)</span><br/>
																<span>홍길동(인사팀 팀장)</span><br/>
																<span>홍길동(인사팀 팀장)</span><br/>
																<span>홍길동(인사팀 팀장)</span>
															</div>
															<!--end::Menu item-->
														</div>
														<!--end::Menu 3-->
													</div>
													<!--end::Menu-->
												</div>
												<!--end::Card toolbar-->
												<!--begin::Card toolbar-->
												<div class="card-toolbar">
													<!-- ===============================체팅 참가인원 추가 아이콘======================================== -->
													<!--begin::Menu-->
													<div class="me-n3">
														<button class="btn btn-sm btn-icon" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" style="margin-left: 5px; padding: 10px;">
															<!--begin::Svg Icon | path: /var/www/preview.keenthemes.com/keenthemes/craft/docs/core/html/src/media/icons/duotune/general/gen035.svg-->
															<span class="ki-duotone ki-dots-square fs-2"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<rect opacity="0.3" x="2" y="2" width="20" height="20" rx="5" fill="currentColor"/>
															<rect x="10.8891" y="17.8033" width="12" height="2" rx="1" transform="rotate(-90 10.8891 17.8033)" fill="currentColor"/>
															<rect x="6.01041" y="10.9247" width="12" height="2" rx="1" fill="currentColor"/>
															</svg>
															</span>
															<!--end::Svg Icon-->
														</button>
														<!--begin::Menu 3-->
														<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-semibold w-200px h-500px py-3" data-kt-menu="true" >
															<!--begin::Heading-->
															<div class="menu-item px-3">
																<div class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">인원추가</div>
															</div>
															<!--end::Heading-->
															
															<!-- js트리 그리는 공간 -->
																<div id="kt_docs_jstree_basic2">
																	<ul>
																	<li>
																		Root node 1
																		<ul>
																			<li data-jstree='{ "selected" : true }'>
																				<a href="javascript:;">
																				Initially selected </a>
																			</li>
																			<li data-jstree='{ "icon" : "ki-outline ki-geolocation text-success fs-4" }'>
																				custom icon URL
																			</li>
																			<li data-jstree='{ "opened" : true }'>
																				initially open
																				<ul>
																				<li data-jstree='{ "disabled" : true }'>
																					Disabled Node
																				</li>
																				<li data-jstree='{ "type" : "file" }'>
																					Another node
																				</li>
																				</ul>
																			</li>
																			<li data-jstree='{ "icon" : "ki-outline ki-message-text-2 text-danger fs-7" }'>
																				홍대관(팀원)
																			</li>
																		</ul>
																	</li>
																	</ul>
																</div>
															<!-- js트리 끝나는 곳-->
															<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_1"></button> -->
															<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_2">
																인원추가
															</button>
														</div>
														<!--end::Menu 3-->
														<div class="modal fade" id="kt_modal_2" tabindex="-1"  >
															<div class="modal-dialog">
															  <div class="modal-content" style="width: 500px;">
																<div class="modal-header">
																	<h3>추가된 참가자</h3>
																</div>
																	<div>
																		<div class="content_tree" style="border: 1px solid #c6da52; border-radius: 5px; overflow-y: auto;">
																			<span>홍길동(인사팀 팀장)</span><br/>
																			<span>홍길동(인사팀 팀장)</span><br/>
																			<span>홍길동(인사팀 팀장)</span><br/>
																			<span>홍길동(인사팀 팀장)</span><br/>
																			<span>홍길동(인사팀 팀장)</span><br/>
																			<span>홍길동(인사팀 팀장)</span><br/>
																			<span>홍길동(인사팀 팀장)</span><br/>
																			<span>홍길동(인사팀 팀장)</span><br/>
																			<span>홍길동(인사팀 팀장)</span>
																		</div>
																	</div>													
																<div class="modal-footer">
																	<button type="button" class="btn btn-primary" data-bs-dismiss="modal">완료</button>
															  </div>
															</div>
														  </div>
														</div>
													
														</div>
													<!--end::Menu-->
												</div>
												<!--end::Card toolbar-->
												<!--begin::Card toolbar-->
												<div class="card-toolbar">
													<!-- ===============================체팅 나가기 아이콘======================================== -->
													<!--begin::Menu-->
													<div class="me-n3">
														<button class="btn btn-sm btn-icon" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" style="margin-right: 30px; padding: 10px;">
															<!--begin::Svg Icon | path: /var/www/preview.keenthemes.com/keenthemes/craft/docs/core/html/src/media/icons/duotune/arrows/arr076.svg-->
																<span class="ki-duotone ki-dots-square fs-2"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
																<rect opacity="0.3" width="12" height="2" rx="1" transform="matrix(-1 0 0 1 15.5 11)" fill="currentColor"/>
																<path d="M13.6313 11.6927L11.8756 10.2297C11.4054 9.83785 11.3732 9.12683 11.806 8.69401C12.1957 8.3043 12.8216 8.28591 13.2336 8.65206L16.1592 11.2526C16.6067 11.6504 16.6067 12.3496 16.1592 12.7474L13.2336 15.3479C12.8216 15.7141 12.1957 15.6957 11.806 15.306C11.3732 14.8732 11.4054 14.1621 11.8756 13.7703L13.6313 12.3073C13.8232 12.1474 13.8232 11.8526 13.6313 11.6927Z" fill="currentColor"/>
																<path d="M8 5V6C8 6.55228 8.44772 7 9 7C9.55228 7 10 6.55228 10 6C10 5.44772 10.4477 5 11 5H18C18.5523 5 19 5.44772 19 6V18C19 18.5523 18.5523 19 18 19H11C10.4477 19 10 18.5523 10 18C10 17.4477 9.55228 17 9 17C8.44772 17 8 17.4477 8 18V19C8 20.1046 8.89543 21 10 21H19C20.1046 21 21 20.1046 21 19V5C21 3.89543 20.1046 3 19 3H10C8.89543 3 8 3.89543 8 5Z" fill="currentColor"/>
																</svg>
																</span>
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
											<div class="card-body" id="kt_chat_messenger_body" style="height: 500px;">
												<!-- <h3>하이 먹머머머머머머머</h3> -->
												<!-- ========================상대방 메세지 예시=============================================================== -->
												<!--begin::Messages-->
												<div class="scroll-y me-n5 pe-5 h-300px h-lg-auto" data-kt-element="messages" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_header, #kt_app_header, #kt_app_toolbar, #kt_toolbar, #kt_footer, #kt_app_footer, #kt_chat_messenger_header, #kt_chat_messenger_footer" data-kt-scroll-wrappers="#kt_content, #kt_app_content, #kt_chat_messenger_body" data-kt-scroll-offset="5px">
													<!--begin::Message(in)-->
												<div class="d-flex justify-content-start mb-10">
														<!--begin::Wrapper-->
														<div class="d-flex flex-column align-items-start">
															<!--begin::User-->
															<div class="d-flex align-items-center mb-2">																
																<!--begin::Details-->
																<div class="ms-3">
																	<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary me-1">김지혜</a>
																</div>
																<!--end::Details-->
															</div>
															<!--end::User-->
															<!--begin::Text-->
															<div class="p-5 rounded bg-light-info text-gray-900 fw-semibold mw-lg-400px text-start" data-kt-element="message-text">
																How likely are you to recommend our company to your friends and family ?
															</div>
															<!--end::Text-->
														</div>
														<!--end::Wrapper-->
													</div>
													<!--end::Message(in)-->													
													<!--begin::Message(out)-->
													<div class="d-flex justify-content-end mb-10">
														<!--begin::Wrapper-->
														<div class="d-flex flex-column align-items-end">
															<!--begin::User-->
															<div class="d-flex align-items-center mb-2">
																<!--begin::Details-->
																<div class="me-3">
																	<a href="#" class="fs-5 fw-bold text-gray-900 text-hover-primary ms-1">오현비</a>
																</div>
																<!--end::Details-->
															</div>
															<!--end::User-->
															<!--begin::Text-->
															<div class="p-5 rounded bg-light-primary text-gray-900 fw-semibold mw-lg-400px text-end" data-kt-element="message-text">
																Hey there, we’re just writing to let you know that you’ve been subscribed to a repository on GitHub.
															</div>
															<!--end::Text-->
														</div>
														<!--end::Wrapper-->
													</div>
													<!--end::Message(out)-->											
												</div>
												<!--end::Messages-->
											</div>
											<!--end::Card body-->
											<!--begin::Card footer-->
											<div class="card-footer pt-4" id="kt_chat_messenger_footer">
												<!--begin::Input-->
												<textarea class="form-control form-control-flush mb-3" rows="1" data-kt-element="input" placeholder="메세지를 입력해주세요." style="height:50px; resize: none;" maxlength="200"></textarea>
												<!--end::Input-->
												<!--begin:Toolbar-->
												<div class="d-flex flex-stack">
													<!--begin::Actions-->
													<div class="d-flex align-items-center me-2">
													</div>
													<!--end::Actions-->
													<!--begin::Send-->
													<button class="btn btn-primary" type="button" data-kt-element="send">Send</button>
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
		<!--end::Root-->
								
		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<script src="resource/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Vendors Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
		$('#kt_docs_jstree_basic').jstree({
			"core" : {
				"themes" : {
					"responsive": false
				}
			},
			"types" : {
				"default" : {
					"icon" : "ki-outline ki-folder"
				},
				"file" : {
					"icon" : "ki-outline ki-file"
				}
			},
			"plugins": ["types"]
		});

		$('#kt_docs_jstree_basic2').jstree({
			"core" : {
				"themes" : {
					"responsive": false
				}
			},
			"types" : {
				"default" : {
					"icon" : "ki-outline ki-folder"
				},
				"file" : {
					"icon" : "ki-outline ki-file"
				}
			},
			"plugins": ["types"]
		});
	</script>

</html>