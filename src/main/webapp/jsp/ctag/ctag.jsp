<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ctag Test</title>
</head>
<body>
	<h3>logging</h3>
	<tags:logging></tags:logging><br>
	<c:forEach items="${studentList}" var="stdvo">
		${stdvo.id} / ${stdvo.name } /${stdvo.call_count } / <fmt:formatDate value="${stdvo.reg_dt}"/> <br>
	</c:forEach>
	<tags:logging></tags:logging>
	
	<h3>colorLogging</h3>
	<tags:colorLogging color="blue" size="50"></tags:colorLogging><br>
	<c:forEach items="${studentList}" var="stdvo">
		${stdvo.id} / ${stdvo.name } /${stdvo.call_count } / <fmt:formatDate value="${stdvo.reg_dt}"/> <br>
	</c:forEach>
	<tags:colorLogging color="red"></tags:colorLogging>
	
	
	<h3>prodSelect</h3>
	<tags:prodSelect lgu="P101"/>
	
</body>
</html>