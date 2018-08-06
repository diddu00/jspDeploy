package kr.or.ddit.student.web;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import kr.or.ddit.file.FileUtil;
import kr.or.ddit.student.model.StudentVo;
import kr.or.ddit.student.service.StudentService;
import kr.or.ddit.student.service.StudentServiceInf;

/**
 * Servlet implementation class StudentUpdateViewServlet
 */
@WebServlet("/studentUpdate")
@MultipartConfig(maxFileSize=1024*1000*3, maxRequestSize=1024*1000*15)
public class StudentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//학생 정보 수정 화면
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//학생 id 파라미터
		int id = Integer.parseInt(request.getParameter("id"));
		
		//학생 정보 조회
		StudentServiceInf studentService = new StudentService();
		StudentVo studentVo = studentService.getStudent(id);
		
		//request객체에 학생 정보를 설정
		request.setAttribute("studentVo", studentVo);
		
		// /student/studentUpdate.jsp로 위임 
		request.getRequestDispatcher("/student/studentUpdate.jsp").forward(request, response);
	
	}

	//학생정보 수정
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//학생 파라미터 
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		String zipcd = request.getParameter("zipcd");
		
		Part picPart = request.getPart("pic");
		
		//학생 정보 조회
		StudentServiceInf studentService = new StudentService();
		StudentVo studentVo = studentService.getStudent(id);
		studentVo.setName(name);
		studentVo.setAdd1(add1);
		studentVo.setAdd2(add2);
		studentVo.setZipcd(zipcd);
		
		//신규이미지로 업데이트 하는 경우
		if(picPart.getSize()>0){
			//업로드 당시 파일명(pic)
			//uuid를 통해서 임의의 파일명을 하나 작성(picname)
			//업로드할 경로(FileUtil.uploadPath)
			
			String contentDisposition = picPart.getHeader("Content-Disposition");
			String pic = FileUtil.getFileName(contentDisposition);
			String picpath = FileUtil.fileUploadPath;
			String picname = UUID.randomUUID().toString();
			
			studentVo.setPic(pic);
			studentVo.setPicname(picname);
			studentVo.setPicpath(picpath);
			
			picPart.write(picpath+File.separator+picname);
			picPart.delete(); 
		}else if(studentVo.getPic()==null){
			studentVo.setPic("noProfile.png");
			studentVo.setPicname(studentVo.getPic());
			studentVo.setPicpath(FileUtil.fileUploadPath);
		}
		
		//학생 정보 업데이트
		studentService.studentUpdate(studentVo);
		
		//redirect
		//왜 ? redirect이냐???
		//redirect는 아예 다른 페이지로 요청으로 하여 다시 최초페이지로 만들어줌..??
		//db상의 정보가 변경되는 사항이나 그럴 경우 foward로 하면 db변경사항으로 다시 돌아가서 계속 돌아가서 db가 변화함.. 그럴 일을 없게하기위해서
		//학생 정보상세 조회화면으로 이동
		response.sendRedirect("/studentDetail?id="+id);
		
		//if(프로필 이미지를 안올린경우 ) : 기존이미지를 사용
		//db에 있는 값을 조회해서 사용 
		//else if(이미지가 있는경우 ) : 신규업로드한 이미지를 사용
		
		
		
		
		//service.studentUpdate()메서드 호출
		
		// /student/sutdentDetail.jsp 위임
		 
//		StudentVo studentVo = new StudentVo();
//      studentVo.setId(2);
//      studentVo.setName("강병관");
//      studentVo.setAddr1("대전광역시 중구 중앙로 77");
//      studentVo.setAddr2("영민빌딩 2층 대덕인재개발원");
//      studentVo.setZipcd("34940");
//      studentVo.setPic("1.jpg");
//      studentVo.setPicpath("D:\\A_TeachingMaterial\\7.JspSpring\\fileUpload");
//      studentVo.setPicname("eab63c02-143f-4551-a3b7-c57933e7f962");
		
	}

}
