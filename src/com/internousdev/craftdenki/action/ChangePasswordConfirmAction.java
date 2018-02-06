package com.internousdev.craftdenki.action;

import java.sql.SQLException;
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

	private String errorMassage;

	public String execute() throws SQLException{

		String result = SUCCESS;

		ChangePasswordConfirmDAO dao = new ChangePasswordConfirmDAO();
		UserInfoChangeDTO dto = new UserInfoChangeDTO();

		dto=dao.checkAnswer(answer);
		if (answer.equals(dto.getAnswer())) {
			session.put(answer, dto.getAnswer());

		if(!(password.equals(checkPassword))){
			if (!(password.equals(""))) {
					ChangePasswordConfirmDAO changePasswordConfirmDAO = new ChangePasswordConfirmDAO();
					boolean checkId = changePasswordConfirmDAO.getUserInfo(answer);

					if (checkId) {
					if(password.matches("[\\w]")){
						if (password.matches("{1,16}")) {

							session.put("password", password);
							result = SUCCESS;

						}else {
							setErrorMassage("パスワードは１文字以上１６文字以下で入力してください。");
							result = ERROR;
						}
				}else {
					setErrorMassage("パスワードは半角英数字で入力してください。");
					result = ERROR;
				}
			}else {
				setErrorMassage("同じパスワードが存在します。");
			}

			}else {
				setErrorMassage("パスワードを入力してください");
				result = ERROR;
			}
	}else {
		setErrorMassage("入力されたパスワードが異なります。");
	}
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
		return errorMassage;
	}

	public void setErrorMassage(String errorMassage) {
		this.errorMassage = errorMassage;
	}
}
