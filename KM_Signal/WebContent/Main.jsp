<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경민대학교 입시분석</title>
</head>
<script type = "text/javascript" src = "https://www.google.com/jsapi"></script>
<script type = "text/javascript" src = "http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type = "text/javascript">
	//Visualization API 및 corechart 패키지를 로드
	google.load("visualization","1", {packages:["corechart"]});
	//API가 로드될 때 실행할 콜백을 설정
	google.setOnLoadCallback(drawChart);
	google.setOnLoadCallback(drawChart2);
	google.setOnLoadCallback(drawChart3);
	function drawChart() 
	{ 
		var data = google.visualization.arrayToDataTable( [["KM","Registration"],["지원자",13266],["합격자",9684],["등록자",1371]] );
		var options = { title: "2021년 경민대학교 지원율" };
		var chart = new google.visualization.PieChart(document.getElementById("employee_piechart")); 
		chart.draw(data, options); 
	}
	function drawChart2() 
	{ 
		var data = google.visualization.arrayToDataTable( [["KM","Registration"],["일반고",8325],["특성화고",4236]] );
		var options = { title: "2021년 학교 특성별 지원율" };
		var chart = new google.visualization.PieChart(document.getElementById("employee_piechart2")); 
		chart.draw(data, options); 
	}
	function drawChart3() 
	{ 
		var data = google.visualization.arrayToDataTable( [["KM","Registration"],["수시",9574],["정시",3733]] );
		var options = { title: "2021년 경민대학교 지원종류" };
		var chart = new google.visualization.PieChart(document.getElementById("employee_piechart3")); 
		chart.draw(data, options); 
	}
</script>
<body>
	<header>
		<h1>
		<img src = "https://ipsi.kcce.or.kr/file/UNIV_LOGO/2017_73007000_1493367019185.jpg" width = "100" height = "100">
		<a href = "Main.jsp">KM-Signal</a>
		</h1>
		<hr>
	</header>
	<div id = "employee_piechart" style = "width :700px; height:500px;"></div>
	<div id = "employee_piechart2" style = "width :700px; height:500px;"></div>
	<div id = "employee_piechart3" style = "width :700px; height:500px;"></div>
</body>
</html>