<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>경민대학교 입시분석</title>
	<!-- 부트스트랩, 커스텀 CSS 추가하기 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" href="./css/custom.css">
	<script
	src="https://kit.fontawesome.com/2d323a629b.js"
	></script>
	<script src="./js/main.js" defer></script>
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<script type = "text/javascript" src = "https://www.google.com/jsapi"></script>
<script type = "text/javascript" src = "http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>	


    <!-- 대학 지원 종류 수시/정시 현황 차트 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.3.0/chart.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
<body>
	<header>
	<nav class="navbar" style="background-color: #B4D8E7;">
	  <div class="navbar_logo">
		<img alt="" src="./image/KM_Main.jpg">
		<a class="navbar-brand" href="Main.jsp">KM-Signal</a>
	  </div>
		<ul class="navbar_menu">
		<li><a href="university.jsp?pageChange=university_menu_1.jsp">대학정보</a></li>
		<li><a href="department.jsp">학과정보</a></li>
		</ul>
		<ul class ="navbar_icons">
		<li><i></i></li>
		<li><i></i></li>
		</ul>
		<a href="#" class="navbar_toogleBtn">
		<i class="fas fa-bars"></i>
		</a>
	</nav>
	</header>
	<main class="container text-center">
  <div class="bg-light p-5 rounded">
    <h1>경민대학교 입시 홈페이지</h1>
  </div>
</main>
	<section>
	<div class="container mt-5">
		<div class = "row">
			<div class="col">
				<div class="card">
				  <div class="card-header text-center">
				    <h1>경민대 입시 현황</h1>
				  </div>
				  <div class="card-body">
				   	<canvas id="myChart3" width="600" height="350"></canvas>
				   	<script>
				   	$.getJSON("resources/examination.json", function(data) {
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
			      <th scope="col"><h2>년도별</h2></th>
			      <th scope="col"><h2>지원자</h2></th>
			      <th scope="col"><h2>합격자</h2></th>
			      <th scope="col"><h2>등록자</h2></th>
			    </tr>
			  </thead>
			  <tbody id = "target">
			   
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
   				<h1>학교 특성별 지원율</h1>
  			</div>
	  		<div class="card-body">
			    <canvas id="myChart2" width="350" height="310"></canvas>
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
			        			label: '지원자',
			        			lineTension : 0.1,
			        			data: datas,
			        			backgroundColor: ["rgba(255, 99, 132, 0.2)",
			        				'rgb(255, 205, 86)',
			        				'rgb(255, 186, 110)',
			        				'rgb(255, 220, 190)'
			        				],
			        				hoverOffset: 4
			        				}]
			        },
			        options: {
			        	responsive: false,
			        	title:{
			        		display: true,
			        		}
			        }
			        });
			          var options = {
			                  tooltips: {
			                enabled: false
			           },
			                    plugins: {
			                   datalabels: {
			                       formatter: (value, context2) => {
			                       
			                         let sum = 0;
			                         let dataArr = context2.chart.data.datasets[0].data;
			                         dataArr.map(data => {
			                             sum += data;
			                         });
			                         let percentage = (value * 100 / sum).toFixed(2) + "%";
			                         return percentage;

			                     
			                       },
			                       color: '#fff',
			                            }
			               }
			           };
			        });
			        </script>
			    <a href="university.jsp?pageChange=university_menu_2.jsp" class="btn btn-primary">이동</a>  
	 		 </div>
			</div>
			</div>
			<div class="col">
			<div class="card">
 			 <div class="card-header">
   				 <h2>지원 종류별(수시/정시)</h2>
  			</div>
	  		<div class="card-body">
			        <canvas id="myChart" width="350" height="310"></canvas>
			        <script>
			        $.getJSON("resources/volunteer_attribute.json", function(data) {
			        	const labels = Object.values(data.attribute);
			        	const datas = Object.values(data.y_twenty_one);
			        	const context = document.getElementById('myChart').getContext('2d');
			        	const myChart = new Chart(context, {
			        	type : 'doughnut',
			        	
			        	data: {
			        		labels : labels,
			        		datasets: [{
			        			label: '지원자',
			        			lineTension : 0.1,
			        			data: datas,
			        			backgroundColor: ["rgba(255, 99, 132, 0.2)",
			        				'rgb(255, 205, 86)'
			        				],
			        				hoverOffset: 4
			        				}]
			        },
			        options: {
			        	responsive: false,
			        	title:{
			        		display: true,
			        		}
			        }
			        });
			          var options = {
			                  tooltips: {
			                enabled: false
			           },
			                    plugins: {
			                   datalabels: {
			                       formatter: (value, context) => {
			                       
			                         let sum = 0;
			                         let dataArr = context.chart.data.datasets[0].data;
			                         dataArr.map(data => {
			                             sum += data;
			                         });
			                         let percentage = (value * 100 / sum).toFixed(2) + "%";
			                         return percentage;

			                     
			                       },
			                       color: '#fff',
			                            }
			               }
			           };
			        });
			        </script>
			    <a href="university.jsp?pageChange=university_menu_3.jsp" class="btn btn-primary">이동</a>
	 		 </div>
			</div>
			</div>
			<div class="col">
			<div class="card">
		 <div class="card-header">
   				 <h1>지역별 지원 현황</h1>
   			</div>
   			<div class="card-body">
   			<canvas id="myChart1" width="400" height="300"></canvas>
			        <script>
			        var data = [{
			            labels: ['서울','경기도','강원도','경상도','전라도','충청도','광역시','제주도'],
			            backgroundColor: [
			                "#4b77a9",
			                "#5f255f",
			                "#d21243",
			                "#B27200"
			            ],
			            borderColor: "#fff"
			        }];
			        
			           var options = {
			           tooltips: {
			         enabled: false
			    },
			             plugins: {
			            datalabels: {
			                formatter: (value, context1) => {

			                    let datasets = context1.chart.data.datasets;

			                    if (datasets.indexOf(context1.dataset) === datasets.length - 1) {
			                        let sum = 0;
			                        datasets.map(dataset => {
			                            sum += dataset.data[context1.dataIndex];
			                        });
			                        let percentage = Math.round((value / sum) * 100) + "%";
			                        return percentage;
			                    } else {
			                        return percentage;
			                    }
			                },
			                color: '#fff',
			                     }
			        }
			    };
			    $.getJSON("resources/volunteer_area.json", function(data) {
			    	const labels = Object.values(data.area);
			    	const datas = Object.values(data.y_twenty_one);
					const context1 = document.getElementById('myChart1').getContext('2d');
					const myChart1 = new Chart(context1, {
					type : 'bar',
					
					data: {
						labels:labels,
						datasets: [{
							label: '지원자',
							lineTension : 0.1,
							data: datas,
							backgroundColor: "rgba(255, 99, 132, 0.2)"
						}]
					},
					options: {
						responsive: false,
						title:{
							display: true,
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
   				 <h1>경민대 학과 종류</h1>
   				 </div>
  				<div class="card-body">
  				<canvas id="myChart7" width="400" height="300"></canvas>
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
								lineTension : 0.1,
								data : volunteerData,
								backgroundColor : "rgba(255, 99, 132, 0.2)"
							}, {
								label : '합격자',
								lineTension : 0.1,
								data : acceptanceData,
								backgroundColor : "rgba(54, 162, 235, 0.2)"
							}, {
								label : '등록자',
								lineTension : 0.1,
								data : registerData,
								backgroundColor : "rgba(255, 206, 86, 0.2)"
							}]
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
	
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<script src="./js/pooprer.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
</body>
</html>