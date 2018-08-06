package kr.or.ddit.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.user.model.UserVo;
import kr.or.ddit.user.service.UserService;
import kr.or.ddit.user.service.UserServiceInf;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		//파라미터를 받아서 sysout으로 console창에 출력 
//		System.out.println("User ID : "+request.getParameter("userId"));
//		System.out.println("Password : "+request.getParameter("password"));
		
		//로그인 프로세스
		//가짜(fake) service,dao객체를 생성 
		String userId = request.getParameter("userId");
		String password=request.getParameter("password");
		
		UserServiceInf userService = new UserService();
		UserVo userVo = userService.getUser(userId);
		
		//PrintWriter pw = response.getWriter();
		if(userVo==null){
			request.getRequestDispatcher("/login/login.jsp").forward(request, response);
		}else if(userVo.validateUser(userId, password)){
			request.getSession().setAttribute("UserVo", userVo);
			//request.getRequestDispatcher("/login/userLogin.jsp").forward(request, response);
			request.getRequestDispatcher("/login/main.jsp").forward(request, response);
		}else{
//			response.sendRedirect("/login/login.jsp");
			request.getRequestDispatcher("/login/login.jsp").forward(request, response);
		}
		
	}

}
