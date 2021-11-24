<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/sub_header.css">
</head>
<body>
	<% String pageChange; %>
	<div class="collapse navbar-collapse">
      <ul class="navbar-nav me-auto mb-2">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            행정구 연도별 통계
          </a>
           <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_4.jsp">2016</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_3.jsp">2015</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_2.jsp">2014</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_1.jsp">2013</a></li>
           </ul>
        </li>
     	<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            고등학교 연도별 통계
          </a>
           <ul class="dropdown-menu" aria-labelledby="navbarDropdown_school">
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_school1.jsp">2021 (수시)</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_school4.jsp">2021 (정시)</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_school2.jsp">2020 (수시)</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_school5.jsp">2020 (정시)</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_school3.jsp">2019 (수시)</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_school6.jsp">2019 (정시)</a></li>
           </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            학과 연도별 통계
          </a>
           <ul class="dropdown-menu" aria-labelledby="navbarDropdown_school">
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department1.jsp">IT 경영과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department2.jsp">간호학과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department3.jsp">건축과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department4.jsp">게임콘텐츠과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department5.jsp">공간디자인과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department6.jsp">공연예술과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department7.jsp">국제비서과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department8.jsp">레포츠 태권도과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department9.jsp">보건의료행정과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department10.jsp">뷰티케어과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department11.jsp">사회복지과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department12.jsp">세무회계과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department13.jsp">소방안전관리과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department14.jsp">아동미술지도과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department15.jsp">아동보육과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department16.jsp">영상콘텐츠과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department17.jsp">유아교육과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department18.jsp">융합소프트웨어과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department19.jsp">정보통신과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department20.jsp">호텔관광경영과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department21.jsp">호텔외식서비스과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department22.jsp">호텔외식조리과</a></li>
            <li><a class="dropdown-item" href="?pageChange=ranking_menu_department23.jsp">효충사관과</a></li>
           </ul>
        </li>
      </ul>
            <span class="navbar-text">
       		 	<a class = "pageMove" href="Main.jsp">메인 홈페이지 이동</a>
      		</span>
      </div>
	
</body>
</html>