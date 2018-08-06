<%@tag import="java.sql.ResultSet"%>
<%@tag import="java.sql.Statement"%>
<%@tag import="java.sql.SQLException"%>
<%@tag import="java.sql.DriverManager"%>
<%@tag import="java.sql.Connection"%>
<%@tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="lgu" type="java.lang.String" required="ture" %>

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
			String sql = "select * from prod where prod_lgu=\'"+  jspContext.getAttribute("lgu")+"\'"; //쿼리문
			rs =  stmt.executeQuery(sql);
			out.write("<select><br>");
			while(rs.next()){
				out.write("<option value=\""+rs.getString("PROD_ID")+"\" >"+rs.getString("PROD_NAME")+"</option> <br>");
			}
			out.write("</select>");	
		
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