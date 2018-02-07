package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.UserInfoChangeDAO;
import com.internousdev.craftdenki.dto.LoginDTO;
import com.internousdev.craftdenki.dto.UserInfoChangeDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoChangeAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;

	private String result;

	private List<UserInfoChangeDTO> list_user_info = new ArrayList<>();

	private UserInfoChangeDAO userInfoChangeDAO = new UserInfoChangeDAO();

	public String execute() throws SQLException{

		/*
		 * ↓セッションからログインしている「ユーザーID」を格納して、DAOのメソッドの引数にしてる
		 */
		String loginid = (((LoginDTO)session.get("loginUserInfo")).getLoginId()).toString();
		list_user_info = userInfoChangeDAO.getUserInfo(loginid);



		Iterator<UserInfoChangeDTO> iterator = list_user_info.iterator();

		if (!(iterator.hasNext())) {

			list_user_info = null;
		}

		result = SUCCESS;

		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

}
