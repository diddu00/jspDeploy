package kr.or.ddit.student.service;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.student.model.StudentVo;

import org.junit.Before;
import org.junit.Test;

public class StudentServiceTest {
	StudentServiceInf service;
	
	@Before
	public void setup(){
		service = new StudentService();
	}
	
	
	/**
	 * 
	* Method : selectAllStudentsTest
	* 최초작성일 : 2018. 7. 10.
	* 작성자 : PC11
	* 변경이력 :
	* Method 설명 : 모든 학생의정보를 조회하는 selectAllStudents를 테스트하는 메서드 
	 */
	@Test
	public void selectAllStudentsTest() {
		/***Given***/

		/***When***/
		List<StudentVo> studentList = service.selectAllStudents();
		for (StudentVo vo : studentList) {
			System.out.println(vo);
		}  
		
		/***Then***/
		assertEquals(25, studentList.size());
	}
	
	@Test
	public void getStudent(){
		/***Given***/
		int id= 9;
		StudentVo studentVo = new StudentVo();
		studentVo.setId(8);
		
		/***When***/
		StudentVo vo = service.getStudent(id);			//getStudentById
		StudentVo vo2 = service.getStudent(studentVo);	//getStudentByVo

		/***Then***/
		assertEquals("차득림", vo.getName());
		assertEquals("양관모", vo2.getName());

	}
	
	@Test
	public void getStudentPageListTest(){
		/***Given***/
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("page", 3);
		map.put("pageSize", 10);
		/***When***/
		Map<String,Object> resultMap = service.getStudentPageList(map);
		List<StudentVo> pageList = (List<StudentVo>)resultMap.get("pageList");
		int totCnt = (int)resultMap.get("totCnt");
		
		/***Then***/
		assertEquals(5, pageList.size());
		assertEquals(25, totCnt);
		
	}
	
	@Test
	public void calcultatePageNavi(){
		   /***Given***/
	      int totCnt = 25;
	      int pageSize = 10;
	      
	      int cnt= totCnt/pageSize; //몫
	      int mod = totCnt%pageSize; //나머지
	      
	      if(mod>0)
	         cnt++;
	            
//	      totCnt/pageSize = 2;
//	      나머지:5
	      
	      /***When***/
	      //Math.cail,Math.floor 둘중 한개 사용합시다!
	      double naviSize = (totCnt/pageSize);
	      System.out.println(Math.ceil(2.5d));
	      System.out.println(Math.ceil((double)totCnt/(double)pageSize));
	      System.out.println(Math.floor(totCnt/pageSize));
	      
	      /***Then***/
	      assertEquals(3, cnt);

	}
	
//	@Test
//	public void pageNaviTest(){
//		/***Given***/
//		HashMap<String, Integer> map = new HashMap<String, Integer>();
//		map.put("page", 3);
//		map.put("pageSize", 10);
//
//		/***When***/
//		String str = (String) service.getStudentPageList(map).get("pageNavi");
//		String testStr = "<li><a href=studentList?page=1&pageSize=10></a></li>"+
//				"<li><a href=studentList?page=2&pageSize=10></a></li>"+
//				"<li><a href=studentList?page=3&pageSize=10></a></li>";
//		/***Then***/
//		assertEquals(testStr, str);
//	
//	}
	
	
}
