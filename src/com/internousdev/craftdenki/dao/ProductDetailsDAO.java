package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.craftdenki.dto.ProductDTO;
import com.internousdev.craftdenki.dto.Review2DTO;
import com.internousdev.craftdenki.util.DBConnector;


public class ProductDetailsDAO {



	//商品詳細情報取得
	public ProductDTO getProductDetailsInfo(int product_id) throws SQLException{
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		ProductDTO productDTO = new ProductDTO();
		String sql = "SELECT * FROM product_info where product_id=?";

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, product_id);

			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()){
				productDTO.setId(resultSet.getInt("id"));
				productDTO.setProduct_id(resultSet.getInt("product_id"));
				productDTO.setProduct_name(resultSet.getString("product_name"));
				productDTO.setProduct_name_kana(resultSet.getString("product_name_kana"));
				productDTO.setProduct_description(resultSet.getString("product_description"));
				productDTO.setCategory_id(resultSet.getInt("category_id"));
				productDTO.setPrice(resultSet.getInt("price"));
				productDTO.setImage_file_path(resultSet.getString("image_file_path"));
				productDTO.setImage_file_name(resultSet.getString("image_file_name"));
				productDTO.setRelease_date(resultSet.getString("release_date"));
				productDTO.setRelease_company(resultSet.getString("release_company"));
				productDTO.setStatus(resultSet.getInt("status"));
				productDTO.setRegist_date(resultSet.getDate("regist_date"));
				productDTO.setUpdate_date(resultSet.getDate("update_date"));
				productDTO.setItem_stock(resultSet.getInt("item_stock"));
			}

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
		return productDTO;
	}



	//商品詳細情報取得
	public List<ProductDTO> getProductDetailsInfoList(String[] productIdList) throws SQLException{
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();

		List<ProductDTO> detailsList = new ArrayList<ProductDTO>();
		for(int i =0; i < productIdList.length; i++){

			String sql = "SELECT * FROM product_info where product_id=?";

			try{
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, String.valueOf(productIdList[i]));

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
					productDTO.setRelease_date(resultSet.getString("release_date"));
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
		}
		System.out.println("詳細情報の件数 : "+ detailsList.size());
		return detailsList;
	}


	//レビュー情報取得
		public ArrayList<Review2DTO> getReviewInfo(String product_id) throws SQLException{

			DBConnector dbConnector = new DBConnector();
			Connection connection = dbConnector.getConnection();

			ArrayList<Review2DTO> reviewList = new ArrayList<Review2DTO>();

			String sql = "SELECT * FROM review_info where product_id=? ORDER BY Product_id ASC";

		try{
			PreparedStatement statement = connection.prepareStatement(sql);

			ResultSet resultSet = statement.executeQuery();

			while(resultSet.next()){
				Review2DTO review2DTO = new Review2DTO();

				review2DTO.setId(resultSet.getInt("id"));
				review2DTO.setProduct_id(resultSet.getInt("product_id"));
				review2DTO.setBuy_item_date(resultSet.getDate("buy_item_date"));
				review2DTO.setEvaluation_count(resultSet.getInt("evaluation_count"));

				reviewList.add(review2DTO);

			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
			return reviewList;
		}



}

