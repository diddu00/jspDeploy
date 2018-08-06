<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  oracle db의 student 테이블을 조회하여 화면에 출력  -->
	<%
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
	
		
		try {
			//드라이브 올리고
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
			//DB접속 // url, user, password 필요
			//Connection객체
			String url ="jdbc:oracle:thin:@localhost:1521:xe";
			String user ="pc11";
			String password = "java";
			conn = DriverManager.getConnection(url, user, password);
			//Statemente 객체 (sql질의하는 문)
			stmt = conn.createStatement();
			
			
			//ResultSet 객체 (select면 내용들, 딴건는 레코드 수)
			String sql = "select * from student"; //쿼리문
			rs =  stmt.executeQuery(sql);
			out.write("<table>");
			out.write("<tr>");
			out.write("<td>   학번    </td><td>    이름     </td><td>국어성적</td><td>영어성적</td><td>수학성적</td>");
			out.write("</tr>");

			while(rs.next()){
				out.write("<tr>");
				out.write("<td>"+rs.getString("STD_NUM")+"</td>");
				out.write("<td>"+rs.getString("STD_NAME")+"</td>");
				out.write("<td>"+rs.getString("STD_KOR")+"</td>");
				out.write("<td>"+rs.getString("STD_ENG")+"</td>");
				out.write("<td>"+rs.getString("STD_MAT")+"</td>");
				out.write("</tr>");
			}
			out.write("</table>");	
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//6.사용했던 자원 반납
			if(rs!=null)try{rs.close();}catch(SQLException e2){}
			if(stmt!=null)try{stmt.close();}catch(SQLException e2){}
			if(conn!=null)try{conn.close();}catch(SQLException e2){}
		}
		
	%>
</body>
</html>