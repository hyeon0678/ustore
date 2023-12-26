<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<!--begin::Head-->
	<head>
		<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by KeenThemes</title>
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
			.chart-div{
				display: flex;
				height: 500px;
				margin-bottom: 20px;	
			}
			.chart-body-div{
				width: 45%;
				margin: 10px 20px;
			}
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
						<!--begin::Post-->
						<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div class="container-xxl">
								<!--begin::Card-->
								<div class="card">
									<!--begin::Card header-->
									<div class="card-header border-0 pt-6" style="display: flex; justify-content: center; align-items: center; margin: 30px;">
										<!-- begin::Card toolbar -->
										<div class="card-toolbar" style="text-align: center;">
											<!--begin::Toolbar-->
											<div class="d-flex justify-content-center" data-kt-user-table-toolbar="base">
												<h1 style="font-size: 36px;">업&nbsp;&nbsp;무&nbsp;&nbsp;기&nbsp;&nbsp;안&nbsp;&nbsp;문</h1>							
											</div>
											<!--end::Toolbar-->							
										</div>
										<!--end::Card toolbar-->
									</div>
									<!--end::Card header-->
									<!--begin::Card body-->
									<div class="card-body py-4">
										<div class="d-flex justify-content-end mb-4" style="margin-bottom: 30px;">
											<!-- 결재자 테이블 -->
											<table class="signature-table mr-3">
												<tr>
													<td>결재자1</td>
													<td>결재자2</td>
													<td>결재자3</td>
													<td>결재자4</td>
												</tr>
												<tr style="height: 70px;">
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</table>
										</div>
										<!--begin::Input group-->
										<div class="input-group mb-5" style="margin-top: 20px;">
											<span class="input-group-text flex-grow-1" id="inputGroup-sizing-default" style="width: 20%;">수신자</span>
											<input type="text" class="form-control flex-grow-1" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style="width: 80%;"/>
										</div>
										<!--end::Input group-->
										<!--begin::Input group-->
										<div class="input-group mb-5">
											<span class="input-group-text flex-grow-1" id="inputGroup-sizing-default" style="width: 20%;">제목</span>
											<input type="text" class="form-control flex-grow-1" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style="width: 80%;"/>
										</div>
										<!--end::Input group-->
										<!--begin::editor-->
										<div class="py-5" data-bs-theme="light">
											<textarea name="kt_docs_ckeditor_classic" id="kt_docs_ckeditor_classic"></textarea>												
										</div>	
										<!--end::editor-->									
									</div>
								</div>
								<!--begin::Form 파일첨부 -->
								<form class="form" action="#" method="post">
									<!--begin::Input group-->
									<div class="form-group row">
										<!--begin::Label-->
										<label class="col-lg-2 col-form-label text-lg-right">파일첨부 :</label>
										<!--end::Label-->

										<!--begin::Col-->
										<div class="col-lg-10">
											<!--begin::Dropzone-->
											<div class="dropzone dropzone-queue mb-2" id="kt_dropzonejs_example_2">
												<!--begin::Controls-->
												<div class="dropzone-panel mb-lg-0 mb-2">
													<a class="dropzone-select btn btn-sm btn-primary me-2">Attach files</a>
													<a class="dropzone-upload btn btn-sm btn-light-primary me-2">Upload All</a>
													<a class="dropzone-remove-all btn btn-sm btn-light-primary">Remove All</a>
												</div>
												<!--end::Controls-->

												<!--begin::Items-->
												<div class="dropzone-items wm-200px">
													<div class="dropzone-item" style="display:none">
														<!--begin::File-->
														<div class="dropzone-file">
															<div class="dropzone-filename" title="some_image_file_name.jpg">
																<span data-dz-name>some_image_file_name.jpg</span>
																<strong>(<span data-dz-size>340kb</span>)</strong>
															</div>

															<div class="dropzone-error" data-dz-errormessage></div>
														</div>
														<!--end::File-->

														<!--begin::Progress-->
														<div class="dropzone-progress">
															<div class="progress">
																<div
																	class="progress-bar bg-primary"
																	role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0" data-dz-uploadprogress>
																</div>
															</div>
														</div>
														<!--end::Progress-->

														<!--begin::Toolbar-->
														<div class="dropzone-toolbar">
															<span class="dropzone-start"><i class="bi bi-play-fill fs-3"></i></span>
															<span class="dropzone-cancel" data-dz-remove style="display: none;"><i class="bi bi-x fs-3"></i></span>
															<span class="dropzone-delete" data-dz-remove><i class="bi bi-x fs-1"></i></span>
														</div>
														<!--end::Toolbar-->
													</div>
												</div>
												<!--end::Items-->
											</div>
											<!--end::Dropzone-->

											<!--begin::Hint-->
											<span class="form-text text-muted">파일 개당 최대 크기 10MB, 5개 제한.</span>
											<!--end::Hint-->
										</div>
										<!--end::Col-->
									</div>
									<!--end::Input group-->
								</form>
								<!--end::Form 파일첨부 -->
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
		<script>var hostUrl = "resource/assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="resource/assets/plugins/global/plugins.bundle.js"></script>
		<script src="resource/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--CKEditor Build Bundles:: Only include the relevant bundles accordingly-->
		<script src="resource/assets/plugins/custom/ckeditor/ckeditor-classic.bundle.js"></script>
		<script src="resource/assets/plugins/custom/ckeditor/ckeditor-inline.bundle.js"></script>
		<script src="resource/assets/plugins/custom/ckeditor/ckeditor-balloon.bundle.js"></script>
		<script src="resource/assets/plugins/custom/ckeditor/ckeditor-balloon-block.bundle.js"></script>
		<script src="resource/assets/plugins/custom/ckeditor/ckeditor-document.bundle.js"></script>
		
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
	<script>
		ClassicEditor
    .create(document.querySelector('#kt_docs_ckeditor_classic'))
    .then(editor => {
        console.log(editor);
    })
    .catch(error => {
        console.error(error);
    });


	// set the dropzone container id
		const id = "#kt_dropzonejs_example_2";
		const dropzone = document.querySelector(id);

		// set the preview element template
		var previewNode = dropzone.querySelector(".dropzone-item");
		previewNode.id = "";
		var previewTemplate = previewNode.parentNode.innerHTML;
		previewNode.parentNode.removeChild(previewNode);

		var myDropzone = new Dropzone(id, { // Make the whole body a dropzone
			url: "https://keenthemes.com/scripts/void.php", // Set the url for your upload script location
			parallelUploads: 20,
			previewTemplate: previewTemplate,
			maxFilesize: 10, // Max filesize in MB
			autoQueue: false, // Make sure the files aren't queued until manually added
			previewsContainer: id + " .dropzone-items", // Define the container to display the previews
			clickable: id + " .dropzone-select" // Define the element that should be used as click trigger to select files.
		});

		myDropzone.on("addedfile", function (file) {
			// Hookup the start button
			file.previewElement.querySelector(id + " .dropzone-start").onclick = function () { myDropzone.enqueueFile(file); };
			const dropzoneItems = dropzone.querySelectorAll('.dropzone-item');
			dropzoneItems.forEach(dropzoneItem => {
				dropzoneItem.style.display = '';
			});
			dropzone.querySelector('.dropzone-upload').style.display = "inline-block";
			dropzone.querySelector('.dropzone-remove-all').style.display = "inline-block";
		});

		// Update the total progress bar
		myDropzone.on("totaluploadprogress", function (progress) {
			const progressBars = dropzone.querySelectorAll('.progress-bar');
			progressBars.forEach(progressBar => {
				progressBar.style.width = progress + "%";
			});
		});

		myDropzone.on("sending", function (file) {
			// Show the total progress bar when upload starts
			const progressBars = dropzone.querySelectorAll('.progress-bar');
			progressBars.forEach(progressBar => {
				progressBar.style.opacity = "1";
			});
			// And disable the start button
			file.previewElement.querySelector(id + " .dropzone-start").setAttribute("disabled", "disabled");
		});

		// Hide the total progress bar when nothing's uploading anymore
		myDropzone.on("complete", function (progress) {
			const progressBars = dropzone.querySelectorAll('.dz-complete');

			setTimeout(function () {
				progressBars.forEach(progressBar => {
					progressBar.querySelector('.progress-bar').style.opacity = "0";
					progressBar.querySelector('.progress').style.opacity = "0";
					progressBar.querySelector('.dropzone-start').style.opacity = "0";
				});
			}, 300);
		});

		// Setup the buttons for all transfers
		dropzone.querySelector(".dropzone-upload").addEventListener('click', function () {
			myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED));
		});

		// Setup the button for remove all files
		dropzone.querySelector(".dropzone-remove-all").addEventListener('click', function () {
			dropzone.querySelector('.dropzone-upload').style.display = "none";
			dropzone.querySelector('.dropzone-remove-all').style.display = "none";
			myDropzone.removeAllFiles(true);
		});

		// On all files completed upload
		myDropzone.on("queuecomplete", function (progress) {
			const uploadIcons = dropzone.querySelectorAll('.dropzone-upload');
			uploadIcons.forEach(uploadIcon => {
				uploadIcon.style.display = "none";
			});
		});

		// On all files removed
		myDropzone.on("removedfile", function (file) {
			if (myDropzone.files.length < 1) {
				dropzone.querySelector('.dropzone-upload').style.display = "none";
				dropzone.querySelector('.dropzone-remove-all').style.display = "none";
			}
		});

	</script>
</html>