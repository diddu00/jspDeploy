package kr.or.ddit.user.dao;

import kr.or.ddit.user.model.UserVo;

public class UserDao implements UserDaoInf{

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
		//원래대로라면 : orm, jdbc 등을 이용하여 db를 통해 조회한 결과를 반환
		//servlet 테스트 목적으로 임의의 고정된 값을 반환
		UserVo userVo = new UserVo();
		userVo.setUserId("test");
		userVo.setPassword("qwer1");
		userVo.setUserNm("차득림");
		
		if(userID.equals(userVo.getUserId())){
			return userVo;
		}else{
			return null;
		}
	}

}
