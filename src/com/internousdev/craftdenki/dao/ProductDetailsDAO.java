package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.craftdenki.dto.ProductDTO;
import com.internousdev.craftdenki.util.DBConnector;

public class ProductDetailsDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private ProductDTO productDTO = new ProductDTO();

	//商品詳細情報取得
	public ProductDTO getProductDetailsInfo(int product_id){

		String sql = "SELECT * FROM product_info where product_id";

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, product_id);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()){
				productDTO.setProduct_id(resultSet.getInt("product_id"));
				productDTO.setProduct_id(resultSet.getInt("product_id"));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return productDTO;
	}

	public ProductDTO getProductDTO(){
		return productDTO;
	}

}
