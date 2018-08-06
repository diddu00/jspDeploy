<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="/js/js.cookie.js"></script>
<body>
	<%
		
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie :cookies){
			out.write(cookie.getName()+" : ");
			out.write(cookie.getValue()+"<br>");
		}
		
		Cookie cookie = new Cookie("serverCookie", "serverCookieValue");
		cookie.setMaxAge(60*60*24*30); //30일
		response.addCookie(cookie);
	%>
</body>
</html>