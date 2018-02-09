package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.craftdenki.dto.SettlementDTO;
import com.internousdev.craftdenki.util.DBConnector;
import com.internousdev.craftdenki.util.DateUtil;

public class SettlementCompleteDAO {

	private DBConnector dbConnector = new DBConnector();

	private SettlementDTO dto = new SettlementDTO();

	private Connection connection = dbConnector.getConnection();

	private DateUtil dateUtil = new DateUtil();

	//商品購入履歴テーブルにインサート
	public void insertPurchaseHistory(String userId,int productId,int productCount,int price,int atCost)throws SQLException{
		String sql ="INSERT INTO purchase_history_info(user_id,product_id,product_count,price,at_cost,regist_date) VALUES(?,?,?,?,?,?)";

		try{
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, userId);
			ps.setInt(2,productId);
			ps.setInt(3, productCount);
			ps.setInt(4,price);
			ps.setInt(5, atCost);
			ps.setString(6,dateUtil.getDate());

			ps.executeQuery();

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			connection.close();
		}

	}

}
