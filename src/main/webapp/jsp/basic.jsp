<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//이부분은 자바 코드 작성 방법이 적용된다.
		/*
		
		*/
		Date dt = new Date();
	
		//yyyy-MM-dd
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	%>
	hello servlet world<br>
	current time : <%= sdf.format(dt)%>
	<%--주석  --%>
</body>
</html>
<!-- 
	local:8180/jsp/basic.jsp
 -->