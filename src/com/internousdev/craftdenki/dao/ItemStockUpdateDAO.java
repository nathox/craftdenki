package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.craftdenki.util.DBConnector;

public class ItemStockUpdateDAO {

	private DBConnector dbConnector=new DBConnector();
	private Connection connection=dbConnector.getConnection();

	private String sql = "UPDATE product_info "
							+ "SET item_stock = item_stock + ? "
							+ "WHERE product_id = ?";


	/* 現在の在庫プラス引数(count)をUPDATEします
	 * 仕入は正の整数(仕入数)と商品IDを
	 * 購入は負の整数(購入数)と商品IDを
	 * 引数としてください。
	 * update出来なければ、falseを返します。
	 */
	public boolean itemStockUpdate(int count ,int productId) throws SQLException{
		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1,count);
			preparedStatement.setInt(2, productId);
			preparedStatement.execute();
			if(preparedStatement.executeUpdate() == 0){
				return false;
			};
		} catch(Exception e){
		e.printStackTrace();
		} finally{
			connection.close();
		}

		return true;
	}
}

