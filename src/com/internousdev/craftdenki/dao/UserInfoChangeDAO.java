package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dto.LoginDTO;
import com.internousdev.craftdenki.dto.UserInfoChangeDTO;
import com.internousdev.craftdenki.util.DBConnector;


public class UserInfoChangeDAO implements SessionAware {

	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private List<UserInfoChangeDTO> list_user_info = new ArrayList<>();

	public Map<String, Object> session;



///////////////////////////////////////////////////////////////////////////////



	public List<UserInfoChangeDTO> getUserInfo(){

		String sql = "* FROM user_info WHERE user_id=?";
		String sql2 = "* FROM destination_info WHERE user_id=?";

		String loginId=((LoginDTO)session.get("loginUserInfo")).getLoginId();
		//↑高橋さんからもらうセッションの鍵名を書く

		System.out.println(loginId);

		try{
			PreparedStatement p1 = connection.prepareStatement(sql);
			p1.setString(1,loginId);
			ResultSet r1 = p1.executeQuery();

			PreparedStatement p2 = connection.prepareStatement(sql2);
			p2.setString(1,loginId);
			ResultSet r2 = p2.executeQuery();


			UserInfoChangeDTO  u1 = new UserInfoChangeDTO();

			u1.setUserId(r1.getString("user_id"));
			u1.setPassword(r1.getString("password"));
			u1.setFamilyName(r1.getString("family_name"));
			u1.setFirstName(r1.getString("first_name"));
			u1.setFamilyNameKana(r1.getString("family_name_kana"));
			u1.setFirstNameKana(r1.getString("first_name_kana"));
			u1.setSex(r1.getInt("sex"));
			u1.setEmail(r1.getString("email"));
			u1.setQuestion(r1.getInt("question"));
			u1.setAnswer(r1.getString("answer"));

			u1.setUserAddress(r2.getString("user_address"));
			u1.setUserAddress2(r2.getString("user_address2"));
			u1.setUserAddress3(r2.getString("user_address3"));
			u1.setTelNumber(r2.getString("tel_number"));
			u1.setTelNumber2(r2.getString("tel_number2"));
			u1.setTelNumber3(r2.getString("tel_number3"));

			list_user_info.add(u1);

		}catch(Exception e){
			e.printStackTrace();
		}

		return list_user_info;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

}
