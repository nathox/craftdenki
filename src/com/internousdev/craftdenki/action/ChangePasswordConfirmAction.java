package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ChangePasswordConfirmDAO;
import com.internousdev.craftdenki.dto.UserInfoChangeDTO;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author internous
 *
 */
public class ChangePasswordConfirmAction extends ActionSupport implements SessionAware {
	private String answer;

	private String password;

	private String checkPassword;

	public Map<String,Object> session;

	private String errorMessage;

	public String execute(){

		String result = SUCCESS;

		ChangePasswordConfirmDAO dao = new ChangePasswordConfirmDAO();
		UserInfoChangeDTO dto = new UserInfoChangeDTO();

		dto=dao.checkAnswer(answer);
		if (answer.equals(dto.getAnswer())) {

			if(password.equals(checkPassword)){
				if (!(password.equals(""))) {

						if(password.matches("[\\w]")){
							if (password.matches("[\\w]{1,16}")) {

								session.put("answer", dto.getAnswer());
								session.put("password", password);

							}else {
								setErrorMessage("パスワードは１文字以上１６文字以下で入力してください。");
								result = ERROR;
							}
					}else {
						setErrorMessage("パスワードは半角英数字で入力してください。");
						result = ERROR;
					}

				}else {
					setErrorMessage("パスワードを入力してください");
					result = ERROR;
				}
				}else {
					setErrorMessage("入力されたパスワードが異なります。");
				}

		} else{
		setErrorMessage("秘密の質問の答えが違います。");
		session.put("password", password);

		result = ERROR;
		}




		return result;
	}


	public String getAnswer(){
		return answer;
	}
	public  void  setAnswer(String answer) {
		this.answer = answer;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getCheckPassword() {
		return checkPassword;
	}

	public void setCheckPassword(String checkPassword) {
		this.checkPassword = checkPassword;
	}



	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public String getErrorMassage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}
