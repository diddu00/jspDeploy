package kr.or.ddit.encrypt.kisa.sha256;

import static org.junit.Assert.*;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class KISA_SHA256_Test {
	private Logger logger = LoggerFactory.getLogger(KISA_SHA256_Test.class);
	
	/**
	 * 
	* Method : encryptTest
	* 최초작성일 : 2018. 7. 18.
	* 작성자 : PC11
	* 변경이력 :
	* Method 설명 : sha256 hash 암호화 테스트
	 */
	@Test
	public void encryptTest() {
		/***Given***/
		String plainText = "qwer1";
		String plainText2 = "12345";

		/***When***/
		String encryptText = KISA_SHA256.encrypt(plainText);
		logger.debug("encryptText : "+encryptText);
		
		String encryptText2 = KISA_SHA256.encrypt(plainText2);
		logger.debug("encryptText : "+encryptText2);

		/***Then***/
		assertEquals("83de5bf590789716a4c4bdabc214c369c0ff54250fa4ed7e44cdb97f9aea8f", encryptText);
	}

}
