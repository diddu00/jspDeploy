<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	td{
 		border: 1px solid blue;
 		background: yellow;
 	}
</style>
</head>
<body>
	<h2>구구단</h2>
	<table>
			<tr><th>2단</th><th>3단</th><th>4단</th><th>5단</th><th>6단</th><th>7단</th><th>8단</th><th>9단</th></tr>
			<c:forEach var="gob" begin="1" end="9">
				<tr>
				<c:forEach var="dan" begin="2" end="9">
					<td>${dan} * ${gob} = ${dan*gob}</td>
				</c:forEach>
				</tr>
			</c:forEach>
			<%-- <%
				String result = "";
				for(int i = 1; i<10;i++){
					result+="<tr>";
					for(int j=2;j<10;j++){
						result += "<td>"+j+"*"+i+"="+(i*j)+"</td>";
					}
					result+="</tr>";
				}
			%>
			<%=result %> --%>
	</table>
</body>
</html>