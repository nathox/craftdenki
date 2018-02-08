package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;

import com.internousdev.craftdenki.dto.UserInfoChangeDTO;
import com.internousdev.craftdenki.util.DBConnector;;



public class ChangePasswordConfirmDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection conn = dbConnector.getConnection();



	public Map<String, Object> session;

	public UserInfoChangeDTO checkAnswer(String answer){


		UserInfoChangeDTO userInfoChangeDTO = new UserInfoChangeDTO();
		try{
			String sql ="select * from user_info where answer=?";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, answer);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				userInfoChangeDTO.setAnswer(rs.getString("answer"));
			}

		}catch(Exception e){
			e.printStackTrace();
		}
		return userInfoChangeDTO;
	}





	public Map<String, Object> getSession(){
		return session;
	}
	public void setSession(Map<String, Object> session){
		this.session=session;
	}
}
