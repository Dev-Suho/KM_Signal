<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<style>
	/* 브라우저 마진과 패딩 리셋 */
	* {margin:0;padding:0;}
	
	/* INPUT 가리기 */
	.section input[id*="slide"] {display:none;}

	/* 슬라이드 영역 - max-width 크기를 조절해주면 됩니다*/
	.section .slidewrap {max-width:750px;margin:0 auto;overflow:hidden;}
	.section .slidelist {white-space:nowrap;font-size:0;}
	.section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
	.section .slidelist > li > a {display:block;position:relative;overflow:hidden;} /* 화살표 화면 밖으로 나가면 안보이도록 OVERFLOW로 가림처리 */
	.section .slidelist > li > a img {width:100%;}
	.section .slidelist > li > a donutchart {width:100%;}
	.section .slidelist > li > a donutchart1 {width:100%;}
	.section .slidelist > li > a donutchart2 {width:100%;}
	/* 좌우로 넘기는 LABEL버튼에 대한 스타일 */
	.section .slidelist label {position:absolute;z-index:1;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
	.section .slidelist .left {left:-300px;background:url('./image/left.png') center center / 100% no-repeat;} /* LEFT -300px로 화살표가 안보이게 되어있도록 준 스타일 */
	.section .slidelist .right {right:-300px;background:url('./image/right.png') center center / 100% no-repeat;} /* RIGHT -300px로 화살표가 안보이게 되어있도록 준 스타일 */

	/* INPUT이 체크되면 변화값이 li까지 전달되는 스타일 */
	.section input[id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
	.section input[id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
	.section input[id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}
	.section input[id="slide04"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-300%);}

	/* INPUT이 체크되면 변화값이 LEFT,RIGHT에 전달되는 스타일 */
	.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .left {left:30px;transition:all .35s ease .5s;} /* 1번 INPUT이 체크되면 1번 슬라이드의 왼쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .right {right:30px;transition:all .35s ease .5s;} /* 1번 INPUT이 체크되면 1번 슬라이드의 오른쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .left {left:30px;transition:all .35s ease .5s;} /* 2번 INPUT이 체크되면 1번 슬라이드의 왼쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .right {right:30px;transition:all .35s ease .5s;} /* 2번 INPUT이 체크되면 1번 슬라이드의 오른쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .left {left:30px;transition:all .35s ease .5s;} /* 3번 INPUT이 체크되면 1번 슬라이드의 왼쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .right {right:30px;transition:all .35s ease .5s;} /* 3번 INPUT이 체크되면 1번 슬라이드의 오른쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide04"]:checked ~ .slidewrap li:nth-child(4) .left {left:30px;transition:all .35s ease .5s;} /* 3번 INPUT이 체크되면 1번 슬라이드의 왼쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	.section input[id="slide04"]:checked ~ .slidewrap li:nth-child(4) .right {right:30px;transition:all .35s ease .5s;} /* 3번 INPUT이 체크되면 1번 슬라이드의 오른쪽 화살표의 LEFT값이 변하면서 나타나도록 준 스타일 */
	</style>
	
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>Insert title here</title>
	<!-- 학과 지원률 차트 -->
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['국제비서과', 11],
          ['보건의료행정과',  2],
          ['사회복지과',  2],
          ['세무회계과', 2],
          ['아동미술지도과',  2],
          ['아동보육과',  2],
          ['유아교육과', 2],
          ['호텔관광경영과',  2],
          ['효충사관과',  2]
        ]);

        var options = {
          title: '인문사회계열 지원률',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['뷰티케어과',     11],
          ['호텔외식조리과',      2],
          ['간호학과',     11],
          ['호텔외식서비스과',      2]
        ]);

        var options = {
          title: '자연과학계열',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart1'));
        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
    	  var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['융합소프트웨어과',     11],
          ['정보통신과',      2],
          ['IT경영과',  2],
          ['게임콘텐츠과', 2],
          ['공간디자인과', 2],
          ['건축과', 2],
          ['소방안전관리과', 2],
          ['영상콘텐츠과', 2]
        ]);

        var options = {
          title: '공학 계열',
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart2'));
        chart.draw(data, options);
      }
    </script>
     <script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
    	  var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['공연예술과',     11],
          ['레포츠 태권도과',  2]
        ]);

        var options = {
          title: '예체능계열',
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart3'));
        chart.draw(data, options);
      }
    </script>
</head>
<body>
	<div class="section">
		<input type="radio" name="slide" id="slide01" checked>
		<input type="radio" name="slide" id="slide02">
		<input type="radio" name="slide" id="slide03">
		<input type="radio" name="slide" id="slide04">
		<div class="slidewrap">
			<ul class="slidelist">
				<li>
					<a>
						<label for="slide04" class="left"></label>
						<div id="donutchart" style="width: 620px; height: 400px;"></div>
						<label for="slide02" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide01" class="left"></label>
						<div id="donutchart1" style="width: 620px; height: 400px;"></div>
						<label for="slide03" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide02" class="left"></label>
						<div id="donutchart2" style="width: 620px; height: 400px;"></div>
						<label for="slide04" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide03" class="left"></label>
						<div id="donutchart3" style="width: 620px; height: 400px;"></div>
						<label for="slide01" class="right"></label>
					</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>