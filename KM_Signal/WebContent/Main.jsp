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
	crossorigin="anonymous"
	></script>
	<script src="./js/main.js" defer></script>
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
	google.setOnLoadCallback(drawChart4);
	google.setOnLoadCallback(drawChart5);
	google.setOnLoadCallback(drawChart6);
	google.setOnLoadCallback(drawChart7);
	google.setOnLoadCallback(drawChart8);
	google.setOnLoadCallback(drawChart9);
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
	function drawChart4() 
	{ 
		var data = google.visualization.arrayToDataTable( [["KM","Registration"],["지원자",182],["합격자",80],["등록자",35]] );
		var options = { title: "2020년 융합소프트웨어 지원율" };
		var chart = new google.visualization.PieChart(document.getElementById("dept_piechart")); 
		chart.draw(data, options); 
	}
	function drawChart5() 
	{ 
		var data = google.visualization.arrayToDataTable( [["KM","Registration"],["지원자",200],["합격자",62],["등록자",37]] );
		var options = { title: "2020년 정보통신과 지원율" };
		var chart = new google.visualization.PieChart(document.getElementById("dept_piechart2")); 
		chart.draw(data, options); 
	}
	function drawChart6() 
	{ 
		var data = google.visualization.arrayToDataTable( [["KM","Registration"],["지원자",230],["합격자",72],["등록자",42]] );
		var options = { title: "2020년 국제비서과 지원율" };
		var chart = new google.visualization.PieChart(document.getElementById("dept_piechart3")); 
		chart.draw(data, options); 
	}
	function drawChart7() 
	{ 
		var data = google.visualization.arrayToDataTable( [["KM","Registration"],["지원자",326],["합격자",132],["등록자",32]] );
		var options = { title: "2020년 유아교육과 지원율" };
		var chart = new google.visualization.PieChart(document.getElementById("dept_piechart4")); 
		chart.draw(data, options); 
	}
	function drawChart8() 
	{ 
		var data = google.visualization.arrayToDataTable( [["KM","Registration"],["지원자",352],["합격자",87],["등록자",40]]);
		var options = { title: "2020년 보건의료행정과 지원율" };
		var chart = new google.visualization.PieChart(document.getElementById("dept_piechart5")); 
		chart.draw(data, options); 
	}
	function drawChart9() 
	{ 
		var data = google.visualization.arrayToDataTable( [["KM","Registration"],["지원자",524],["합격자",169],["등록자",37]] );
		var options = { title: "2020년 간호학과 지원율" };
		var chart = new google.visualization.PieChart(document.getElementById("dept_piechart6")); 
		chart.draw(data, options); 
	}
</script>
<body>
	<header>
	<nav class="navbar">
	  <div class="navbar_logo">
		<img alt="" src="./image/KM_Main.jpg">
		<a class="navbar-brand" href="Main.jsp">KM-Signal</a>
	  </div>
		<ul class="navbar_menu">
		<li><a href="#">대학정보</a></li>
		<li><a href="#">대학정보</a></li>
		<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          학과 정보
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a href="#">학과 지원률</a>
          <a href="#">학과 취업률</a>
          <a href="#">수시 / 정시 </a>
          <a href="#">학과 등록금 환불 </a>
        </div>
        <li><a href="#">대학정보</a></li>
		</ul>
		<ul class ="navbar_icons">
		<li><i>로그인</i></li>
		<li><i>회원 가입</i></li>
		</ul>
		<a href="#" class="navbar_toogleBtn">
		<i class="fas fa-bars"></i>
		</a>
	</nav>
	</header>
	<nav></nav>
	<br><br><br><br><br>
	<section>
	<h1>대학 정보 대시보드</h1>
	<ul class = "employee">
	<li><div id = "employee_piechart" style = "width :700px; height:500px;"></div></li>
	<li><div id = "employee_piechart2" style = "width :700px; height:500px;"></div></li>
	<li><div id = "employee_piechart3" style = "width :700px; height:500px;"></div></li>
	</ul>
	<!--<h1>학과 정보 대시보드</h1>
	<ul>
	<li><div id = "dept_piechart" style = "width :700px; height:500px;"></div></li>
	<li><div id = "dept_piechart2" style = "width :700px; height:500px;"></div></li>
	<li><div id = "dept_piechart3" style = "width :700px; height:500px;"></div></li>
	<li><div id = "dept_piechart4" style = "width :700px; height:500px;"></div></li>
	<li><div id = "dept_piechart5" style = "width :700px; height:500px;"></div></li>
	<li><div id = "dept_piechart6" style = "width :700px; height:500px;"></div></li>
	</ul>-->
	</section>
	
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<script src="./js/pooprer.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>