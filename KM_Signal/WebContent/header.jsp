<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link rel="stylesheet" href="./css/sub_header.css">
</head>
<body>
	<% String pageChange; %>
	<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav me-auto mb-2">
			<li class="nav-item active">
			<a class="nav-link active" aria-current="page" href="?pageChange=section.jsp">학과 지원률</a></li>
			<li class="nav-item"><a class="nav-link" aria-current="page" href="?pageChange=section1.jsp">학과 취업률</a></li>
			<li class="nav-item"><a class="nav-link" aria-current="page" href="?pageChange=section2.jsp">수시 / 정시</a></li>
		</ul>
		<span class="navbar-text"> 
		<a class="pageMove" href="Main.jsp">메인 홈페이지 이동</a>
		</span>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

</body>
</html>