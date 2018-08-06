<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		
		작성된 msg 파일
		msg.properties
		msg_ko.properties
		msg_ja.properties
		msg_en.properties
	 
	 	basename -> properties파일의 경로를 쓰는데 주의할 점은 properties는 안써도된다. 
	 	
	 	ex)
	 	ko_msg.properties
	 	 key    value
	 	hello=안녕하세요
	 	visitor={0}형님 어서옵쇼 ----> {}에서 받아준다.
	 --%>
	<%--  <%
	 	pageContext.setAttribute("userId", "test");
	 %> --%>
	 <%-- c:set --%>
	<c:set var="userId" value="test"></c:set>
	
	<fmt:setLocale value="ko"/> <!-- 이부분으로 locale해주는 것이군 -->
	
	<fmt:bundle basename="kr.or.ddit.msg.msg">
		<fmt:message key="hello"></fmt:message><br>
		<fmt:message key="visitor"> 
			<fmt:param value="${userId}"></fmt:param>
		</fmt:message><br>
			
	</fmt:bundle>
	
	<h3>setBundle</h3>  
	<h4>좀더 많이 쓰이나봐.. 방법이 두개인거야 그냥 다른거아님</h4>
	<fmt:setBundle basename="kr.or.ddit.msg.msg" var="msg"/>
	<fmt:message bundle="${msg}" key="hello"></fmt:message><br>
	<fmt:message bundle="${msg}" key="visitor">
		<fmt:param value="${userId}"></fmt:param>
	</fmt:message>
	
	
</body>
</html>