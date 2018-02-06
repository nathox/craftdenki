package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.craftdenki.dto.ProductDTO;
import com.internousdev.craftdenki.util.DBConnector;

public class ProductListDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();

	//商品リスト情報の取得
	public ArrayList<ProductDTO> getProductInfo() throws SQLException{
		ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();

		String sql = "SELECT * FROM product_info ORDER BY regist_date DESC";

	try{
		PreparedStatement statement = connection.prepareStatement(sql);

		ResultSet resultSet = statement.executeQuery();

		while(resultSet.next()){
			ProductDTO dto = new ProductDTO();

			dto.setId(resultSet.getInt("id"));
			dto.setProduct_id(resultSet.getInt("product_id"));
			dto.setProduct_name(resultSet.getString("product_name"));
			dto.setProduct_name_kana(resultSet.getString("product_name_kana"));
			dto.setProduct_description(resultSet.getString("product_description"));
			dto.setCategory_id(resultSet.getInt("category_id"));
			dto.setPrice(resultSet.getInt("price"));
			dto.setImage_file_path(resultSet.getString("image_file_path"));
			dto.setImage_file_name(resultSet.getString("image_file_name"));
			dto.setRelease_data(resultSet.getDate("release_data"));
			dto.setRelease_company(resultSet.getString("release_company"));
			dto.setStatus(resultSet.getInt("status"));
			dto.setRegist_date(resultSet.getDate("regist_date"));
			dto.setUpdate_date(resultSet.getDate("update_date"));
			dto.setItem_stock(resultSet.getInt("item_stock"));
			productList.add(dto);

		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		connection.close();
	}
		return productList;
	}

}
