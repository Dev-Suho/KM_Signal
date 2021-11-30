<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel = "stylesheet" href = "./css/sub_header.css">
</head>
<body>
		<!-- 학과 지원률 슬라이드 -->
		<div class="container mt-5 text-center"> 
		<div class = "row">
			<div class="col">
			<div class="card">
 			 <div class="card-header" style = "background-color: #B0C4DE;">
   				<h1 style="text-center">학과 지원률</h1>
  			</div>
  			<div class="card-body" style="height: 700px; margin:0 auto;">
			    <p class="card-text">
					<div id="carouselExampleControls" class="carousel slide" data-interval="false">
  						<div class="carousel-inner">
    						<div class="carousel-item active">
      							<div style = "width:1280px; height: 900px;">
     								<canvas id = "myChart"></canvas>
    		 					</div> 
    						</div>
				    		<div class="carousel-item">
				      			<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart1"></canvas>
				    		 	</div> 
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart2"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart3"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart4"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart5"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart6"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart7"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart8"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart9"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart10"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart11"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart12"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart13"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart14"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart15"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart16"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart17"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart18"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart19"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart20"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart21"></canvas>
				    		 	</div>
				    		</div>
				    		<div class="carousel-item">
				     		 	<div style = "width:1280px; height: 900px;">
				     				<canvas id = "myChart22"></canvas>
				    		 	</div>
				    		</div>
				  		</div>
  		<!-- 슬라이드 오른쪽, 왼쪽 버튼 -->
  						<button class="carousel-control-prev mt-5" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev"">
    						<img alt="" src="./image/left.png" style="width:80px;">
    						<span class="visually-hidden">Previous</span>
  						</button>
  						<button class="carousel-control-next mt-5" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
   							<img alt="" src="./image/right.png" style="width:80px;">
    						<span class="visually-hidden">Next</span>
  						</button>
	   				</div>
	   			</div>
			  </p> 
	 		</div>
	 			<div class="card-footer text-muted">학과별 상세 분석</div>
		</div>
	</div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const datas = Object.values(v_data.국제비서과);
				const acceptance_data = Object.values(a_data.국제비서과);
				const register_data = Object.values(r_data.국제비서과);
				const context = document.getElementById('myChart').getContext('2d');
				const myChart = new Chart(context, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : datas,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,				
						title : {
							display : true,
							text : '국제비서과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					} ,
					plugin : {
						align : 'end'
					}
				});
			});
		});
	});
	
	Chart.pluginService.register({
	    beforeDraw: function (chart, easing) {
	        if (chart.config.options.chartArea && chart.config.options.chartArea.backgroundColor) {
	            var helpers = Chart.helpers;
	            var ctx = chart.chart.ctx;
	            var chartArea = chart.chartArea;

	            ctx.save();
	            ctx.fillStyle = chart.config.options.chartArea.backgroundColor;
	            ctx.fillRect(chartArea.left, chartArea.top, chartArea.right - chartArea.left, chartArea.bottom - chartArea.top);
	            ctx.restore();
	        }
	    }
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.보건의료행정과);
				const acceptance_data = Object.values(a_data.보건의료행정과);
				const register_data = Object.values(r_data.보건의료행정과);
				const context1 = document.getElementById('myChart1')
						.getContext('2d');
				const myChart1 = new Chart(context1,
						{
							type : 'line',

							data : {
								labels : labels,
								datasets : [ {
									label : '지원자',
									backgroundColor : 'rgba(255, 0, 0, 0.2)',
									borderColor : 'red',
									pointBackgroundColor : 'white',
									data : volunteer_data,
									fill : false,
									tension : 0.3
								}, {
									label : '등록자',
									backgroundColor : 'rgba(0, 0, 255, 0.5)',
									borderColor : 'blue',
									pointBackgroundColor : 'white',
									data : acceptance_data,
									fill : false,
									tension : 0.3
								}, {
									label : '합격자',
									backgroundColor : 'rgba(0, 255, 0, 1)',
									borderColor : 'green',
									pointBackgroundColor : 'white',
									data : register_data,
									fill : false,
									tension : 0.3
								} ]
							},
							options : {
								plugins : {
									datalabels : {
										align : 'end',
										font : {
											weight : 'bold',
											size : 18
										}
									}
								} ,			
								title : {
									display : true,
									text : '보건의료행정과'
								} , 
								chartArea : {
									backgroundColor : 'rgba(255, 204, 204, 0.3)'
								}
							}
						});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.사회복지과);
				const acceptance_data = Object.values(a_data.사회복지과);
				const register_data = Object.values(r_data.사회복지과);
				const context2 = document.getElementById('myChart2')
						.getContext('2d');
				const myChart2 = new Chart(context2,
						{
							type : 'line',

							data : {
								labels : labels,
								datasets : [ {
									label : '지원자',
									backgroundColor : 'rgba(255, 0, 0, 0.2)',
									borderColor : 'red',
									pointBackgroundColor : 'white',
									data : volunteer_data,
									fill : false,
									tension : 0.3
								}, {
									label : '등록자',
									backgroundColor : 'rgba(0, 0, 255, 0.5)',
									borderColor : 'blue',
									pointBackgroundColor : 'white',
									data : acceptance_data,
									fill : false,
									tension : 0.3
								}, {
									label : '합격자',
									backgroundColor : 'rgba(0, 255, 0, 1)',
									borderColor : 'green',
									pointBackgroundColor : 'white',
									data : register_data,
									fill : false,
									tension : 0.3
								} ]
							},
							options : {
								plugins : {
									datalabels : {
										align : 'end',
										font : {
											weight : 'bold',
											size : 18
										}
									}
								} ,			
								title : {
									display : true,
									text : '사회복지과'
								} ,
								chartArea : {
									backgroundColor : 'rgba(255, 204, 204, 0.3)'
								}
							}
						});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.세무회계과);
				const acceptance_data = Object.values(a_data.세무회계과);
				const register_data = Object.values(r_data.세무회계과);
				const context3 = document.getElementById('myChart3')
						.getContext('2d');
				const myChart3 = new Chart(context3, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '세무회계과'
						} ,
					chartArea : {
						backgroundColor : 'rgba(255, 204, 204, 0.3)'
					}
				}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.아동미술지도과);
				const acceptance_data = Object.values(a_data.아동미술지도과);
				const register_data = Object.values(r_data.아동미술지도과);
				const context4 = document.getElementById('myChart4')
						.getContext('2d');
				const myChart4 = new Chart(context4, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '아동미술지도과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.아동보육과);
				const acceptance_data = Object.values(a_data.아동보육과);
				const register_data = Object.values(r_data.아동보육과);
				const context5 = document.getElementById('myChart5')
						.getContext('2d');
				const myChart5 = new Chart(context5, {
					type : 'line',
					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '아동보육과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.유아교육과);
				const acceptance_data = Object.values(a_data.유아교육과);
				const register_data = Object.values(r_data.유아교육과);
				const context6 = document.getElementById('myChart6')
						.getContext('2d');
				const myChart6 = new Chart(context6, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '유아교육과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.호텔관광경영과);
				const acceptance_data = Object.values(a_data.호텔관광경영과);
				const register_data = Object.values(r_data.호텔관광경영과);
				const context7 = document.getElementById('myChart7')
						.getContext('2d');
				const myChart7 = new Chart(context7, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '호텔관광경영과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.효충사관과);
				const acceptance_data = Object.values(a_data.효충사관과);
				const register_data = Object.values(r_data.효충사관과);
				const context8 = document.getElementById('myChart8')
						.getContext('2d');
				const myChart8 = new Chart(context8, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '효충사관과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.뷰티케어과);
				const acceptance_data = Object.values(a_data.뷰티케어과);
				const register_data = Object.values(r_data.뷰티케어과);
				const context9 = document.getElementById('myChart9')
						.getContext('2d');
				const myChart9 = new Chart(context9, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '뷰티케어과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.호텔외식조리과);
				const acceptance_data = Object.values(a_data.호텔외식조리과);
				const register_data = Object.values(r_data.호텔외식조리과);
				const context10 = document.getElementById('myChart10')
						.getContext('2d');
				const myChart10 = new Chart(context10, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '호텔외식조리과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.간호학과);
				const acceptance_data = Object.values(a_data.간호학과);
				const register_data = Object.values(r_data.간호학과);
				const context11 = document.getElementById('myChart11')
						.getContext('2d');
				const myChart11 = new Chart(context11, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '간호학과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.호텔외식서비스과);
				const acceptance_data = Object.values(a_data.호텔외식서비스과);
				const register_data = Object.values(r_data.호텔외식서비스과);
				const context12 = document.getElementById('myChart12')
						.getContext('2d');
				const myChart12 = new Chart(context12, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '호텔외식서비스과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.융합소프트웨어과);
				const acceptance_data = Object.values(a_data.융합소프트웨어과);
				const register_data = Object.values(r_data.융합소프트웨어과);
				const context13 = document.getElementById('myChart13')
						.getContext('2d');
				const myChart13 = new Chart(context13, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '융합소프트웨어과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.정보통신과);
				const acceptance_data = Object.values(a_data.정보통신과);
				const register_data = Object.values(r_data.정보통신과);
				const context14 = document.getElementById('myChart14')
						.getContext('2d');
				const myChart14 = new Chart(context14, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '정보통신과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.IT경영과);
				const acceptance_data = Object.values(a_data.IT경영과);
				const register_data = Object.values(r_data.IT경영과);
				const context15 = document.getElementById('myChart15')
						.getContext('2d');
				const myChart15 = new Chart(context15, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : 'IT경영과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.게임콘텐츠과);
				const acceptance_data = Object.values(a_data.게임콘텐츠과);
				const register_data = Object.values(r_data.게임콘텐츠과);
				const context16 = document.getElementById('myChart16')
						.getContext('2d');
				const myChart16 = new Chart(context16, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '게임콘텐츠과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.공간디자인과);
				const acceptance_data = Object.values(a_data.공간디자인과);
				const register_data = Object.values(r_data.공간디자인과);
				const context17 = document.getElementById('myChart17')
						.getContext('2d');
				const myChart17 = new Chart(context17, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '공간디자인과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.건축과);
				const acceptance_data = Object.values(a_data.건축과);
				const register_data = Object.values(r_data.건축과);
				const context18 = document.getElementById('myChart18')
						.getContext('2d');
				const myChart18 = new Chart(context18, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '건축과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.소방안전관리과);
				const acceptance_data = Object.values(a_data.소방안전관리과);
				const register_data = Object.values(r_data.소방안전관리과);
				const context19 = document.getElementById('myChart19')
						.getContext('2d');
				const myChart19 = new Chart(context19, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '소방안전관리과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.영상콘텐츠과);
				const acceptance_data = Object.values(a_data.영상콘텐츠과);
				const register_data = Object.values(r_data.영상콘텐츠과);
				const context20 = document.getElementById('myChart20')
						.getContext('2d');
				const myChart20 = new Chart(context20, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '영상콘텐츠과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.공연예술과);
				const acceptance_data = Object.values(a_data.공연예술과);
				const register_data = Object.values(r_data.공연예술과);
				const context21 = document.getElementById('myChart21')
						.getContext('2d');
				const myChart21 = new Chart(context21, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '공연예술과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>
<script>
	$.getJSON("resources/department_volunteer.json", function(v_data) {
		$.getJSON("resources/department_acceptance.json", function(a_data) {
			$.getJSON("resources/department_register.json", function(r_data) {
				const labels = Object.values(v_data.year);
				const volunteer_data = Object.values(v_data.레포츠태권도과);
				const acceptance_data = Object.values(a_data.레포츠태권도과);
				const register_data = Object.values(r_data.레포츠태권도과);
				const context22 = document.getElementById('myChart22')
						.getContext('2d');
				const myChart22 = new Chart(context22, {
					type : 'line',

					data : {
						labels : labels,
						datasets : [ {
							label : '지원자',
							backgroundColor : 'rgba(255, 0, 0, 0.2)',
							borderColor : 'red',
							pointBackgroundColor : 'white',
							data : volunteer_data,
							fill : false,
							tension : 0.3
						}, {
							label : '등록자',
							backgroundColor : 'rgba(0, 0, 255, 0.5)',
							borderColor : 'blue',
							pointBackgroundColor : 'white',
							data : acceptance_data,
							fill : false,
							tension : 0.3
						}, {
							label : '합격자',
							backgroundColor : 'rgba(0, 255, 0, 1)',
							borderColor : 'green',
							pointBackgroundColor : 'white',
							data : register_data,
							fill : false,
							tension : 0.3
						} ]
					},
					options : {
						plugins : {
							datalabels : {
								align : 'end',
								font : {
									weight : 'bold',
									size : 18
								}
							}
						} ,			
						title : {
							display : true,
							text : '레포츠태권도과'
						} ,
						chartArea : {
							backgroundColor : 'rgba(255, 204, 204, 0.3)'
						}
					}
				});
			});
		});
	});
</script>

</body>
</html>

