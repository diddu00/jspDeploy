<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="kr.or.ddit.board.model.BoardVo" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<BoardVo> boardList= (List<BoardVo>)request.getAttribute("boardList");
	%>
	
	<table>
		<thead>
			<tr>
				<th>제목</th>
				<th>사용자 아이디</th>
				<th>별명</th>
				<th>등록이(yyyy-MM-dd)</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(BoardVo boardVo : boardList){
					out.write("<tr>");
					out.write("<td>"+boardVo.getTitle()+"</td>");
					out.write("<td>"+boardVo.getUserId()+"</td>");
					out.write("<td>"+boardVo.getAlias()+"</td>");
					out.write("<td>"+new SimpleDateFormat("yyyy-MM-dd").format(boardVo.getRegDt())+"</td>");
					out.write("</tr>");
				}
			%>
		</tbody>
	</table>
</body>
</html>