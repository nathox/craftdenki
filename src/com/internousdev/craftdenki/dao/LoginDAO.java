package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.craftdenki.dto.LoginDTO;
import com.internousdev.craftdenki.util.DBConnector;

public class LoginDAO {

	private LoginDTO dto = new LoginDTO();
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public LoginDTO loginUserInfo(String loginId, String loginPassword) {

		String sql = "select*From user_info_transaction where user_id = ? and password = ?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, loginId);
			ps.setString(2,loginPassword);

			ResultSet rs = ps.executeQuery();

			if(rs.next()){



			}

		}catch(SQLException e){
			e.printStackTrace();
		}

		return null;
	}

}
