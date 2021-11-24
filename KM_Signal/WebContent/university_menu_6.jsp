<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2016년 경기도</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<div class="container mt-5 text-center">
		<div class="row">
			<div class="col">
				<div class="card">
					<div class="card-header" style="background-color: #B0C4DE;">
						<h1 style="">지역별 지원 현황 2016년도</h1>
					</div>
					<div class="card-body" style="height: 700px;">
						<p class="card-text">
						<div id="carouselExampleControls" class="carousel slide"
							data-interval="false">
							<div class="carousel-inner">
								<div class="carousel-item active text-center">
									<div style="width: 1280px; height: 900px;">
										<canvas id="myChart1"></canvas>
									</div>
								</div>
								<div class="carousel-item text-center">
									<div style="width: 1280px; height: 900px;">
										<canvas id="myChart2"></canvas>
									</div>
								</div>
								<div class="carousel-item text-center">
									<div style="width: 1280px; height: 900px;">
										<canvas id="myChart3"></canvas>
									</div>
								</div>
								<div class="carousel-item text-center">
									<div style="width: 1280px; height: 900px;">
										<canvas id="myChart4"></canvas>
									</div>
								</div>
							</div>
							<button class="carousel-control-prev mt-5" type="button"
								data-bs-target="#carouselExampleControls" data-bs-slide="prev">
								<img alt="" src="./image/left.png" style="width: 80px;"> <span
									class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next mt-5" type="button"
								data-bs-target="#carouselExampleControls" data-bs-slide="next">
								<img alt="" src="./image/right.png" style="width: 80px;">
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>

		<script>
$.getJSON("resources/gyeonggido_volunteer.json", function(data){
	const labels = Object.values(data.area);  //컬럼명
	const datas = Object.values(data.Y2013);  //2013
	const context = document.getElementById('myChart1').getContext('2d');
	const myChart = new Chart(context, {
	type : 'bar',
	
	data: {
		labels:labels,
		datasets: [{
			label: '지원자',
			lineTension : 0.1,
			data: datas,
			backgroundColor: ["rgba(255, 102, 153, 0.8)",  //빨강
				"rgba(204, 102, 204, 0.6)",  //보라
				"rgba(255, 255, 102, 0.7)",  //노랑
				"rgba(255, 255, 102, 0.7)", 
				"rgba(255, 255, 102, 0.7)",  
				"rgba(153, 255, 153, 0.8)",  //초록
				"rgba(153, 255, 153, 0.8)", 
				"rgba(153, 255, 153, 0.8)",
				"rgba(153, 255, 153, 0.8)",
				"rgba(153, 255, 153, 0.8)",
				"rgba(153, 255, 153, 0.8)",  //초록
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",  //민트
				"rgba(153, 255, 153, 0.8)",
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		plugins : {
			datalabels : {
				font : {
					weight : 'bold',
					size : 18
				}
			}
		} ,	
		legend: {
        	display: false
        },
		title:{
			display: true,
			fontSize: 30,
			text:'2013년도 경기도'
		}
	}
	});
});
</script>
</div>
		<script>
$.getJSON("resources/gyeonggido_volunteer.json", function(data){
	const labels = Object.values(data.area);  //컬럼명
	const datas = Object.values(data.Y2014);  //2014
	const context = document.getElementById('myChart2').getContext('2d');
	const myChart = new Chart(context, {
	type : 'bar',
	
	data: {
		labels:labels,
		datasets: [{
			label: '지원자',
			lineTension : 0.1,
			data: datas,
			backgroundColor: ["rgba(255, 102, 153, 0.8)",  //빨강
				"rgba(204, 102, 204, 0.6)",  //보라
				"rgba(255, 255, 102, 0.7)",
				"rgba(255, 255, 102, 0.7)",
				"rgba(255, 255, 102, 0.7)",
				"rgba(255, 255, 102, 0.7)",  //노랑
				"rgba(153, 255, 153, 0.8)", 
				"rgba(153, 255, 153, 0.8)",
				"rgba(153, 255, 153, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(153, 255, 153, 0.8)",  //초록
				"rgba(102, 204, 204, 0.8)",
				"rgba(153, 255, 153, 0.8)",  //초록
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",  //민트
				"rgba(153, 255, 153, 0.8)",
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		plugins : {
			datalabels : {
				font : {
					weight : 'bold',
					size : 18
				}
			}
		} ,	
		legend: {
        	display: false
        },
		title:{
			display: true,
			fontSize: 30,
			text:'2014년도 경기도'
		}
	}
	});
});
</script>
		<script>
$.getJSON("resources/gyeonggido_volunteer.json", function(data){
	const labels = Object.values(data.area);  //컬럼명
	const datas = Object.values(data.Y2015);  //2015
	const context = document.getElementById('myChart3').getContext('2d');
	const myChart = new Chart(context, {
	type : 'bar',
	
	data: {
		labels:labels,
		datasets: [{
			label: '지원자',
			lineTension : 0.1,
			data: datas,
			backgroundColor: ["rgba(255, 102, 153, 0.8)",  //빨강
				"rgba(204, 102, 204, 0.6)",  //보라
				"rgba(255, 255, 102, 0.7)",  //노랑
				"rgba(255, 255, 102, 0.7)",  //노랑
				"rgba(255, 255, 102, 0.7)",  //노랑
				"rgba(153, 255, 153, 0.8)",  //초록
				"rgba(153, 255, 153, 0.8)", 
				"rgba(153, 255, 153, 0.8)",
				"rgba(153, 255, 153, 0.8)",
				"rgba(153, 255, 153, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",  //민트
				"rgba(153, 255, 153, 0.8)",
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		plugins : {
			datalabels : {
				font : {
					weight : 'bold',
					size : 18
				}
			}
		} ,	
		legend: {
        	display: false
        },
		title:{
			display: true,
			fontSize: 30,
			text:'2015년도 경기도'
		}
	}
	});
});
</script>
		<script>
$.getJSON("resources/gyeonggido_volunteer.json", function(data){
	const labels = Object.values(data.area);  //컬럼명
	const datas = Object.values(data.Y2016);  //2016
	const context = document.getElementById('myChart4').getContext('2d');
	const myChart = new Chart(context, {
	type : 'bar',
	
	data: {
		labels:labels,
		datasets: [{
			label: '지원자',
			lineTension : 0.1,
			data: datas,
			backgroundColor: ["rgba(255, 102, 153, 0.8)",  //빨강
				"rgba(204, 102, 204, 0.6)",  //보라
				"rgba(255, 255, 102, 0.7)",  //노랑
				"rgba(255, 255, 102, 0.7)",  //노랑
				"rgba(153, 255, 153, 0.8)",  //초록
				"rgba(255, 255, 102, 0.7)",  //노랑
				"rgba(153, 255, 153, 0.8)", 
				"rgba(153, 255, 153, 0.8)",
				"rgba(153, 255, 153, 0.8)",
				"rgba(153, 255, 153, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",
				"rgba(102, 204, 204, 0.8)",  //민트
				"rgba(153, 255, 153, 0.8)",
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		plugins : {
			datalabels : {
				font : {
					weight : 'bold',
					size : 18
				}
			}
		} ,	
		legend: {
        	display: false
        },
		title:{
			display: true,
			fontSize: 30,
			text:'2016년도 경기도'
		}
	}
	});
});
</script>
</body>
</html>