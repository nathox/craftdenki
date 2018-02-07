package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.UserInfoChangeCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoChangeCompleteAction extends ActionSupport implements SessionAware{

	String result;
	public Map<String, Object> session;

	private UserInfoChangeCompleteDAO DAO=new UserInfoChangeCompleteDAO();




	public String execute() throws SQLException{

		DAO.infoChange(
				session.get("t_userId").toString(),
				session.get("t_password").toString(),
				session.get("t_familyName").toString(),
				session.get("t_firstName").toString(),
				session.get("t_familyNameKana").toString(),
				session.get("t_firstNameKana").toString(),
				Integer.parseInt((session.get("t_sex")).toString()),
				session.get("t_email").toString(),
				Integer.parseInt((session.get("t_question")).toString()),
				session.get("t_answer").toString(),
				session.get("t_userAddress").toString(),
				session.get("t_userAddress2").toString(),
				session.get("t_userAddress3").toString(),
				session.get("t_telNumber").toString(),
				session.get("t_telNumber2").toString(),
				session.get("t_telNumber3").toString()
				);

/*
 * 各セッションの値をＤＡＯのデータベース書き込むメソッドの引数として利用
 */


		result=SUCCESS;

		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session=session;
	}


}
