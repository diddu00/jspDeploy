<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 자바에서는 변수의 선언부가 존재한다. --%>
	<!--  PrintWriter pw = response.getWriter();-->
	
	<%-- 스크립틀릿 에서는 자바 코드를 작성할 수 있다. --%>
	<%
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		//sdf; ->위 것을 주석처리하고 하면 오류가 나온다.
		
		//이건 왜 바로 되냐??
		request.getLocalAddr();
		request.getLocalPort();
		request.getRemoteAddr();
		request.getRemotePort();
		request.getRemoteHost();

		
		//jsp 기본 객체  : request, response => jsp는 servlet으로 변환이 되어 사용된다. servlet을 보면 servlet에 객체가 있는데 
		// 이것들도 마찬가지로 어딘가에 선언이 되는거임
	%>
		request.getLocalAddr() : <%=request.getLocalAddr()%><br>
		request.getLocalPort() : <%=request.getLocalPort()%><br>
		request.getRemoteAddr() : <%=request.getRemoteAddr()%><br>
		request.getRemoteHost() : <%=request.getRemoteHost()%><br>
		request.getRemotePort() : <%=request.getRemotePort()%><br>
		request.getCharacterEncoding() : <%=request.getCharacterEncoding() %><br>
		request.getContentType() : <%=request.getContentType()%><br>
		request.getContextPath() : <%=request.getContextPath()%><br>
		request.getRequestURL() : <%=request.getRequestURL()%><br>
		request.getRequestURI() : <%=request.getRequestURI()%><br>
		request.getServerName() : <%=request.getServerName()%><br>
		request.getServerPort() : <%=request.getServerPort()%><br>
		request.getMethod() : <%=request.getMethod()%><br>
</body>
</html>