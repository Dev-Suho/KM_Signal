<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contentPage=request.getParameter("contentPage");
	if(contentPage==null)
		contentPage="";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>상세 페이지</title>	
	<link rel="stylesheet" href="./css/style2.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
	
	<%
		String select = request.getParameter("pageChange");
	
		if(select == null){
			select = "section1.jsp";
		}
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
	  	<a class="navbar-brand" href="#">학과 상세페이지</a>
	  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
	    		<span class="navbar-toggler-icon"></span>
	  		</button>
	  		<%@ include file = "header.jsp"%>
	  	</div>
	 </nav>
	<main class="container text-center">
 		<div class="bg-light p-5 rounded">
    		<h1>경민대학교 입시 상세페이지</h1>  
  		</div>
	</main>
			<jsp:include page="<%=select %>" flush="false" />
	
	
	
	 <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</body>
</html>