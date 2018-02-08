package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.craftdenki.dto.CartDTO;
import com.internousdev.craftdenki.util.DBConnector;
import com.internousdev.craftdenki.util.DateUtil;

public class CartDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();

	private String insert = "INSERT INTO cart_info (id,user_id,product_id,product_count,price,regist_date,update_date,total_price) VALUES(?,?,?,?,?,?,?,?)";

	//カート情報取得メソッド
	public ArrayList<CartDTO> getCartInfo(String user_id)throws SQLException{
		ArrayList<CartDTO> cartDTO = new ArrayList<CartDTO>();

		String sql = "SELECT ci.id as id, pi.product_name as product_name, pi.product_name_kana as product_name_kana, pi.image_file_path as image_file_path, pi.price as price, ci.product_count as product_count, pi.release_company as release_company, pi.release_date as release_date, ci.total_price as total_price FROM cart_info as ci LEFT JOIN product_info as pi ON ci.product_id = pi.product_id WHERE ci.user_id = ?";

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_id);

			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()){
				CartDTO dto = new CartDTO();
				dto.setId(resultSet.getInt("id"));
				dto.setProductName(resultSet.getString("product_name"));
				dto.setProductNameKana(resultSet.getString("product_name_kana"));
				dto.setImageFilePath(resultSet.getString("image_file_path"));
				dto.setPrice(resultSet.getInt("price"));
				dto.setProductCount(resultSet.getInt("product_count"));
				dto.setReleaseCompany(resultSet.getString("release_company"));
				dto.setReleaseDate(resultSet.getString("release_date"));
				dto.setTotalPrice(resultSet.getInt("total_price"));
				cartDTO.add(dto);
				System.out.println(dto.getProductName());
			}


		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
		return cartDTO;
	}

	//カート情報削除メソッド
	public int deleteCart(String user_id,int deleteId)throws SQLException{
		String sql = "DELETE FROM cart_info WHERE product_id = ? AND user_id = ? AND id = ?";

		PreparedStatement ps;
		int result = 0 ;
		try{
			ps = connection.prepareStatement(sql);
			//ps.setString(1,product_id);
			ps.setString(1,user_id);
			ps.setInt(2,deleteId);
			result = ps.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
			return result;
	}




	//カートテーブルにInsertメソッド
	public void insertCart(String userId,int product_id,int product_count,int price)throws SQLException{
		int totalPrice = product_count * price;

		try{
			PreparedStatement ps = connection.prepareStatement(insert);
			ps.setString(1,userId);
			ps.setInt(1,product_id);
			ps.setInt(3,product_count);
			ps.setInt(4,price);
			ps.setString(5,dateUtil.getDate());
			ps.setString(6,dateUtil.getDate());
			ps.setInt(7,totalPrice);

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
	}


}
