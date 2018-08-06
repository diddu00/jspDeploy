  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- factorial method
	     0! = 1
	     1! = 1 * 0! = 1
	     2! = 2 * 1! = 2
	     3! = 3 * 2! = 6
	     4! = 4 * 3! = 24
	 --%>
	<%!
		public int factorial(int fac){
			if(fac<2&&fac>=0){
				return 1;
			}else if(fac<0){
				return 0;
			}
			
			return fac*factorial(fac-1);
		}
	%>
	<%for(int i = 0 ; i<9;i++){%>
		factorial(<%=i %>) : <%=factorial(i) %><br>	
	<%} %>
</body>
</html>