package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.craftdenki.dto.ProductDTO;
import com.internousdev.craftdenki.util.DBConnector;

public class ProductDetailsDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();

	//商品詳細情報取得
	public ArrayList<ProductDTO> getProductDetailsInfo(int product_id) throws SQLException{

		ArrayList<ProductDTO> detailsList = new ArrayList<ProductDTO>();
		String sql = "SELECT * FROM product_info where product_id";

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, product_id);

			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()){
				ProductDTO productDTO = new ProductDTO();

				productDTO.setId(resultSet.getInt("id"));
				productDTO.setProduct_id(resultSet.getInt("product_id"));
				productDTO.setProduct_name(resultSet.getString("product_name"));
				productDTO.setProduct_name_kana(resultSet.getString("product_name_kana"));
				productDTO.setProduct_description(resultSet.getString("product_description"));
				productDTO.setCategory_id(resultSet.getInt("category_id"));
				productDTO.setPrice(resultSet.getInt("price"));
				productDTO.setImage_file_path(resultSet.getString("image_file_path"));
				productDTO.setImage_file_name(resultSet.getString("image_file_name"));
				productDTO.setRelease_data(resultSet.getDate("release_date"));
				productDTO.setRelease_company(resultSet.getString("release_company"));
				productDTO.setStatus(resultSet.getInt("status"));
				productDTO.setRegist_date(resultSet.getDate("regist_date"));
				productDTO.setUpdate_date(resultSet.getDate("update_date"));
				productDTO.setItem_stock(resultSet.getInt("item_stock"));

				detailsList.add(productDTO);
			}

		}catch(Exception e){
			e.printStackTrace();
		}
		return detailsList;
	}

}
