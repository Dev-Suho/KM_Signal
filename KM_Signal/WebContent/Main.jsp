<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>경민대학교 입시분석</title>
	
<!-- 부트스트랩, 커스텀 CSS 추가하기 -->
<link rel="stylesheet" href="./css/custom2.css">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<!-- getJSON 사용 -->
<script type = "text/javascript" src = "http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<!-- 대학 지원 종류 수시/정시 현황 차트 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.3.0/chart.min.js"></script>

<!-- chart.js 값 표시 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    
</head>
<body>
	<header>
	<style type = "text/css">
		a { text-decoration:none }
	</style>
	
	<!-- header 부분 -->
	<nav class="navbar" style="background-color: #B0C4DE">
	  <div class="navbar_logo">
		<img alt="Main.jsp" src="./image/KM_Main.jpg">
		<a class="navbar-brand"  href="Main.jsp">KM-Signal</a>
	  </div>
		<ul class="navbar_menu">
		<li><a href="university.jsp?pageChange=university_menu_1.jsp">대학정보</a></li>&nbsp;&nbsp;&nbsp;
		<li><a href="department.jsp">학과정보</a></li>&nbsp;&nbsp;&nbsp;
		<li><a href="map.jsp">지도보기</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<li><a href="ranking.jsp">순위현황</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</ul>
		
		<ul class ="navbar_icons">
		</ul>
	</nav>
	</header>
	<main class="container text-center">
  <div class="bg-light p-5 rounded">
    <h1>경민대학교 입시분석 홈페이지</h1>
  </div>
</main>
	<section>
	<div class="container mt-5">
			<div class="row">
				<div class="col">
					<div class="card">
						<div class="card-header text-center">
							<h1>경민대학교 지원자 통계</h1>
						</div>
						<div class="card-body">
							<canvas id="myChart3" width="600" height="350"></canvas>
							<script>
				   	$.getJSON("resources/examination.json", function(data) {  //json 가져옴
				   	const labels = Object.values(data.examination);
				   	const datas1 = Object.values(data.a1);
				   	const datas2 = Object.values(data.a2);
				   	const datas3 = Object.values(data.a3);
			        const context3 = document.getElementById('myChart3').getContext('2d');
			        const myChart3 = new Chart(context3, {
			        		  type: 'horizontalBar',
			        		  data: {
			        		    labels: labels,
			        		    datasets: [
			        		      {
			        		        data: datas1,
			        		        backgroundColor: 'rgba(255, 99, 132, 0.2)',
			        		        label: '지원자'
			        		        
			        		      },
			        		      {
			        		        data: datas2,
			        		        backgroundColor: 'rgba(54, 162, 235, 0.5)',
			        		        label: '합격자'
			        		        	
			        		      },
			        		      {
				        		        data: datas3,
				        		        backgroundColor: 'rgba(75, 192, 192, 0.5)',
				        		        label: '등록자'
				        		     
				        		  },
				        		  
			        		    ]
			        		  },
			        		  options: {
			        			  plugins : {
			        					datalabels : {
			        						font : {
			        							weight : 'bold'
			        						}
			        					}
			        				} ,	
			        			  responsive: false,
			        		    scales: {
			        		      xAxes: [{
			        		        ticks: {
			        		          beginAtZero: true
			        		        }
			        		      }]
			        		    }
			        		  }
			        		});
				   	});
			        </script>
						</div>
					</div>
				</div>
				<div class="col">
					<table class="table table-striped text-center">
						<thead>
							<tr>
								<th scope="col"><h2>연도별</h2></th>
								<th scope="col"><h2>지원자</h2></th>
								<th scope="col"><h2>합격자</h2></th>
								<th scope="col"><h2>등록자</h2></th>
							</tr>
						</thead>
						<tbody id="target">

						</tbody>
					</table>
				</div>
			</div>
			<script type="text/javascript">
				        var target = $('#target');
			       		$.getJSON("resources/examination.json", function(data) {
			        	const labels = Object.values(data.examination);
			        	const datas1 = Object.values(data.a1);
			        	const datas2 = Object.values(data.a2);
			        	const datas3 = Object.values(data.a3);
			        	
			        	for(i=0;i<labels.length; i++){
			        		
			        	var add_data ='';
			        	add_data += '<tr>';

						add_data += '<td>';
						add_data += '<h4>'+labels[i]+'</h4>';
						add_data += '</td>';

						add_data += '<td>';
						add_data += '<h4>'+datas1[i]+ '명'+'</h4>';
						add_data += '</td>';

						add_data += '<td>';
						add_data += '<h4>'+datas2[i]+ '명'+'</h4>';
						add_data += '</td>';
						
						add_data += '<td>';
						add_data += '<h4>'+datas3[i]+ '명'+'</h4>';
						add_data += '</td>';

						add_data += '</tr>';
						target.append(add_data);
			        	}
			        });
			        	</script>
			<hr>
			<div class="container mt-5 text-center"> 
		<div class = "row">
			<div class="col">
			<div class="card">
 			 <div class="card-header">
   				<h3>2021년 학교 특성별 지원율</h3>
  			</div>
	  		<div class="card-body">
			    <canvas id="myChart2" width="350" height="350"></canvas>
			        <script>
			        $.getJSON("resources/school_attribute.json", function(data) {
			        	const labels = Object.values(data.attribute);
			        	const datas = Object.values(data.y_twenty_one);
			      	 	const context2 = document.getElementById('myChart2').getContext('2d');
			       	 	const myChart2 = new Chart(context2, {
			        	type : 'doughnut',
			        	
			        	data: {
			        		labels: labels,
			        		datasets: [{
			        			data: datas,
			        			backgroundColor: [
			        				"rgba(255, 99, 132, 0.3)",
			        				'rgba(55, 205, 155, 0.3)',
			        				'rgba(255, 186, 110, 0.3)',
			        				'rgba(55, 104, 255, 0.3)'
			        				],
			        				hoverOffset: 4
			        				}]
			        },
			        options: {
			        	plugins : {
			    			datalabels : {
			    				font : {
			    					weight : 'bold',
			    					size : 16
			    				}
			    			}
			    		} ,	
			        	responsive: false,
			        	title:{
			        		display: true,
			        		}
			        }
			        });
			        });
			        </script>
			    <a href="university.jsp?pageChange=university_menu_2.jsp" class="btn btn-primary">이동</a>  
	 		 </div>
			</div>
			</div>
			<div class="col">
			<div class="card">
 			 <div class="card-header">
   				 <h3>2021년 수시/정시 비율</h3>
  			</div>
					<div class="card-body">
					<canvas id="myChart" width="350" height="350"></canvas>
					<script>
			        $.getJSON("resources/volunteer_attribute.json", function(data) {
			        	const labels = Object.values(data.attribute);  //차트의 라벨
			        	const datas = Object.values(data.y_twenty_one);  //db 열 가져옴
			        	const context = document.getElementById('myChart').getContext('2d'); //형식
			        	const myChart = new Chart(context, {  
			        	type : 'doughnut',  //도넛모양
			        	
			        	data: {
			        		labels : labels,
			        		datasets: [{
			        			label: '지원자',
			        			lineTension : 0.1,  //선의 굴곡
			        			data: datas,
			        			backgroundColor: 
			        				['rgba(55, 104, 255, 0.3)',
				        				'rgba(255, 186, 50, 0.3)'
			        				],
			        				hoverOffset: 4  //좌표
			        				}]
			        },
			        options: {   //폰트 사이즈, 굵기
			        	plugins : {
			    			datalabels : {
			    				font : {
			    					weight : 'bold',
			    					size : 18
			    				}
			    			}
			    		} ,	
			        	responsive: false,  //크기 고정
			        }
			        });
			        });
			        </script>
					<a href="university.jsp?pageChange=university_menu_3.jsp" class="btn btn-primary">이동</a>
					</div>
				</div>
			</div>
			<div class="col">
			<div class="card">
		 <div class="card-header">
   				 <h3>2021년 지역별 지원현황</h3>
   			</div>
   			<div class="card-body">
   			<canvas id="myChart1" width="350" height="350"></canvas>
			        <script>
			        
			    $.getJSON("resources/volunteer_area.json", function(data) {
			    	const labels = Object.values(data.area);
			    	const datas = Object.values(data.y_twenty_one);
					const context1 = document.getElementById('myChart1').getContext('2d');
					const myChart1 = new Chart(context1, {
					type : 'bar',
					
					data: {
						labels:labels,
						datasets: [{
							data: datas,
							backgroundColor: 
		        				['rgba(55, 104, 255, 0.4)',
			        				'rgba(255, 55, 55, 0.4)',
			        				'rgba(105, 105, 105, 0.4)',
			        				'rgba(55, 55, 255, 0.4)',
			        				'rgba(105, 105, 255, 0.4)',
			        				'rgba(255, 105, 105, 0.4)'
		        				],
		        				borderWidth : 1  //선 굵기
						}]
					},
					options: {
						plugins : {
							datalabels : {
								font : {
									weight : 'bold',
								}
							}
						} ,	
						responsive: false,
						legend: {
				            display: false
						}
					}
					});
				    });
				        </script>
	  					<a href="university.jsp?pageChange=university_menu_1.jsp" class="btn btn-primary">이동</a>
  					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container mt-5 text-center">
	<div class = "row">
	<div class="col">
		<div class="card">
  			 <div class="card-header">
   				 <h1>2021년 경민대 학과별 지원자</h1>
   				 </div>
  				<div class="card-body">
  				<canvas id="myChart7" width="400" height="180"></canvas>
				<script>
					$.getJSON("resources/json_test.json", function(data) {
					const labels = Object.values(data.department);
					const volunteerData = Object.values(data.volunteer);
					const acceptanceData = Object.values(data.acceptance);	
					const registerData = Object.values(data.register);
					
					const context7 = document.getElementById('myChart7').getContext('2d');
					const myChart7 = new Chart(context7, {
						type : 'bar',
						data : {
							labels : labels,
							datasets : [{
								label : '지원자',
								data : volunteerData,
								backgroundColor : "rgba(255, 99, 132, 0.2)",
								
							}, {
								label : '합격자',
								data : acceptanceData,
								backgroundColor : "rgba(54, 162, 235, 0.2)"
							}, {
								label : '등록자',
								data : registerData,
								backgroundColor : "rgba(255, 206, 86, 0.2)"
							}]
						},
						options : {
							plugins : {
								datalabels : {
									font : {
										weight : 'bold',
										size : 10
									}
								}
							} 
						}
					});
				});
				</script>
  					<a href="./department.jsp" class="btn btn-primary">이동</a>
  			</div>
  			</div>
		</div>
	</div>
	</div>
	</div>
		
	</section>

</body>
</html>