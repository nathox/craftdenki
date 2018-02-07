package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserInfoChangeConfirmAction extends ActionSupport implements SessionAware{

	/*
	 * 	↓「ユーザー情報変更画面から送られた入力情報を格納するフィールド」
	 */
	private String userId;
	private String password;
	private String familyName;
	private String firstName;
	private String familyNameKana;
	private String firstNameKana;
	private int sex;
	private String email;
	private int question;
	private String answer;
	private String userAddress;
	private String userAddress2;
	private String userAddress3;
	private String telNumber;
	private String telNumber2;
	private String telNumber3;

	private String result;

	public Map<String, Object> session;



	public String execute(){

		result=SUCCESS;

		/*
		 * 必須データがＮＵＬＬだった場合等のエラー処理がまだ書けてない
		 *
		 * ↓前の機能で同じ鍵名のセッションを使ってるかもしれないので、中島さんに要確認
		 * 鍵名の　t_　はtempoの略
		 */

		//必須データ
		session.put("t_password", password);
		session.put("t_familyName", "familyName");
		session.put("t_firstName", "firstName");
		session.put("t_familyNameKana", "familyNameKana");
		session.put("t_firstNameKana", "firstNameKana");
		session.put("t_sex", "sex");
		session.put("t_email", "email");
		session.put("t_question", "question");
		session.put("t_answer", "answer");
		session.put("t_userAddress", "userAddress");

		//必須じゃない
		session.put("t_userAddress2", "userAddress2");
		session.put("t_userAddress3", "userAddress3");

		//必須データ
		session.put("t_telNumber", "telNumber");

		//必須じゃない
		session.put("t_telNumber2", "telNumber2");
		session.put("t_telNumber3", "telNumber3");
		//

		//UserInfoChangeCompleteDAOで行指定するためのセッション
		session.put("t_userId", "userId");

		return result;
	}




	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
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

	public String getFamilyName() {
		return  familyName;
	}

	public void setFamilyName(String  familyName) {
		this. familyName =  familyName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getFamilyNameKana() {
		return familyNameKana;
	}

	public void setFamilyNameKana(String familyNameKana) {
		this.familyNameKana = familyNameKana;
	}

	public String getFirstNameKana() {
		return firstNameKana;
	}

	public void setFirstNameKana(String firstNameKana) {
		this.firstNameKana = firstNameKana;
	}

	public int getSex(){
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getQuestion() {
		return question;
	}

	public void setQuestion(int question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserAddress2() {
		return userAddress2;
	}

	public void setUserAddress2(String userAddress2) {
		this.userAddress2 = userAddress2;
	}

	public String getUserAddress3() {
		return userAddress3;
	}

	public void setUserAddress3(String userAddress3) {
		this.userAddress3 = userAddress3;
	}

	public String getTelNumber() {
		return telNumber;
	}

	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}

	public String getTelNumber2() {
		return telNumber2;
	}

	public void setTelNumber2(String telNumber2) {
		this.telNumber2 = telNumber2;
	}

	public String getTelNumber3() {
		return telNumber3;
	}

	public void setTelNumber3(String telNumber3) {
		this.telNumber3 = telNumber3;
	}

}