package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ChangePasswordDAO;
import com.internousdev.craftdenki.dto.UserInfoChangeDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ChangePasswordAction extends ActionSupport implements SessionAware{
	private String userId;
	private String password;
	private String checkPassword;
	private String question;
	private String answer;
	public Map<String,Object> session;
	private String errorMassage;


	public String execute(){
		String result = ERROR;
		ChangePasswordDAO changePasswordDAO = new ChangePasswordDAO();
		UserInfoChangeDTO userInfoChangeDTO = new UserInfoChangeDTO();











		return result;
	}






	/**
	 * userIdを取得します。
	 * @return userId
	 */
	public String getUserId() {
	    return userId;
	}


	/**
	 * userIdを設定します。
	 * @param userId userId
	 */
	public void setUserId(String userId) {
	    this.userId = userId;
	}


	/**
	 * passwordを取得します。
	 * @return password
	 */
	public String getPassword() {
	    return password;
	}


	/**
	 * passwordを設定します。
	 * @param password password
	 */
	public void setPassword(String password) {
	    this.password = password;
	}


	/**
	 * checkPasswordを取得します。
	 * @return checkPassword
	 */
	public String getCheckPassword() {
	    return checkPassword;
	}


	/**
	 * checkPasswordを設定します。
	 * @param checkPassword checkPassword
	 */
	public void setCheckPassword(String checkPassword) {
	    this.checkPassword = checkPassword;
	}


	/**
	 * questionを取得します。
	 * @return question
	 */
	public String getQuestion() {
	    return question;
	}


	/**
	 * questionを設定します。
	 * @param question question
	 */
	public void setQuestion(String question) {
	    this.question = question;
	}


	/**
	 * answerを取得します。
	 * @return answer
	 */
	public String getAnswer() {
	    return answer;
	}


	/**
	 * answerを設定します。
	 * @param answer answer
	 */
	public void setAnswer(String answer) {
	    this.answer = answer;
	}


	/**
	 * sessionを取得します。
	 * @return session
	 */
	public Map<String,Object> getSession() {
	    return session;
	}


	/**
	 * sessionを設定します。
	 * @param session session
	 */
	public void setSession(Map<String,Object> session) {
	    this.session = session;
	}
	public String getErrorMassage() {
		return errorMassage;
	}

	public void setErrorMassage(String errorMassage) {
		this.errorMassage = errorMassage;
	}
}
