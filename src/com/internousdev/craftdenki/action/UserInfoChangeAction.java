package com.internousdev.craftdenki.action;

import java.util.ArrayList;
//import java.util.Iterator;
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


		//Iterator<UserInfoChangeDTO> iterator = list_user_info.iterator();

		////////////イテレータ関係の文脈はまだ完成していない
		/* if(!(iterator.hasNext())){

			list_user_info = null;
		}*/

		/* (2018/02/06 PM13:19 JSPのＳタグ内でイテレータが使えるから、このメソッドでは
		 * return SUCCESS;を返すだけでいいのでは？)
		 */

		//////////////////////////////////////////////////////////////////////////////////////////////

		result=SUCCESS;

		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

}
