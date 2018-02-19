package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.UserCreateConfirmDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateConfirmAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String familyName;
	private String firstName;
	private String familyNameKana;
	private String firstNameKana;
	private String sex;
	private String mail;
	private String secretQuestion;
	private String secretAnswer;
	private String yuubin1;
	private String yuubin4;
	private String address;
	private String tel;

	private String loginPassCon;

	public Map<String,Object> session;

	private String result;

	private String errorMessage;

	private UserCreateConfirmDAO userCreateConfirmDAO=new UserCreateConfirmDAO();

	public String execute() {


/** ユーザーIDの重複を確認 **/

		if(userCreateConfirmDAO.getLoginUserId(loginUserId)){

			setErrorMessage("そのIDはすでに使われています");
			result=ERROR;
		}

		else{

			result=SUCCESS;

/** 重複していなければセッションに値を格納 **/

			session.put("loginUserId", loginUserId);
			session.put("loginPassword", loginPassword);
			session.put("familyName",familyName);
			session.put("firstName", firstName);
			session.put("familyNameKana", familyNameKana);
			session.put("firstNameKana", firstNameKana);
			session.put("sex",sex);
			session.put("mail", mail);
			session.put("secretQuestion", secretQuestion);
			session.put("secretAnswer", secretAnswer);
			session.put("address", address);
			session.put("tel", tel);


/** パスワード先頭3文字以外暗号化 **/



			if(loginPassword.length()>3){
			StringBuilder sb = new StringBuilder();
			for(int i = 0; i < loginPassword.length()-3; i++){
				sb.append("*");
			}

			loginPassCon = loginPassword.substring(0, 3) + sb.toString();
			}

			else if(loginPassword.length()==1){
				loginPassCon="*";
			}
			else if(loginPassword.length()==2){
				loginPassCon="**";
			}
			else{loginPassCon="***";}
		}

		return result;
	}



	public String getLoginUserId() {
		return loginUserId;
	}
	public void setLoginUserId(String loginUserId) {
		this.loginUserId=loginUserId;
	}
	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword=loginPassword;
	}
	public String getFamilyName() {
		return familyName;
	}
	public void setFamilyName(String familyName) {
		this.familyName=familyName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName=firstName;
	}
	public String getFirstNameKana() {
		return firstNameKana;
	}
	public void setFirstNameKana(String firstNameKana) {
		this.firstNameKana=firstNameKana;
	}
	public String getFamilyNameKana() {
		return familyNameKana;
	}
	public void setFamilyNameKana(String familyNameKana) {
		this.familyNameKana=familyNameKana;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex=sex;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail=mail;
	}
	public String getSecretQuestion() {
		return secretQuestion;
	}
	public void setSecretQuestion(String secretQuestion) {
		this.secretQuestion=secretQuestion;
	}
	public String getSecretAnswer() {
		return secretAnswer;
	}
	public void setSecretAnswer(String secretAnswer) {
		this.secretAnswer=secretAnswer;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel=tel;
	}

	@Override
	public void setSession(Map<String,Object> session) {
		this.session=session;
	}
	public Map<String,Object> getSession(){
		return session;
	}

	public String getErrorMessage(){
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}
	public String getLoginPassCon() {
		return loginPassCon;
	}

	public void setLoginPassCon(String loginPassCon) {
		this.loginPassCon = loginPassCon;
	}



	public String getYuubin1() {
		return yuubin1;
	}



	public void setYuubin1(String yuubin1) {
		this.yuubin1 = yuubin1;
	}



	public String getYuubin4() {
		return yuubin4;
	}



	public void setYuubin4(String yuubin4) {
		this.yuubin4 = yuubin4;
	}




}