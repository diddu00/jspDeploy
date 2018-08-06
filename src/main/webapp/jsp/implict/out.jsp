<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style >
	td{
 		border: 1px solid blue;
 		background: yellow;
 	}
</style>
</head>
<body>
	<table>
	<%
		//기본객체 : request, response, session
		//out객체 : servlet의 printWriter와 유사한 객체
		//localhost:8180/jsp/implict/out.jsp
		out.write("<h1>sumResult : "+session.getAttribute("sumResult")+"</h1>");	
		//기존 for문을 jsp에서 쓰려면 엄청난 불편함을 안고 써야했는데 
		//out객체를 이용하면 그런 불편함이 없습니다.
		
		for(int i =1;i<=9;i++){
			out.write("<tr>");
			for(int j = 2;j<=9;j++){
				out.write("<td>"+j+"*"+i+"="+(j*i)+"</td>");
			}
			out.write("</tr>");
		}
	%>
	</table>
</body>
</html>