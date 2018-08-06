<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- application : requestCounter : Map<String, Integer>  el,jstl-->
	
	<c:set var="requestKeySet" value="${requestCountMap.keySet()}"/>
	<table>
	<tr><th>URI</th><th>COUNT</th></tr>
	<c:forEach items="${requestKeySet}" var="key">
		<tr><td>${key}</td><td>${requestCountMap.get(key)}</td></tr>
	</c:forEach>
	</table>
	
</body>
</html>