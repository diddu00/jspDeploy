<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>결과값 : <%=request.getAttribute("sumResult") %></h1>
	
	<%
		HttpSession sess = request.getSession();
	%>
	<%-- 그닥 차이가 없다. --%>
	<h2>기본 Session           결과값 : <%=session.getAttribute("sumResult") %></h2>
	<h2>request로가져온 Session 결과값 : <%=sess.getAttribute("sumResult") %></h2>
</body>
</html>