package kr.or.ddit.user.dao;

import kr.or.ddit.user.model.UserVo;

public interface UserDaoInf {
	/**
	 * 
	* Method : getUser
	* 최초작성일 : 2018. 7. 4.
	* 작성자 : PC11
	* 변경이력 :
	* @param userID
	* @return UserVo
	* Method 설명 : userID를 받아 해당유저객체를 가져옴 
	 */
	UserVo getUser(String userID);
}
