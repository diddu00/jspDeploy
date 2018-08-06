<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- request 객체에 code 속성이 "02"값으로 존재  -->
	<%
		if(1==2)
			out.write("맞으면 나올 건데 안맞아서 안나와 재채기 잣되죠");
	%>
	<!-- test = 참, 거짓 조건 테스트 c:if 에는 else가 없다 ==> choose가 일반적인 if역할을 한다.  -->
	<c:if test="${code eq '02'}">
		good~
	</c:if>
	
	
	<h3>c:choose</h3>
	<c:choose>
		<c:when test = "${code == '01'}">brown</c:when>
		<c:when test = "${code == '02'}">red</c:when>
		<c:when test = "${code == '03'}">green</c:when>
		<c:when test = "${code == '04'}">black</c:when>
	</c:choose>
	
	
</body>
</html>