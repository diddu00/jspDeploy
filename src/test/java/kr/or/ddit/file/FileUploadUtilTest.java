package kr.or.ddit.file;

import static org.junit.Assert.*;

import org.junit.Test;

public class FileUploadUtilTest {

	@Test
	public void getFileNameTest() {
		/***Given***/
		String test = "form-data; name=\"uploadFile\"; filename=\"sally.png\"";

		/***When***/
		String fileName = FileUtil.getFileName(test);
		/***Then***/
		assertEquals("sally.png", fileName);

	}

}
