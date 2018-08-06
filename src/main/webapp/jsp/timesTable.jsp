<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
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
	<table>
		
			<%
				String result = "";
				for(int i = 1; i<10;i++){
					result+="<tr>";
					for(int j=2;j<10;j++){
						result += "<td>"+j+"*"+i+"="+(i*j)+"</td>";
					}
					result+="</tr>";
				}
			%>
			<%=result %>
	</table>
</body>
</html>