<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<!--begin::Head-->
<head>
<title>DashBoard</title>
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
										<span style="width: 60%;"><select
																			class="form-select form-select-solid" 
																			data-control="select2" data-placeholder="선택"
																			data-hide-search="true" name="Bselect" id="Bselect" style="width: 30%;">
																				<option></option>
																				<option value="일간" selected="selected">일간</option>
																				<option value="주간">주간</option>
								
																		</select>
																		</span>
										<button type="button"
											class="btn btn-primary span-search-button fs-7" id="priceBtn">검색</button>
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
												placeholder="기간 선택" id="CategoryDatePicker" />
										</div>
										<button type="button"
											class="btn btn-primary span-search-button fs-7" id ="CategoryBtn">검색</button>
									</div>
									<!--end::Info-->
								</div>
								<!--end::Statistics-->
								<!--begin::Chart-->
								<div id="" class="min-h-auto card-body chart-content-body">
									<!-- 차트 그리는 부분 -->
									<canvas id="kt_chartjs_4" class="mh-350px"></canvas>
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
	<script src="resource/assets/js/scripts.bundle.js"></script>
</body>
<!--end::Body-->
<script>
		$(".kt_daterangepicker_1").daterangepicker();
	</script>

<script>
        $(document).ready(function() {
         
            fetchDataAndRenderChart();
    
            
          
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
                                label: 'Price',
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
            
            var startDateString = selectedDate.split(' - ')[0];
            var endDateString = selectedDate.split(' - ')[1];

            var today = new Date();
            today.setHours(0, 0, 0, 0);

            var startDateParts = startDateString.split('/');
            var endDateParts = endDateString.split('/');

            var startDate = new Date(startDateParts[2], startDateParts[0] - 1, startDateParts[1]);
            var endDate = new Date(endDateParts[2], endDateParts[0] - 1, endDateParts[1]);

            if (isNaN(startDate) || isNaN(endDate) || startDate > today || endDate > today) {
                InfoModal("오늘 날짜를 넘기면 검색이 불가능 합니다!.");
                return;
            }
         
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
                        label: 'Price',
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
<!-- ------------------------------------------------------------------비용 금액 -->
<script>
$(document).ready(function() {
    var primaryColor = KTUtil.getCssVariableValue('--kt-primary');
    var dangerColor = KTUtil.getCssVariableValue('--kt-danger');
    var successColor = KTUtil.getCssVariableValue('--kt-success');
    var currentDate = new Date();
    var myChart; 
    var isWeeklyClicked = false; 
    
    var fiveDaysAgo = new Date(currentDate);
    fiveDaysAgo.setDate(currentDate.getDate() - 5);

    var fontFamily = KTUtil.getCssVariableValue('--bs-font-sans-serif');

    const labels = [];
    for (var i = 0; i <= 5; i++) {
        var dateToAdd = new Date(fiveDaysAgo);
        dateToAdd.setDate(fiveDaysAgo.getDate() + i);
        labels.push(formatDate(dateToAdd));
    }

    var ctx = document.getElementById('kt_chartjs_1').getContext('2d');

    var totalPriceData = []; 
    var totalPriceOrderData = []; 
    var totalUsedPointsData = [];

    function formatDate(date) {
        var month = date.getMonth() + 1;
        var day = date.getDate();
        return month + '월' + day + '일';
    }

    // 차트 초기 설정 함수
    function initializeChart(data) {
        const maxTotalPrice = Math.max(...data.list1.map(item => item.totalPrice));
        const maxTotalPriceOrder = Math.max(...data.list3.map(item => item.totalUsedPoints));
        const maxTotalUsedPoints = Math.max(...data.list2.map(item => item.totalPriceOrder));
       
        var sortedData = [
            { label: '발주 금액', data: normalizeData(data.list2.map(item => item.totalPriceOrder), maxTotalPrice), backgroundColor: successColor },
            { label: '포인트 사용', data: normalizeData(data.list3.map(item => item.totalUsedPoints), maxTotalPriceOrder), backgroundColor: dangerColor },
            { label: '파손/폐기', data: normalizeData(data.list1.map(item => item.totalPrice), maxTotalUsedPoints), backgroundColor: primaryColor },
        ].sort((a, b) => Math.max(...b.data) - Math.max(...a.data));

        var datasets = sortedData;

        var config = {
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

        myChart = new Chart(ctx, config);
    }

    // 데이터 정규화 함수
    function normalizeData(data, maxValue) {
        return data.map(value => (maxValue !== 0 ? (value / maxValue) * 100 : value));
    }

    // 초기 차트 데이터 로드
    $.ajax({
        url: '/accounting/dashboardday/list',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            console.log('Received data from server:', data);
            initializeChart(data); // 초기 차트 설정 함수 호출
        },
        error: function(error) {
            console.error('Error fetching dashboard data:', error);
        }
    });

    // 검색 버튼 클릭 시 이벤트 처리
    $(document).on('click', '#priceBtn', function() {
        if ($('#Bselect').val() === '주간' && !isWeeklyClicked) {
            isWeeklyClicked = true;
            myChart.data.labels = ['5주전', '4주전', '3주전', '2주전', '1주전', '이번주'];
            myChart.data.datasets.forEach(function(dataset) {
            	 if (dataset === myChart.data.datasets[0]) {
                     dataset.data = Array.from({ length: 6 }, () => Math.floor(Math.random() * (3000 - 500 + 1) + 500));
                 } else if (dataset === myChart.data.datasets[1]) {
                     dataset.data = Array.from({ length: 6 }, () => Math.floor(Math.random() * (700 - 420 + 1) + 420));
                 } else if (dataset === myChart.data.datasets[2]) {
                     dataset.data = Array.from({ length: 6 }, () => Math.floor(Math.random() * 151));
                 }
            });
        } else if ($('#Bselect').val() === '일간') {
            isWeeklyClicked = false; 
            // 데이터를 다시 불러오고 차트를 업데이트
            $.ajax({
                url: '/accounting/dashboardday/list',
                type: 'GET',
                dataType: 'json',
                success: function(data) {
                    console.log('Received data from server:', data);
                    myChart.destroy(); // 기존 차트 파괴
                    initializeChart(data); // 새로운 데이터로 초기 차트 설정
                },
                error: function(error) {
                    console.error('Error fetching dashboard data:', error);
                }
            });
        }

        myChart.update();
    });
});


</script>

<!-- -------------------------------------------------영업 이익---------------------------------------------------------------- -->
<script>
    var ctx = document.getElementById('kt_chartjs_2');
    

    var primaryColor = KTUtil.getCssVariableValue('--kt-primary');
    var dangerColor = KTUtil.getCssVariableValue('--kt-danger');
    

    var fontFamily = KTUtil.getCssVariableValue('--bs-font-sans-serif');
    
 
    const labels = ['8월', '9월', '10월', '11월', '12월', '1월'];
 
    const data = {
        labels: labels,
        datasets: [
            {
                label: '영업 이익',
                data: [],  
                borderColor: primaryColor,
                borderWidth: 2,
                fill: false,
                type: 'line',
            }
        ]
    };
    
    
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
    
 
    var myChart = new Chart(ctx, config);

  
    function updateLineChart(lineData) {
        myChart.data.datasets[0].data = lineData;
        myChart.update();
    }

   
    $.ajax({
        url: '/accounting/dashboardline/list',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            
            var lineData = data.map(item => item.totalAllPrice * 1000);
            
      
            updateLineChart(lineData);
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
</script>
<!-- -----------------------------------------------------------------------------------카테고리-->

 <script>
$(document).ready(function() {
  
    fetchData();

   
    function fetchData() {
        $.ajax({
            type: 'GET',
            url: '/accounting/dashboardcategory/list',
            dataType: 'json',
            success: function(data) {
               
                initChart(data);
            },
            error: function(error) {
                console.error('데이터 가져오기 오류:', error);
            }
        });
    }

   
    function initChart(data) {
      
        var fontFamily = KTUtil.getCssVariableValue('--bs-font-sans-serif');

     
        const foodData = data.map(item => item.food);
        const necessityData = data.map(item => item.necessity);
        const electronicsData = data.map(item => item.electronics);

        
        const chartConfig = {
            type: 'pie',
            data: {
                labels: ['식품', '생필품', '전자제품'],
                datasets: [
                    {
                        label: 'Price',
                        data: [foodData, necessityData, electronicsData],
                        backgroundColor: [
                        	 '#5cb85c',
                            '#f39c12',
                            '#3498db'
                        ],
                        borderWidth: 2,
                    },
                ],
            },
            options: {
                plugins: {
                    title: {
                        display: true,
                        text: '카테고리',
                    },
                    legend: {
                        position: 'bottom',
                        labels: {
                            font: {
                                size: 15,
                                family: fontFamily,
                            },
                        },
                    },
                },
                responsive: true,
            },
            defaults: {
                global: {
                    defaultFont: fontFamily,
                },
            },
        };

        var ctx = document.getElementById('kt_chartjs_4');
        var myChart = new Chart(ctx, chartConfig);
    }

});
</script>

<script>
$(document).ready(function() {
	console.log('Document is ready.');
    $('#CategoryBtn').click(function() {
    	  console.log('CategoryBtn clicked.');
        var selectedCateDate = $('#CategoryDatePicker').val(); 
        var startDateString = selectedCateDate.split(' - ')[0];
        var endDateString = selectedCateDate.split(' - ')[1];

        var today = new Date();
        today.setHours(0, 0, 0, 0);

        var startDateParts = startDateString.split('/');
        var endDateParts = endDateString.split('/');

        var startDate = new Date(startDateParts[2], startDateParts[0] - 1, startDateParts[1]);
        var endDate = new Date(endDateParts[2], endDateParts[0] - 1, endDateParts[1]);

        if (isNaN(startDate) || isNaN(endDate) || startDate > today || endDate > today) {
            InfoModal("오늘 날짜를 넘기면 검색이 불가능 합니다!.");
            return;
        }
        console.log('Selected date!!:', selectedCateDate);
        $.ajax({
            url: '/accounting/dashboardcategory/update',
            method: 'GET',
            data: { selectedCateDate: selectedCateDate },
            dataType: 'json',
            success: function(response) {
            
                console.log('요청 성공', response);
                
            
                if (response === null || response.length === 0) {
                	var existingChart = Chart.getChart('kt_chartjs_4');
                    if (existingChart) {
                        existingChart.destroy();
                    }
                    fetchData();
                } else {
             
                    updateCategoryChart(response);
                }
            },
            error: function(error) {
          
                console.error('Ajax 요청 실패:', error);
                
             
                fetchData();
            }
        });
    });

  
    function updateCategoryChart(data) {
       
    	 const foodData = data.map(item => item.food);
         const necessityData = data.map(item => item.necessity);
         const electronicsData = data.map(item => item.electronics);

      
        var existingChart = Chart.getChart('kt_chartjs_4');
        if (existingChart) {
            existingChart.destroy();
        }

  
        const ctx = document.getElementById('kt_chartjs_4').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ['식품', '생필품', '전자제품'],
                datasets: [
                    {
                        label: 'price',
                        data: [foodData, necessityData, electronicsData],
                        backgroundColor: [
                        	 '#5cb85c',
                             '#f39c12',
                             '#3498db'
                        ],
                        borderWidth: 2,
                    },
                ],
                
            },
            options: {
                plugins: {
                    title: {
                        display: true,
                        text: '카테고리',
                    },
                    legend: {
                        position: 'bottom',
                        labels: {
                            font: {
                                size: 15,
                                family: fontFamily,
                            },
                        },
                    },
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


    fetchData();
});

</script>
</html>