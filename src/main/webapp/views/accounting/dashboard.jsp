<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<head>
<title>Craft | Bootstrap 5 HTML Admin Dashboard Theme - Craft by
	KeenThemes</title>
<meta charset="utf-8" />
<meta name="description"
	content="Craft admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
<meta name="keywords"
	content="Craft, bootstrap, bootstrap 5, admin themes, dark mode, free admin themes, bootstrap admin, bootstrap dashboard" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="canonical" href="https://preview.keenthemes.com/craft" />
<link rel="shortcut icon" href="resource/assets/media/logos/favicon.ico" />
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
.chart-div {
	display: flex;
	height: 500px;
	margin-bottom: 20px;
}

.chart-body-div {
	width: 45%;
	margin: 10px 20px;
}

.chart-title {
	margin-right: 10px;
}

.span-search-button {
	margin-left: 20px;
}
#Bselect {
    width: 200px; 
     box-sizing: border-box;
}
</style>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body"
	class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled aside-fixed aside-default-enabled">
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
			<div class="wrapper d-flex flex-column flex-row-fluid"
				id="kt_wrapper">
				<!--begin::Content-->
				<div class="content fs-6 d-flex flex-column flex-column-fluid"
					id="kt_content"
					style="margin-top: 30px; background-color: #fffff8; margin-left: 30px">
					<jsp:include page="/views/common/sidebar.jsp"></jsp:include>
					<h1 class="text-gray-900 fw-bold my-1 fs-2"
						style="margin-left: 50px;">Dashboard</h1>
					<!--================================메인 내용들어가는부분================================================-->
					<div class="chart-div">
						<!--begin::Card widget 5 기간 매출액 및 품목별 매출 비중-->
						<div class="card chart-body-div">
							<!--begin::Card body-->
							<div
								class="card-body d-flex justify-content-between flex-column px-0 pb-0">
								<!--begin::Statistics-->
								<div class="mb-4 px-9">
									<!--begin::Info-->
									<div class="d-flex align-items-center mb-2">
										<!--begin::Value-->
										<span class="fs-5 fw-bold text-gray-800 me-2 lh-1 chart-title">영업이익
											추이</span>
										<!--end::Value-->
									</div>
									<!--end::Info-->
								</div>
								<!--end::Statistics-->
								<!--begin::Chart-->
								<div id="" class="min-h-auto card-body chart-content-body">
								<canvas id="kt_chartjs_2" class="mh-400px"></canvas>
								</div>
								<!--end::Chart-->
							</div>
							<!--end::Card body-->
						</div>
						<!--begin::Card widget 5 매출액 추이-->
						<div class="card chart-body-div">
							<!--begin::Card body-->
							<div
								class="card-body d-flex justify-content-between flex-column px-0 pb-0">
								<!--begin::Statistics-->
								<div class="mb-4 px-9">
									<!--begin::Info-->
									<div class="d-flex align-items-center mb-2">
										<!--begin::Value-->
										<span class="fs-5 fw-bold text-gray-800 me-2 lh-1 chart-title">비용금액 및 내역</span>
										<!--end::Value-->
										<span style="width: 70%;"><select
																			class="form-select form-select-solid" 
																			data-control="select2" data-placeholder="선택"
																			data-hide-search="true" name="Bselect" id="Bselect" style="width: 30%;">
																				<option></option>
																				<option value="일간" selected="selected">일간</option>
																				<option value="주간">주간</option>
								
																		</select>
																		</span>
										<button type="button"
											class="btn btn-primary span-search-button fs-7">검색</button>
									</div>

									<!--end::Info-->
								</div>
								<!--end::Statistics-->
								<!--begin::Chart-->
								<div id="" class="min-h-auto card-body chart-content-body">
									<!-- 차트 그리는 부분 -->
									
									<canvas id="kt_chartjs_1" class="mh-400px"></canvas>
								</div>
								<!--end::Chart-->
							</div>
							<!--end::Card body-->
						</div>
					</div>
					<!--begin::Card widget 5 기간 매출액 및 품목별 매출 비중-->
					<div class="chart-div ">
						<div class="card chart-body-div">
							<!--begin::Card body-->
							<div
								class="card-body d-flex justify-content-between flex-column px-0 pb-0">
								<!--begin::Statistics-->
								<div class="mb-4 px-9">
									<!--begin::Info-->
									<div class="d-flex align-items-center mb-2">
										<!--begin::Value-->
										<span class="fs-5 fw-bold text-gray-800 me-2 lh-1 chart-title">품목별
											매출 순위</span>
										<!--end::Value-->
										<div class="mb-0">
											<input
												class="form-control form-control-solid kt_daterangepicker_1"
												id="datePicker" placeholder="기간 선택" />
										</div>
										<button type="button"
											class="btn btn-primary span-search-button fs-7"
											id="searchButton">검색</button>
									</div>
									<!--end::Info-->
								</div>
								<!--end::Statistics-->
								<!--begin::Chart-->
								<div id="" class="min-h-auto card-body chart-content-body">
									<!-- 차트 그리는 부분 -->


									<canvas id="kt_chartjs_3" class="mh-350px"></canvas>


								</div>
								<!--end::Chart-->
							</div>
							<!--end::Card body-->
						</div>
						<!--begin::Card widget 5 기간 비용금액 및 내역 비중 단위-->
						<div class="card chart-body-div">
							<!--begin::Card body-->
							<div
								class="card-body d-flex justify-content-between flex-column px-0 pb-0">
								<!--begin::Statistics-->
								<div class="mb-4 px-9">
									<!--begin::Info-->
									<div class="d-flex align-items-center mb-2">
										<!--begin::Value-->
										<span class="fs-5 fw-bold text-gray-800 me-2 lh-1 chart-title">카테고리별 매출</span>
										<!--end::Value-->
										<div class="mb-0">
											<input
												class="form-control form-control-solid kt_daterangepicker_1"
												placeholder="기간 선택" />
										</div>
										<button type="button"
											class="btn btn-primary span-search-button fs-7">검색</button>
									</div>
									<!--end::Info-->
								</div>
								<!--end::Statistics-->
								<!--begin::Chart-->
								<div id="" class="min-h-auto card-body chart-content-body">
									<!-- 차트 그리는 부분 -->
								</div>
								<!--end::Chart-->
							</div>
							<!--end::Card body-->
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
	<script>var hostUrl = "/";</script>
	<!--begin::Global Javascript Bundle(mandatory for all pages)-->
	<script src="resource/assets/js/scripts.bundle.js"></script>
	<!--end::Global Javascript Bundle-->
	<!--end::Javascript-->
</body>
<!--end::Body-->
<script>
		$(".kt_daterangepicker_1").daterangepicker();
	</script>

<script>
        $(document).ready(function() {
         
            fetchDataAndRenderChart();
            generateRandomData();
            
          
        });

        function fetchDataAndRenderChart() {
          
            $.ajax({
                url: '/accounting/dashboard/produtctlist',
                method: 'GET',
                dataType: 'json',
                success: function(data) {
                   
                    const labels = data.map(item => item.productName);
                    const dataValues = data.map(item => item.sellingPrice);

                 
                    const ctx = document.getElementById('kt_chartjs_3').getContext('2d');
                    const myChart = new Chart(ctx, {
                        type: 'pie', 
                        data: {
                            labels: labels,
                            datasets: [{
                                label: 'Selling Price',
                                data: dataValues,
                              
                            }],
                        },
                        options: {
                            plugins: {
                                title: {
                                    display: false,
                                }
                            },
                            responsive: true,
                        },
                        defaults: {
                            global: {
                                defaultFont: KTUtil.getCssVariableValue('--bs-font-sans-serif')
                            }
                        }
                    });
                },
                error: function(error) {
                    console.error('에러:', error);
                }
            });
        }
    </script>

<script>
    $(document).ready(function() {
     
        $('#searchButton').click(function() {
   
            var selectedDate = $('#datePicker').val();

         
            $.ajax({
                url: '/accounting/dashboard/produtctdaylist',
                method: 'GET',
                data: { selectedDate: selectedDate },
                dataType: 'json',
                success: function(response) {
                
                    console.log('Ajax 요청 성공:', response);
                    
                
                    if (response === null || response.length === 0) {
                    	var existingChart = Chart.getChart('kt_chartjs_3');
                        if (existingChart) {
                            existingChart.destroy();
                        }
                        fetchDataAndRenderChart();
                    } else {
                 
                        updateChart(response);
                    }
                },
                error: function(error) {
              
                    console.error('Ajax 요청 실패:', error);
                    
                 
                    fetchDataAndRenderChart();
                }
            });
        });

      
        function updateChart(data) {
            const labels = data.map(item => item.productName);
            const dataValues = data.map(item => item.sellingPrice);

          
            var existingChart = Chart.getChart('kt_chartjs_3');
            if (existingChart) {
                existingChart.destroy();
            }

      
            const ctx = document.getElementById('kt_chartjs_3').getContext('2d');
            const myChart = new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Selling Price',
                        data: dataValues,
                    }],
                },
                options: {
                    plugins: {
                        title: {
                            display: false,
                        }
                    },
                    responsive: true,
                },
                defaults: {
                    global: {
                        defaultFont: KTUtil.getCssVariableValue('--bs-font-sans-serif')
                    }
                }
            });
        }


        fetchDataAndRenderChart();
    });
</script>
<script>
$(document).ready(function() {
    // Define colors
    var primaryColor = KTUtil.getCssVariableValue('--kt-primary');
    var dangerColor = KTUtil.getCssVariableValue('--kt-danger');
    var successColor = KTUtil.getCssVariableValue('--kt-success');
    var currentDate = new Date();
    var myChart; // myChart 변수를 전역으로 선언

    // 5일 전의 날짜 계산
    var fiveDaysAgo = new Date(currentDate);
    fiveDaysAgo.setDate(currentDate.getDate() - 5);
    // Define fonts
    var fontFamily = KTUtil.getCssVariableValue('--bs-font-sans-serif');

    // Chart labels
    const labels = [];
    for (var i = 0; i <= 5; i++) {
        var dateToAdd = new Date(fiveDaysAgo);
        dateToAdd.setDate(fiveDaysAgo.getDate() + i);
        labels.push(formatDate(dateToAdd));
    }
    

    // Get chart context
    var ctx = document.getElementById('kt_chartjs_1').getContext('2d');

    // Get data from server
    var dashboardData = [];
    var totalPriceData = []; // 전역으로 선언
    var totalPriceOrderData = []; // 전역으로 선언
    var totalUsedPointsData = []; // 전역으로 선언

    function formatDate(date) {
        var month = date.getMonth() + 1;
        var day = date.getDate();
        return month + '월' + day + '일';
    }

    // Make an AJAX call to get data from the server
    $.ajax({
        url: '/accounting/dashboardday/list',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            // Extracting data from the server response
            totalPriceData = data.map(item => Math.floor(Math.random() * 1000)); // 전역 변수에 할당
            totalPriceOrderData = data.map(item => Math.floor(Math.random() * 2000)); // 전역 변수에 할당
            totalUsedPointsData = data.map(item => Math.floor(Math.random() * 2000)); // 전역 변수에 할당

            var sortedData = [
                { label: '포인트 사용', data: normalizeData(totalUsedPointsData), backgroundColor: successColor },
                { label: '발주 금액', data: normalizeData(totalPriceOrderData), backgroundColor: dangerColor },
                { label: '파손/폐기', data: normalizeData(totalPriceData), backgroundColor: primaryColor },
            ].sort((a, b) => Math.max(...b.data) - Math.max(...a.data));

            // Chart data
            const datasets = sortedData;
      

            // Chart config
            const config = {
                type: 'bar',
                data: { labels: labels, datasets: datasets },
                options: {
                    plugins: {
                        title: {
                            display: false,
                        },
                    },
                    responsive: true,
                    interaction: {
                        intersect: false,
                    },
                    scales: {
                        x: {
                            stacked: true,
                        },
                        y: {
                            stacked: true,
                        },
                    },
                },
                defaults: {
                    global: {
                        defaultFont: fontFamily,
                    },
                },
            };

            // Init ChartJS
            myChart = new Chart(ctx, config);
        },
        error: function(error) {
            console.error('Error fetching dashboard data:', error);
        }
    });

    function normalizeData(data) {
        // Find the maximum value in the data
        const maxValue = Math.max(...data);

        
        // Normalize the data by dividing each value by the maximum value
        return data.map(value => (maxValue !== 0 ? (value / maxValue) * 100 : value));
    }

    $(document).on('click', '.span-search-button', function() {
        // 현재 차트의 설정을 가져옵니다.
        var chartConfig = myChart.config;

        // 차트를 다시 렌더링하기 전에 옵션을 수정합니다.
        // 여기서는 '주간'에 해당하는 데이터를 가져오도록 예시로 구현하였습니다.
        if ($('#Bselect').val() === '주간') {
            chartConfig.data.labels = ['5주전', '4주전', '3주전', '2주전', '1주전', '이번주'];
            chartConfig.data.datasets.forEach(function(dataset) {
                // 여기서는 랜덤 데이터를 사용하도록 예시로 구현하였습니다.
                dataset.data = Array.from({ length: 6 }, () => Math.floor(Math.random() * 700));
            });
        } else {
            // '일간'인 경우, 기존과 동일한 데이터를 사용하도록 설정합니다.
            chartConfig.data.labels = labels;
            chartConfig.data.datasets.forEach(function(dataset, index) {
                if (index === 0) {
                    dataset.data = normalizeData(totalPriceData);
                } else if (index === 1) {
                    dataset.data = normalizeData(totalPriceOrderData);
                } else if (index === 2) {
                    dataset.data = normalizeData(totalUsedPointsData);
                }
            });
        }

        // 차트를 다시 렌더링합니다.
        myChart.update();
    });
});
</script>

<!-- ----------------------------------------------------------------------------------------------------------------- -->
<script>
    var ctx = document.getElementById('kt_chartjs_2');
    
    // Define colors
    var primaryColor = KTUtil.getCssVariableValue('--kt-primary');
    var dangerColor = KTUtil.getCssVariableValue('--kt-danger');
    
    // Define fonts
    var fontFamily = KTUtil.getCssVariableValue('--bs-font-sans-serif');
    
    // Chart labels
    const labels = ['8월', '9월', '10월', '11월', '12월', '1월'];
    
    // Chart data
    const data = {
        labels: labels,
        datasets: [
            {
                label: '영업 이익',
                data: [],  // Initialize with empty data
                borderColor: primaryColor,
                borderWidth: 2,
                fill: false,
                type: 'line',
            }
        ]
    };
    
    // Chart config
    const config = {
        type: 'line',
        data: data,
        options: {
            plugins: {
                title: {
                    display: false,
                }
            },
            responsive: true,
        },
        defaults: {
            global: {
                defaultFont: fontFamily
            }
        }
    };
    
    // Init ChartJS
    var myChart = new Chart(ctx, config);

    // Function to update line chart with new data
    function updateLineChart(lineData) {
        myChart.data.datasets[0].data = lineData;
        myChart.update();
    }

    // Simulate server data (replace this with your actual data fetching)
    $.ajax({
        url: '/accounting/dashboardline/list',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            // Assuming your server response has a property 'totalUsedPoints'
            var lineData = data.map(item => item.totalAllPrice * 1000);
            
            // Update line chart with actual data
            updateLineChart(lineData);
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
</script>

</html>