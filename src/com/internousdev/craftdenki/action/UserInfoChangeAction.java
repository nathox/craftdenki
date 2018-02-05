package com.internousdev.craftdenki.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.UserInfoChangeDAO;
import com.internousdev.craftdenki.dto.UserInfoChangeDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoChangeAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;

	private String result;

	private List<UserInfoChangeDTO> list_user_info = new ArrayList<>();

	private UserInfoChangeDAO userInfoChangeDAO = new UserInfoChangeDAO();


	public String execute(){

		list_user_info = userInfoChangeDAO.getUserInfo();

		/*↑ここまでで、DAOに格納されたユーザー情報をActionクラスのList型 list_user_infoに格納*/





		//////////////////////////////////////////////////////////////////////////////////////////////

		result=SUCCESS;

		return result;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

}
