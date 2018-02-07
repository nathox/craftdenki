package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.craftdenki.dto.FavoriteDTO;
import com.internousdev.craftdenki.util.DBConnector;

public class FavoriteDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();

	public ArrayList<FavoriteDTO> getMyPageUserInfo(String loginId) throws SQLException {
		ArrayList<FavoriteDTO> favoriteDTO = new ArrayList<FavoriteDTO>();
		// SQL文わからない
		String sql = "SELECT product_name, product_name_kana, image_file_path,image_file_name, price, release_company, release_date from favorite_info JOIN product_info ON favorite_info.product_id = product_info.product_id where user_id = ?";


		try {
			PreparedStatement ps = connection.prepareStatement(sql);

			ps.setString(1, loginId);

			ResultSet rs = ps.executeQuery();



			while (rs.next()) {
				FavoriteDTO dto = new FavoriteDTO();
				dto.setProductName(rs.getString("product_name"));
				dto.setProductNameKana(rs.getString("product_name_kana"));
				dto.setImageFilePath(rs.getString("image_file_path"));
				dto.setImageFileName(rs.getString("image_file_name"));
				dto.setPrice(rs.getString("price"));
				dto.setReleaseCompany(rs.getString("release_company"));
				dto.setReleaseDate(rs.getString("release_date"));
				favoriteDTO.add(dto);
				// FavoriteDTO.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}

		return favoriteDTO;
	}

//	public FavoriteDTO select(String id, String user_id, String product_id, String regist_date) {
//		// TODO 自動生成されたメソッド・スタブ
//
//	// SQL実行
//		String sql = "";
//
//		PreparedStatement ps = connection.prepareStatement(sql);
//	int result;
//	try
//	{
//
//		ps.setString(1, id);
//		String user_id＝null;
//		preparedStatement.setString(2, user_id);
//		String product_id;
//		preparedStatement.setString(3, product_id);
//		String regist_date;
//		preparedStatement.setString(4, regist_date);
//		result = preparedStatement.executeUpdate();
//	}catch(
//	SQLException e)
//	{
//		e.printStackTrace();
//	}finally
//	{
//		connection.close();
//	}return result;
//}return null;
//}

}
