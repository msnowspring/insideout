<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="Top.jsp"%>
	<div class="menudiv">
		<a href="Drank.jsp"class="menuitem" aria-current="false"> 오늘의 순위 </a>
		<a href="Month.jsp" class="menuitem" aria-current="false"> 이번달의 순위 </a>
		<a href="Year.jsp" class="menuitem" aria-current="false"> 올해의 순위 </a>
	</div>
	이번달!!!!!!
<%@include file="Bottom.jsp"%>
</body>
</html>