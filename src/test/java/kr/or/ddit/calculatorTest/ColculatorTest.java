package kr.or.ddit.calculatorTest;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import calculator.Calculator;

public class ColculatorTest {
	
	/*
	 * setup() (@Before)실행 -> 테스트 메소드 실행 -> tearDown()(@After)실행
	 */
	
	/*
	 * beforeClass(@beforClass)
	 * setup()-> (@Befor)실행 -> add테스트 메소드 실행 -> tearDown() (@After) 실행
	 * setup()-> (@Befor)실행 -> minus테스트 메소드 실행 -> tearDown() (@After) 실행
	 * setup()-> (@Befor)실행 -> mul테스트 메소드 실행 -> tearDown() (@After) 실행
	 * setup()-> (@Befor)실행 -> div테스트 메소드 실행 -> tearDown() (@After) 실행
	 * afterClass(@afterClass)
	 */
	private Calculator cal;
	private int param1;
	private int param2;
	
	
	
	@Before
	public void setup(){
		System.out.println("before");
		cal = new Calculator();
		param1 = 6;
		param2 = 5;
	}
	
	@After
	public void tearDown(){
		System.out.println("after");
	}
	/**
	 * 
	* Method : addTest
	* 최초작성일 : 2018. 7. 6.
	* 작성자 : PC11
	* 변경이력 :
	* Method 설명 : 계산기의 덧셈 기능 테스트
	 */
	@Test
	public void addTest() {
		/***Given***/
		
		/***When***/
		int addResult=cal.add(param1, param2);
		
		/***Then***/
		assertEquals(11, addResult);
		
	}
	
	/**
	 * 
	* Method : minusTest
	* 최초작성일 : 2018. 7. 6.
	* 작성자 : PC11
	* 변경이력 :
	* Method 설명 : 계산기의 뺄셈 기능 테스트 
	 */
	@Test
	public void minusTest(){
		/***Given***/
		
		/***When***/
		int minusResult=cal.minus(param1, param2);
		
		/***Then***/
		assertEquals(1, minusResult);
		
	}
	
	@Test
	public void mulTest(){
		/***Given***/
	
		/***When***/
		int mulResult=cal.mul(param1, param2);
		
		/***Then***/
		assertEquals(30, mulResult);
		
	}
	
	@Test
	public void divTest(){
		/***Given***/
		
		/***When***/
		int divResult=cal.div(param1, param2);
		
		/***Then***/
		assertEquals(1, divResult);
		
	}
	
	/**
	 * 
	* Method : diveByZeroTest
	* 최초작성일 : 2018. 7. 6.
	* 작성자 : PC11
	* 변경이력 :
	* Method 설명 : 계산기 나눗셈의 0으로 나우었을 때의 예외 확인
	 */
	@Test
	public void diveByZeroTest(){
		/***Given***/
		param2 = 0;
		
		/***When***/
		int divResult= cal.div(param1, param2);
		
		/***Then***/	
		assertEquals(0, divResult);
	}

}
