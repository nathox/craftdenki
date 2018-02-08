package com.internousdev.copy;

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
		ArrayList<PurchaseHistoryDTO>purchaseHistoryList = new ArrayList<PurchaseHistoryDTO>();


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
				dto.setimageFileName(rs.getString("image_file_name"));
				dto.setPrice(rs.getInt("price"));
				dto.setCount(rs.getInt("count"));
				dto.setreleaseCompany(rs.getString("release_company"));
				dto.setreleaseDate(rs.getString("release_date"));
				dto.setId(rs.getInt("id"));


				purchaseHistoryList.add(dto);


			}

		}catch(Exception e){
			e.printStackTrace();

		}finally{
			con.close();

		}
		return purchaseHistoryList;

	}



}
