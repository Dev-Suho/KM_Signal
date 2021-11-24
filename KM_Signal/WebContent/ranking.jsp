<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>university</title>
	 <!-- Bootstrap CSS -->
    
<script type = "text/javascript" src = "http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type = "text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type = "text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>	
	<link rel = "stylesheet" href = "./css/sub_header.css">
</head>
<body>
	<%
		String select = request.getParameter("pageChange");
	
		if(select == null){
			select = "ranking_menu_4.jsp";
		}
	%>
	<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand" href="ranking.jsp">대학입시 순위 현황</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
 		<%@ include file = "ranking_menu.jsp" %>
    </div>
</nav>
	
	<jsp:include page="<%=select %>" flush="false" />


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</body>
</html>