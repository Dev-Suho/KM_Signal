<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div class="container mt-5 text-center"> 
		<div class = "row">
			<div class="col">
			<div class="card">
 			 <div class="card-header">
   				<h1 style="text-center">수시 / 정시 총지원현황
   				<a href="department.jsp?pageChange=section2.jsp" class="btn btn-primary" style="float:right;">학과별 지원현황</a></h1>
  			</div>
	  		<div class="card-body" style="height:700px;  margin: 0 auto;">
			    <p class="card-text">
			    <div id="carouselExampleControls" class="carousel slide" data-interval="false">
  					<div class="carousel-inner">
    					<div class="carousel-item active text-center">
      						<div style = "width:600px; height: 600px;">
     							<canvas id = "myChart"></canvas>
    		 				</div> 
    					</div>
    				<div class="carousel-item text-center">
      					<div style = "width:600px; height: 600px;">
     						<canvas id = "myChart1"></canvas>
    		 			</div> 
    				</div>
			    	<div class="carousel-item text-center">
      					<div style = "width:600px; height: 600px;">
     						<canvas id = "myChart2"></canvas>
    		 			</div> 
    				</div>
    				<div class="carousel-item text-center">
      					<div style = "width:600px; height: 600px;">
     						<canvas id = "myChart3"></canvas>
    		 			</div> 
    				</div>
    				<div class="carousel-item text-center">
      					<div style = "width:600px; height: 600px;">
     						<canvas id = "myChart4"></canvas>
    		 			</div> 
    				</div>
			    </div>
  		<button class="carousel-control-prev mt-5" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    		<img alt="" src="./image/left.png" style="width:80px;">
    		<span class="visually-hidden">Previous</span>
  		</button>
  		<button class="carousel-control-next mt-5" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
   			<img alt="" src="./image/right.png" style="width:80px;">
    		<span class="visually-hidden">Next</span>
  		</button>
	   </div>
			    </p> 
	 		 </div>
	 		   	<div class="card-footer text-muted">
	 		   	2017년~2021년
  				</div>
			</div>
			</div>
		</div>
	</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script>
	const context = document.getElementById('myChart').getContext('2d');
	const myChart = new Chart(context, {
	type : 'doughnut',
	
	data: {
		labels:['수시','정시'],
		datasets: [{
			label: '지원자',
			lineTension : 0.1,
			data: ['151','211'],
			backgroundColor: ["rgba(255, 99, 132, 0.2)",
				'rgb(255, 205, 86)'
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		title:{
			display: true,
			text:'2017년도'
		}
	}
	});
</script>
<script>
	const context1 = document.getElementById('myChart1').getContext('2d');
	const myChart1 = new Chart(context1, {
	type : 'doughnut',
	
	data: {
		labels:['수시','정시'],
		datasets: [{
			label: '지원자',
			lineTension : 0.1,
			data: ['151','211'],
			backgroundColor: ["rgba(255, 99, 132, 0.2)",
				'rgb(255, 205, 86)'
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		title:{
			display: true,
			text:'2017년도'
		}
	}
	});
</script>
<script>
	const context2 = document.getElementById('myChart2').getContext('2d');
	const myChart2 = new Chart(context2, {
	type : 'doughnut',
	
	data: {
		labels:['수시','정시'],
		datasets: [{
			label: '지원자',
			lineTension : 0.1,
			data: ['151','211'],
			backgroundColor: ["rgba(255, 99, 132, 0.2)",
				'rgb(255, 205, 86)'
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		title:{
			display: true,
			text:'2017년도'
		}
	}
	});
</script>
<script>
	const context3 = document.getElementById('myChart3').getContext('2d');
	const myChart3 = new Chart(context3, {
	type : 'doughnut',
	
	data: {
		labels:['수시','정시'],
		datasets: [{
			label: '지원자',
			lineTension : 0.1,
			data: ['151','211'],
			backgroundColor: ["rgba(255, 99, 132, 0.2)",
				'rgb(255, 205, 86)'
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		title:{
			display: true,
			text:'2017년도'
		}
	}
	});
</script>
<script>
	const context4 = document.getElementById('myChart4').getContext('2d');
	const myChart4 = new Chart(context4, {
	type : 'doughnut',
	
	data: {
		labels:['수시','정시'],
		datasets: [{
			label: '지원자',
			lineTension : 0.1,
			data: ['151','211'],
			backgroundColor: ["rgba(255, 99, 132, 0.2)",
				'rgb(255, 205, 86)'
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		title:{
			display: true,
			text:'2017년도'
		}
	}
	});
</script>
</body>
</html>