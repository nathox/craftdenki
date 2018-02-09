package com.internousdev.craftdenki.action;


import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ChangePasswordCompleteDAO;
import com.internousdev.craftdenki.dto.UserInfoChangeDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ChangePasswordCompleteAction extends ActionSupport implements SessionAware {


	public Map<String,Object> session;

	private ChangePasswordCompleteDAO changePasswordCompleteDAO = new ChangePasswordCompleteDAO();

	public String execute() throws SQLException {

		String result = ERROR;

		boolean checkUpdate =changePasswordCompleteDAO.updateInfo(
				session.get("password").toString(),
			((UserInfoChangeDTO) session.get("userId")).getUserId().toString());


		if(checkUpdate){
			result = SUCCESS;
		}

		return result;

	}







	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSssion() {
		return this.session;
	}
}
