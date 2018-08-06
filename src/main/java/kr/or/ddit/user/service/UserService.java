package kr.or.ddit.user.service;

import kr.or.ddit.user.dao.UserDao;
import kr.or.ddit.user.dao.UserDaoInf;
import kr.or.ddit.user.model.UserVo;

public class UserService implements UserServiceInf{
	UserDaoInf dao = new UserDao();
	/**
	 * 
	* Method : getUser
	* 최초작성일 : 2018. 7. 4.
	* 작성자 : PC11
	* 변경이력 :
	* @param userID
	* @return
	* Method 설명 :
	 */
	@Override
	public UserVo getUser(String userID) {
		return dao.getUser(userID);
	}

}
