package kr.or.ddit.student.web;

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
 * Servlet implementation class StudentServlet
 */
@WebServlet("/studentList")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//StudentService 객체를 생성, 학생 전체 리스트를 조회
		//학생 전체 리스트 request객체에 속성으로 설정
		//studentList.jsp로  forward
		
		StudentServiceInf studentService = new StudentService();
		HashMap<String, Integer> pageMap = new HashMap<>();
		
		String pageStr = request.getParameter("page");
		int page = pageStr==null?1:Integer.parseInt(pageStr);
		String pageSizeStr = request.getParameter("pageSize");
		int pageSize =pageSizeStr==null?1:Integer.parseInt(pageSizeStr);
		
		pageMap.put("page", page);
		pageMap.put("pageSize", pageSize);
		
		Map<String,Object> resultMap = studentService.getStudentPageList(pageMap);
		//학생 전체 리스트
		
		List<StudentVo> studentList = (List<StudentVo>)resultMap.get("pageList");
		
		//학생 젠체 건수
//		int listSize = (int)resultMap.get("totCnt");
		
		
		request.setAttribute("studentList", studentList);
		request.setAttribute("pageNavi", resultMap.get("pageNavi"));
    	request.getRequestDispatcher("/student/studentList.jsp").forward(request, response);
		
	}

}
