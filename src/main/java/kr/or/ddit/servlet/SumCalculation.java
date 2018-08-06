package kr.or.ddit.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/sumCalculation")
public class SumCalculation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int start=Integer.parseInt(request.getParameter("start"));
		int end=Integer.parseInt(request.getParameter("end"));
		int result = 0;
		for (int i = start; i < end+1; i++) {
			result+=i;
		}
		
		//session에 sumResult를 저장한다.
		HttpSession session =request.getSession();
		session.setAttribute("sumResult",result);
		
//		System.out.println("합 : "+result);
		request.setAttribute("sumResult", result);
		request.getRequestDispatcher("/jsp/sumResult.jsp").forward(request, response);
	}

}
