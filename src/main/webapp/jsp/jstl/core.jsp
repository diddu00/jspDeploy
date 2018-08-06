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
	<!-- localhost:8180/jstlServlet -->
	request.userId : ${userId} /${request.userId}<br>
	
	<!-- set : 특정영역에 변수를 새로 생성(default:page) -->
	<c:set var="test" value="testValue"/> ${test}<br>
	<%-- == <%pageContext.setAttribute("test", "testValue") %> --%>
	pageContext.getAttribute("test") : <%=pageContext.getAttribute("test") %><br>
	
	<h3>c:set scope</h3>
	<c:set var="test" value="testSessionValue" scope="session"/>${sessionScope.test}<br>
	
	<!-- el은 영역이 작은 곳 부터 큰곳으로 순차 검색
		page -> request -> session -> application 
	 -->
	
	<h3>c:set, target, property</h3>
	작업 전 : ${studentVo}<br>
	<c:set target="${studentVo}" property="name" value="test"/>
	작업 후 : ${studentVo}<br>
</body>
</html>