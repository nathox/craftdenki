package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.craftdenki.dto.PurchaseHistoryDTO;
import com.internousdev.craftdenki.util.DBConnector;

public class PurchaseHistoryDAO {

	private DBConnector db= new DBConnector();
	private Connection con= db.getConnection();

	public ArrayList<PurchaseHistoryDTO> getPurchaseHistory(String userId)throws SQLException{
		ArrayList<PurchaseHistoryDTO>purchaseHistoryDTOList = new ArrayList<PurchaseHistoryDTO>();


		String sql="SELECT * FROM purchase_history_info LEFT JOIN product_info "
				+ "ON purchase_history_info.product_id = product_info.product_id "
				+ "WHERE user_id = ?";


		try{

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userId);


			ResultSet rs = ps.executeQuery();


			while(rs.next()){

				PurchaseHistoryDTO dto = new PurchaseHistoryDTO();

				dto.setproductName(rs.getString("product_name"));
				dto.setproductNameKana(rs.getString("product_name_kana"));
				dto.setproductImage(rs.getString("product_image"));
				dto.setPrice(rs.getInt("price"));
				dto.setCount(rs.getInt("count"));
				dto.setReleaseCompany(rs.getString("release_company"));
				dto.setReleaseDate(rs.getString("release_date"));
				dto.setId(rs.getInt("id"));


				purchaseHistoryDTOList.add(dto);


			}

		}catch(Exception e){
			e.printStackTrace();

		}finally{
			con.close();

		}
		return purchaseHistoryDTOList;

	}



}
