package kr.or.ddit.cookie.util;

import java.util.Iterator;

public class CookieUtil {
	/**
	 * 
	* Method : getCookie
	* 최초작성일 : 2018. 7. 6.
	* 작성자 : PC11
	* 변경이력 :
	* @param cookie
	* @param name
	* @return
	* Method 설명 :
	 */
	public String getCookie(String cookie, String name) {
		//cookie : userId=brown; rememberMe=y; checkYn=n
		String []cookies=cookie.split("; ");
		String cookieResult = "";
		for (String cookieStr : cookies) {
			String [] cookieStrs = cookieStr.split("=");
			//cookieStrs[0] <= name
			//cookieStrs[1] <= value
			if(name.equals(cookieStrs[0])){
				cookieResult= cookieStrs[1];
				break;
			}
		}
		
		return cookieResult;
	}

}
