<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		th, td{border : 1px solid blue;}
	</style>
</head>
<body>
	<h3>Student List</h3>
<%-- <table>
		<tr>
			<th>학생ID</th>
			<th>학생이름</th>
			<th>호출 수</th>
		</tr>
	<c:forEach var="vo" items="${studentList}">
		<tr>
			<td>${vo.id}</td>
			<td>${vo.name}</td>
			<td>${vo.call_count}</td>
		</tr>
	</c:forEach>
	</table> --%>
	<table>
		<tr>
			<th>학생ID</th>
			<th>학생이름</th>
			<th>호출 수</th>
		</tr>
	<c:forEach var="vo" items="${studentList}" begin="0" end="5" step="1" varStatus="status">
		<tr>
			<td>${vo.id}/${status.index}</td>
			<td>${vo.name}</td>
			<td>${vo.call_count}</td>
		</tr>
	</c:forEach>
	</table>
	
	<h3>foreach map</h3>
	<!--  map에 있는 값을 전부 조회해서 출력 map.get("name"), map.get("alias")...-->
	<c:forEach items="${map}" var="entry">
		${entry.key} / ${entry.value}<br>
	</c:forEach>
	
	<h3>forTokens</h3>
	<c:forTokens items="${lineRangers}" delims="," var="ranger"><!-- delims는 구분자 -->
		${ranger}<br>
	</c:forTokens>
	
</body>
</html>