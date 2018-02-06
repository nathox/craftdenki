package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.internousdev.craftdenki.dto.UserInfoChangeDTO;
import com.internousdev.craftdenki.util.DBConnector;;



public class ChangePasswordConfirmDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection conn = dbConnector.getConnection();

	private boolean result =false;

	public Map<String, Object> session;

	public UserInfoChangeDTO checkAnswer(String answer) throws SQLException{
		UserInfoChangeDTO userInfoChangeDTO = new UserInfoChangeDTO();
		try{
			String sql ="select * from user_info where answer=?";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, answer);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				userInfoChangeDTO.setAnswer(rs.getString("answer"));
			}

		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			conn.close();
		}
		return userInfoChangeDTO;
	}


	public boolean getUserInfo(String answer){

		String sql="SELECT * FROM user_info ";

		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){


				String ans =rs.getString("answer");

				if( ans.equals(answer)){
						result = true;
						return result;
					}else{
						result = false;
					}
			}
		}catch(Exception e){
			e.printStackTrace();
		}

		return result;
	}



	public Map<String, Object> getSession(){
		return session;
	}
	public void setSession(Map<String, Object> session){
		this.session=session;
	}
}
