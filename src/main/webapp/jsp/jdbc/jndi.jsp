<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="org.apache.commons.dbcp2.BasicDataSource"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- db connection 얻는 방법 3가지 
		
		1.jdbc
		2.application 영역에서의 connection pool
		3.was connection pool(jndi)
		
		각 방법별로 컨넥션을 생성하는 시간 profiling -> 빠르기 = jdbc < application connection pool, was connection pool
	-->
	
	<%
		Context context = new InitialContext();
		DataSource datasource = (DataSource)context.lookup("java:comp/env/jdbc/oracleDB");
		
		long startTime=System.currentTimeMillis();
		Connection conn = null;
		//컨넥션을 100번 얻어오고 해제한다.
		for(int i = 0 ; i <19;i++){
			try{
				conn = datasource.getConnection();
				out.write("schema : "+conn.getSchema()+"<br>");
				conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		//datasource 는 서버상에서 참조하는 것이니깐 close를 하지 못한다. 
		long endTime=System.currentTimeMillis();
		
		out.write("시작 시간 : "+startTime+"ms");
		out.write("완료 시간 : "+endTime+"ms");
		out.write("실행 시간 : "+(endTime-startTime)+"ms");
	%>
	
</body>
</html>