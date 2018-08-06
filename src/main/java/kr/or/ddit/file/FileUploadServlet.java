package kr.or.ddit.file;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Servlet implementation class FileUpLoadServlet
 */
@WebServlet("/fileUpload")
@MultipartConfig(maxFileSize= 1024 * 1000 * 16) // <-byte 단위 5MB --> 1MB * 5 --> 1KB * 1000 * 5 --> 1024 * 1000 * 5
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Logger logger = LoggerFactory.getLogger(FileUploadServlet.class);
   
    
	//파일은 반드시 포스트로 하라요
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//parameter:userId, uploadFile
		//일반 텍스트 파라미터는 request.getParameter를 통해서 얻을수있다.
		//파일의 경우 request.getPart를 통해서 얻을수 있다.
		
		logger.debug("contentType : "+request.getContentType());
		logger.debug("UserId : "+request.getParameter("userId"));
		//logger.debug("UploadFile : "+request.getParameter("uploadFile"));
		Part uploadFilePart = request.getPart("uploadFile"); 
		//logger.debug("part getName : "+uploadFilePart.getName());
		
		//file 이름에 대한 정보를 획득 
		// -> getHeader("Content-Disposition");
		
		//form-data; name="uploadFile"; filename="sally.png" 이것이 정보
		String contentDisposition = uploadFilePart.getHeader("Content-Disposition");
		logger.debug("contentDisposition : "+contentDisposition);
		String fileName = FileUtil.getFileName(contentDisposition);
		logger.debug("filename : "+fileName);
		
		/**
		 * 파일 저장 경로 설정
		 * 실무 : 별도 storage
		 * 개발환경 : 임의 영역(서버 변경시, 재기동시 업로드 파일 삭제됨)
		 *	//fileUpload 디렉토리에 임의 작성 
		 *	경로 : D:\A_TeachingMaterial\7.JspSpring\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\jsp\fileUpload
		 *	
		 *	url --> realpath : application 객체에서 제공해주는 메소드
		 *	doPost 메소드 안에서 application(servletContext)객체를 구한다.
		 *
		 *	1. request.getservletContext()
		 *	2. getServletContext() (서블릿에서 제공해주는 메소드)
		 */
		
		/*ServletContext servletContext = getServletContext();
		//임의의 배포경로
		String path = servletContext.getRealPath("/fileUpload");*/
		
		
		//고정된 영역으로 배포
		String path = FileUtil.fileUploadPath;
		
		//파일이 정상적인지 확인 ==> size가 0보다 클때 업로드 수행하도록
		if(uploadFilePart.getSize()>0){
			//사용자가 업로드한 실제파일명은 디비상에 저장하고, 물리적 파일명은 임의로 적용
			uploadFilePart.write(path+File.separator+UUID.randomUUID().toString()); //파일 세퍼레이터 즉 나누는 기준 windows = '\' 여튼 OS마다 다 다르기때문에 File.separator라는 녀석으로 받아온다.
			//임시파일을 지워주는 것
			uploadFilePart.delete();
		}
	
	}

}
