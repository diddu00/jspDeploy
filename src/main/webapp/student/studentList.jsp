<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.or.ddit.student.model.StudentVo"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jsp</title>

<script src="/js/jquery-1.12.4.js"></script>
<link href="/bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<script src="/bootstrap/js/bootstrap.js"></script>
<!-- Custom styles for this template -->
<link href="/css/dashboard.css" rel="stylesheet">
<link href="/css/blog.css" rel="stylesheet">
<link href="/common/common.css" rel="stylesheet">
<script>
	$(function(){
		$("table tbody tr").on("click",function(){
			//console.log("table tbody tr clicked?"+ $(this).data("id"));
			$("#id").val($(this).data("id"));
			$("#frm").submit();
		});
	});
</script>
</head>

<body>

	<%@include file="/common/top.jsp"%>
	<form id="frm" action="/studentDetail" method="get">
		<input type="hidden" name="id" id="id" />
	</form>
	<div class="container-fluid">
		<div class="row">

			<%@include file="/common/left.jsp"%>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">


				<div class="row">
					<div class="col-sm-8 blog-main">
						<h2 class="sub-header">학생</h2>
						<div class="table-responsive">
							<%-- <table class="table table-striped">
								<tr>
									<th>학생ID</th>
									<th>학생이름</th>
									<th>호명수</th>
									<th>등록일수</th>
								</tr>
								<% for(StudentVo vo : (List<StudentVo>)request.getAttribute("studentList")){
									out.write("<tr>");
									out.write("<td>"+vo.getId()+"</td>");
									out.write("<td>"+vo.getName()+"</td>");
									out.write("<td>"+vo.getCall_count()+"</td>");
									out.write("</tr>");
									}
									%>
							</table> --%>
							
							<table class="table table-striped table-hover">
								<tr>
									<thead>
									<td>학생ID</td>
									<td>학생이름</td>
									<td>호명수</td>
									<th>등록일수(yyyy-MM-dd)</th>
									<thead>
								</tr>
								<tbody>
								<c:forEach var="std" items="${studentList}">
									<tr data-id="${std.id}" data-name="${std.name}">
										<td>${std.id}</td>
										<td>${std.name}</td>
										<td>${std.call_count}</td>
										<td><fmt:formatDate value="${std.reg_dt}" pattern="yyyy-MM-dd"/> </td>
									</tr>
								</c:forEach>
								</tbody>

							</table>
						</div>

						<a class="btn btn-default pull-right">사용자 등록</a>

						<div class="text-center">
							<ul class="pagination">
								<%=(String) request.getAttribute("pageNavi")%>
								<%--	test객체를 연습하기위해 service에서 처리하도록 한다.
									int pagingnationSize = (Integer)request.getAttribute("pagingnationSize");
									for(int i =1;i<=pagingnationSize;i++){
										out.write("<li><a href=\"/studentList?page="+i+"&pageSize=10\">"+i+"</a></li>");
									}
								--%>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>