<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:catch var="exception">
		<%
			//localhost:8180/jsp/jstl/catch.jsp
			String userId=request.getParameter("userId");
			userId.equals("testTest");
		%>
	</c:catch>
	${exception}
</body>
</html>