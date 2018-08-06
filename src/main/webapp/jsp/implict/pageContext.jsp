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
		//request, response, session, out, application, config
		//pageContext : 다른 객체에 대한 전반적인 정보를 갖고 있습니다.
		
		
	%>
	pageContext.getRequest()==request : <%=pageContext.getRequest().equals(request) %><br>	<%--기본 request와 비교 --%>
	pageContext.getServletContext()==application : <%=pageContext.getServletContext().equals(application) %><br> <%--application과 비교 --%>
	pageContext.getSession()==session : <%=pageContext.getSession().equals(session) %><br><%--기본 session과 비교 --%>
	pageContext.getOut()==out : <%=pageContext.getOut().equals(out) %><br><%--기본 Out과 비교 --%>
	
</body>
</html>