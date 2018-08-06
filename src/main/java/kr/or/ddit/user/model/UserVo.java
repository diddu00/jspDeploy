package kr.or.ddit.user.model;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UserVo implements HttpSessionBindingListener{
	private Logger logger = LoggerFactory.getLogger(UserVo.class);
	
	private String userId;
	private String password;
	private String userNm;
	
	public UserVo() {

	}

	public UserVo(String userId, String password, String userNm) {
		this.userId = userId;
		this.password = password;
		this.userNm = userNm;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	
	public boolean validateUser(String userId, String password){
		if(this.userId.equals(userId)&&this.password.equals(password)){
			return true;
		}
		else 
			return false;
	}

	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		//session객체에서 session.setAttribut("UserVo",userVo)가 호출이 되었을때
		logger.debug("HttpSessionBinding valueBound : "+event.getName());
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		//session객체에서 session.removeAttribut("UserVo")가 호출이 되었을때
		logger.debug("HttpSessionUnBinging valueUnbound : "+event.getName());
	}
	
	
}
