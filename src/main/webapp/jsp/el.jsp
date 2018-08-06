<%@page import="kr.or.ddit.student.model.StudentVo"%>
<%@page import="java.util.List"%>
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

	<h3>request</h3>
	표현식 : <%=request.getAttribute("requestScop") %><br>
	EL : ${requestScope.requestScop}<br>
	EL : ${requestScop}<br>
	
	
	<h3>session</h3>
	표현식 : <%=session.getAttribute("sessionScop") %><br>
	EL : ${sessionScope.sessionScop}<br>
	EL : ${sessionScop}<br>
	
	<h3>application</h3>
	표현식 : <%=application.getAttribute("applicationScop") %><br>
	EL : ${applicationScope.applicationScop}<br>
	EL : ${applicationScop}<br>
	
	<h3>sameName</h3>
	EL : ${sameName} 어떤 값을 가져올까요??<br>
	
	<h3>studentList</h3>
	표현식 : <br>
			<table>
				<tr>
					<td>ID</td><td>NAME</td><td>Call_CNT</td>
				</tr>
					<%	List<StudentVo>stdList=(List<StudentVo>)request.getAttribute("studentList");
						for(int i=0;i<stdList.size();i++){%>
							<tr>
								<td>
									<%= stdList.get(i).getId()%>
								</td>
								<td>
									<%= stdList.get(i).getName()%>
								</td>
								<td>
									<%= stdList.get(i).getCall_count()%>
								</td>
							</tr>
						<%} %>
			</table>
			<br>
			
			<table>
				<tr>
					<td>ID</td><td>NAME</td><td>Call_CNT</td>
				</tr>
					<c:forEach var="std" items="${studentList}">
						<tr>
							<td>${std.id}</td>
							<td>${std.name}</td>
							<td>${std.call_count}</td>
						<tr>
					</c:forEach>
			</table>
	
	
	
	
</body>
</html>