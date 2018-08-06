<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="color" type="java.lang.String" required="ture"%>
<%@ attribute name="size" type="java.lang.Integer" required="false"%>
<!-- size 속성이 들어오지 않으면 기본값으로 30 설정 if,set사용 -->
 <c:set var="size" value="${size==null?30:size}"></c:set>

<font color="${color}">
<c:forEach begin="0" end="${size}">=</c:forEach>
</font>