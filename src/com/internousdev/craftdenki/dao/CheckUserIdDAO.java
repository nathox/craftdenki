package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.craftdenki.dto.UserInfoChangeDTO;
import com.internousdev.craftdenki.util.DBConnector;

public class CheckUserIdDAO {

	private DBConnector db = new DBConnector();

	private Connection conn = db.getConnection();

	private UserInfoChangeDTO userInfoChangeDTO = new UserInfoChangeDTO();

	public UserInfoChangeDTO select(String userId) {

		String sql = "SELECT question FROM user_info where user_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userId);

			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				userInfoChangeDTO.setUserId(rs.getString("user_id"));
			}

		} catch(Exception e) {
			e.printStackTrace();
		}

		return userInfoChangeDTO;
	}

	public UserInfoChangeDTO getUserInfoChangeDTO() {
		return userInfoChangeDTO;
	}
}
