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
		//db 설정에 대한 값 설정
		String driverClassName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String username = "pc11";
		String password = "java";
		Connection conn = null;
		
		int poolsize = 10;
		BasicDataSource bds = new BasicDataSource();
		bds.setDriverClassName(driverClassName);
		bds.setUrl(url);
		bds.setUsername(username);
		bds.setPassword(password);
		bds.setInitialSize(poolsize);
		
		
		
		long startTime=System.currentTimeMillis();
		//컨넥션을 100번 얻어오고 해제한다.
		for(int i = 0 ; i <19;i++){
			try{
				conn = bds.getConnection();
				out.write("schema : "+conn.getSchema()+"<br>");
				conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
				bds.close();
		long endTime=System.currentTimeMillis();
		
		out.write("시작 시간 : "+startTime+"ms");
		out.write("완료 시간 : "+endTime+"ms");
		out.write("실행 시간 : "+(endTime-startTime)+"ms");
	%>
	
</body>
</html>