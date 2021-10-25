<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String pageChange; %>
	<div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            년도별 순위 현황
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_1.jsp">2013</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_2.jsp">2014</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_3.jsp">2015</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_4.jsp">2016</a></li>
           <!-- <li><a class="dropdown-item" href="?pageChange=ranking_menu_5.jsp">2017/a></li>--> 
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="?pageChange=university_menu_3.jsp">연도별 지원 비율</a>
        </li>
     
        
      </ul>
            <span class="navbar-text">
       		 	<a href="Main.jsp">메인 홈페이지 이동</a>
      		</span>
      </div>
	
</body>
</html>