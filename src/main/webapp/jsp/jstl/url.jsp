<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/login/main.jsp" var="url"/>${url} <br>
	
	<c:url value="/login/main.jsp">
		<c:param name="redirectFrom" value="url.jsp"></c:param>
	</c:url>
</body>
</html>