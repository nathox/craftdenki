package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.craftdenki.util.DBConnector;
import com.internousdev.craftdenki.util.DateUtil;


public class ChangePasswordCompleteDAO {
	private DBConnector db = new DBConnector();

	private Connection conn = db.getConnection();

	private DateUtil dateUtil = new DateUtil();

	private String sql = "UPDATE user_info SET password=? updated_date = ? WHERE user_id=? ";

	public boolean updateInfo(String password, String defaultId) throws SQLException{

		boolean result = false;

		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, password);
			ps.setString(2, dateUtil.getDate());
			ps.setString(3, defaultId);

			int checkUpdate = ps.executeUpdate();

			if(checkUpdate > 0){
				result = true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			conn.close();
		}
		return result;


	}
}
