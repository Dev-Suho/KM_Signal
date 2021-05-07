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
</head>

<script type = "text/javascript" src = "https://www.google.com/jsapi"></script>
<script type = "text/javascript" src = "http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<!-- 대학 전체 입시 정보 차트 -->
	<script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', '지원자', '합격자','등록자'],
          ['2017', 16176, 6300, 1855],
          ['2018', 14424, 5163, 1633],
          ['2019', 16624, 6530, 1819],
          ['2020', 13457, 5662, 1442],
          ['2021', 13266, 5441, 1408]
        ]);

        var options = {
          chart: {
            title: '경민대 입시 현황',
            subtitle: '지원자, 합격자, 등록자 2017년~2021년',
          },
          bars: 'horizontal' // Required for Material Bar Charts.
        };

        var chart = new google.charts.Bar(document.getElementById('barchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
    <!-- 지역별 지원 현황 차트 -->
	<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['서월',     11],
          ['경기도',      2],
          ['강원도',  2],
          ['충청북도', 2],
          ['충청남도',    7],
          ['경상북도',    7],
          ['경상남도',    7],
          ['전라북도',    7],
          ['전라남도',    7]
        ]);

        var options = {
          title: '지역별 지원 현황'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
    <!-- 학교별 지원 현황 차트 -->
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['일반고',     11],
          ['특성화고',      2],
          ['특목고',  2],
          ['자율고', 2]
        ]);

        var options = {
          title: '학교별 지원 현황',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart4'));
        chart.draw(data, options);
      }
    </script>
    <!-- 대학 지원 종류 수시/정시 현황 차트 -->
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['수시',     11],
          ['정시',      2]
        ]);

        var options = {
          title: '수시 / 정시',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart5'));
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
	<table border="1">
	<th align ="center"><h1>대학 전체 입시정보</h1></th>
	<th align ="center"><h1>학과 자원률</h1><a href="department.jsp">이동</a></th>
	<tr>
		<td>
			<div id="barchart_material" style="width: 700px; height: 400px;"></div>
		</td>
		<td>
			<!-- 학과 지원률 현황 차트 -->
			<%@ include file = "successful.jsp" %>
		</td>
	</tr>
	</table>
	<hr>
	<table border="1">
	<th align ="center"><h1>학교 특성별 지원율</h1></th>
	<th align ="center"><h1>지원 종류별(수시 / 정시)</h1></th>
	<tr>
		<td>
			<div id="donutchart4" style="width: 700px; height: 400px;"></div>
		</td>
		<td>
			<div id="donutchart5" style="width: 700px; height: 400px;"></div>
		</td>
	</tr>
	</table>
	<h1>지역별 지원 현황</h1>
	<div id="piechart" style="width: 700px; height: 400px;"></div>
	</section>
	
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<script src="./js/pooprer.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>