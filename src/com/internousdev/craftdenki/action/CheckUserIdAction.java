package com.internousdev.craftdenki.action;



import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.CheckUserIdDAO;
import com.internousdev.craftdenki.dto.UserInfoChangeDTO;
import com.opensymphony.xwork2.ActionSupport;


public class CheckUserIdAction extends ActionSupport implements SessionAware{

	private String userId;
	public Map<String, Object> session;
	private CheckUserIdDAO checkUserIdDAO = new CheckUserIdDAO();
	private UserInfoChangeDTO userInfoChangeDTO = new UserInfoChangeDTO();


	public String execute(){
		String result = ERROR;

		userInfoChangeDTO=checkUserIdDAO.select(userId);
		if(userId.equals(userInfoChangeDTO.getUserId())){
				result =SUCCESS;
		}
		session.put("userId", userId);
		return result;

	}


	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
