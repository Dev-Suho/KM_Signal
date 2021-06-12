<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
		<div class="container mt-5 text-center"> 
		<div class = "row">
			<div class="col">
			<div class="card">
 			 <div class="card-header bg-info">
   				<h1 style="text-center">연도별 지원 비율</h1>
   				
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
	 		   	<a href="department.jsp?pageChange=section2.jsp" class="btn btn-secondary" style="float:right; margin: 0 auto;">학과별 지원현황 보러가기</a>
  				</div>
			</div>
			</div>
		</div>
	</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script>
$.getJSON("resources/university_attribute.json", function(data) {
	const labels = Object.values(data.attribute);
	const datas = Object.values(data.Y2017);
	const context = document.getElementById('myChart').getContext('2d');
	const myChart = new Chart(context, {
	type : 'pie',
	
	data: {
		labels:labels,
		datasets: [{
			label: '지원자',
			lineTension : 0.1,
			data: datas,
			backgroundColor: ["#FF8B8B",
				'#61BFAD'
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		title:{
			display: true,
			fontSize: 30,
			text:'2017년도'
		}
	}
	});
});
</script>
<script>
$.getJSON("resources/university_attribute.json", function(data) {
	const labels = Object.values(data.attribute);
	const datas = Object.values(data.Y2018);
	const context1 = document.getElementById('myChart1').getContext('2d');
	const myChart1 = new Chart(context1, {
		type : 'pie',
		
		data: {
			labels:labels,
			datasets: [{
				label: '지원자',
				lineTension : 0.1,
				data: datas,
			backgroundColor: ["#FF8B8B",
				'#61BFAD'
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		title:{
			display: true,
			fontSize: 30,
			text:'2018년도'
		}
	}
	});
});
</script>
<script>
$.getJSON("resources/university_attribute.json", function(data) {
	const labels = Object.values(data.attribute);
	const datas = Object.values(data.Y2019);
	const context2 = document.getElementById('myChart2').getContext('2d');
	const myChart2 = new Chart(context2, {
		type : 'pie',
		
		data: {
			labels:labels,
			datasets: [{
				label: '지원자',
				lineTension : 0.1,
				data: datas,
			backgroundColor: ["#FF8B8B",
				'#61BFAD'
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		title:{
			display: true,
			fontSize: 30,
			text:'2019년도'
		}
	}
	});
});
</script>
<script>
$.getJSON("resources/university_attribute.json", function(data) {
	const labels = Object.values(data.attribute);
	const datas = Object.values(data.Y2020);
	const context3 = document.getElementById('myChart3').getContext('2d');
	const myChart3 = new Chart(context3, {
		type : 'pie',
		
		data: {
			labels:labels,
			datasets: [{
				label: '지원자',
				lineTension : 0.1,
				data: datas,
			backgroundColor: ["#FF8B8B",
				'#61BFAD'
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		title:{
			display: true,
			fontSize: 30,
			text:'2020년도'
		}
	}
	});
});
</script>
<script>
$.getJSON("resources/university_attribute.json", function(data) {
	const labels = Object.values(data.attribute);
	const datas = Object.values(data.Y2021);
	const context4 = document.getElementById('myChart4').getContext('2d');
	const myChart4 = new Chart(context4, {
		type : 'pie',
		
		data: {
			labels:labels,
			datasets: [{
				label: '지원자',
				lineTension : 0.1,
				data: datas,
			backgroundColor: ["#FF8B8B",
				'#61BFAD'
			    ],
			    hoverOffset: 4
		}]
	},
	options: {
		title:{
			display: true,
			fontSize: 30,
			text:'2021년도'
		}
	}
	});
});
</script>
</body>
</html>