package kr.or.ddit.logout;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/logoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("UserVo");
		//request.getSession().invalidate(); <= session 무효화 하는 메서드 사용해도 됩니다. 
		response.sendRedirect("/login/login.jsp");
		
		//테스트 시나리오
		/*	1. loginSession.jsp 확인 
		 * 	
		 * 	2. 데이터가 없을 경우 : login.jsp 에서 로그인
		 * 		2-1 loginSession.jsp(값증가)
		 * 		2-2 main.jsp에서 로그아웃
		 * 		2-3 loginSession.jsp(값감소)
		 * 
		 * 	3. 데이터가 있을 경우 : login.jsp
		 * 		3-1 main.jsp에서 로그아웃
		 * 		3-2 loginSession.jsp에서 로그아웃 확인
		 * 
		 */
	}


}
