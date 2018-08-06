package kr.or.ddit.ctag;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.student.model.StudentVo;
import kr.or.ddit.student.service.StudentService;
import kr.or.ddit.student.service.StudentServiceInf;

/**
 * Servlet implementation class CustomtageServlet
 */
@WebServlet("/customtag")
public class CustomtagServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//학생 1페이지 리스트 조회
			//request 객체 속성 설정
			//ctag.jsp로 전달 
		
		StudentServiceInf studentService = new StudentService();
		HashMap<String, Integer> pageMap = new HashMap<>();
		
		pageMap.put("page", 1);
		pageMap.put("pageSize", 10);
		
		Map<String,Object> resultMap = studentService.getStudentPageList(pageMap);
		//학생 전체 리스트
		
		request.setAttribute("studentList", (List<StudentVo>)resultMap.get("pageList"));
		
		request.getRequestDispatcher("/jsp/ctag/ctag.jsp").forward(request, response);
	}

	
}
