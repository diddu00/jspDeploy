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
<form action="/localeServlet_CDL" method="get">
	<select name="locale" id="selectBox" onchange="">
		<option value="ko" <c:if test="${param.locale eq 'ko'}">selected</c:if> >한국어</option>
		<option value="ja" <c:if test="${param.locale eq 'ja'}">selected</c:if> >日本語</option>
		<option value="en" <c:if test="${param.locale eq 'en'}">selected</c:if> >English</option>
	</select>
</form>

	<fmt:setLocale value="${param.locale}"/>

	<fmt:bundle basename="kr.or.ddit.msg.msg">
		<fmt:message key="hello"></fmt:message><br>
		<fmt:message key="visitor"> 
			<fmt:param value="${param.userId}"></fmt:param>
		</fmt:message><br>
			
	</fmt:bundle>
	
</body>
<script src="/js/jquery-1.12.4.js"></script>
<script>
	$(function(){
		$('#selectBox').change(function() {
			$("form").submit();
		});
	});
	
</script>
</html>