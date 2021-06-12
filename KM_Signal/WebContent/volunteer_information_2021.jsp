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
<div style = "width:800px">
<canvas id = "myChart"></canvas>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script>
	$.getJSON("resources/volunteer_information_2021.json", function(data) {
	const labels = Object.values(data.department);
	const volunteerData = Object.values(data.volunteer);
	const acceptanceData = Object.values(data.acceptance);	
	const registerData = Object.values(data.register);
	
	const context = document.getElementById('myChart').getContext('2d');
	const myChart = new Chart(context, {
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
</body>
</html>