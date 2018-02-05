package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.LoginDAO;
import com.internousdev.craftdenki.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private LoginDAO dao = new LoginDAO();
	private LoginDTO dto = new LoginDTO();
	private String result;
	private String loginId;
	private String loginPassword;

	public String execute() {
		result = ERROR;

		dto = dao.loginUserInfo(loginId,loginPassword);

		session.put("loginUserInfo", dto);




		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getLoginId(){
		return loginId;
	}

	public void setLoginId(String loginId){
		this.loginId = loginId;
	}

	public String getLoginPass(){
		return loginPassword;
	}

	public void setLoginPass(String loginPassword){
		this.loginPassword = loginPassword;
	}

}
