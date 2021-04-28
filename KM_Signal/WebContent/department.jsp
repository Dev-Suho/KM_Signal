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
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<title>상세 페이지</title>	
</head>
<body>

	<%
		String select = request.getParameter("pageChange");
	
		if(select == null){
			select = "section1.jsp";
		}
	%>
	<div id = "wapper">
	<header>
		<%@ include file = "header.jsp"%>
	</header>
	</div>
	
	<section name = center>
	<select name="year">
			<option value = "년도 선택">년도 선택</option>
			<option value = "2016">2016</option>
			<option value = "2017">2017</option>
			<option value = "2018">2018</option>
			<option value = "2019">2019</option>
			<option value = "2020">2020</option>
			<option value = "2021">2021</option>
		</select>
		<table>
			<tr>
				<td><%@ include file = "menu.jsp" %></td>
				<td><jsp:include page="<%=select %>" flush="false" /></td>
			</tr>
		</table>
	</section>
</body>
</html>