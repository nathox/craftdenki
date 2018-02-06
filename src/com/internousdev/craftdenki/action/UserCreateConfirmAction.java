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
	private String yuubin;
	private String address;
	private String tel;

	public Map<String,Object> session;

	private String result;

	private String errorMessage;

	private UserCreateConfirmDAO userCreateConfirmDAO=new UserCreateConfirmDAO();

	public String execute() {

		result=SUCCESS;


//ユーザーIDの重複を確認

		if(userCreateConfirmDAO.getLoginUserId(loginUserId)){

			setErrorMessage("そのIDはすでに使われています");
			result=ERROR;
		}

//ユーザー情報 未入力、文字種、桁数 判別





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
		session.put("yuubin", yuubin);
		session.put("address", address);
		session.put("tel", tel);

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
	public String getYuubin() {
		return yuubin;
	}
	public void setYuubin(String yuubin) {
		this.yuubin=yuubin;
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
	public String getErrorMessage(){
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}

}