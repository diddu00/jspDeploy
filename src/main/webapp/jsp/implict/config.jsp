<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//jsp 기본 객체  : request, response, session, out, application
	    //config : 설정 .. 준내 잘안씀.. 그냥 web.xml에서 서블렛이든 jsp든 맵핑과정에서 init-context를 통해서 값을 가져온다.. 준나 안ㅆ므 그냥 잊어버려
	    
	    config.getInitParameter("ADMIN_USER");
	    application.getInitParameter("ADMIN_USER");
	%>
	config.getInitParameter("ADMIN_USER") : <%=config.getInitParameter("ADMIN_USER") %><br>
	application.getInitParameter("ADMIN_USER") : <%=application.getInitParameter("ADMIN_USER") %>
	
</body>
</html>