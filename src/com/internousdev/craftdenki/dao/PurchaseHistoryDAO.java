package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.craftdenki.dto.PurchaseHistoryDTO;
import com.internousdev.craftdenki.util.DBConnector;

public class PurchaseHistoryDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public ArrayList<PurchaseHistoryDTO> getPurchaseHistory(String userId) throws SQLException {

		System.out.println("aaa");
		System.out.println(userId);
		System.out.println("aaa");
		ArrayList<PurchaseHistoryDTO> purchaseHistoryList = new ArrayList<PurchaseHistoryDTO>();

		String sql = "SELECT * FROM purchase_history_info LEFT JOIN product_info ON purchase_history_info.product_id = product_info.product_id WHERE user_id = ?";

		try {

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				PurchaseHistoryDTO dto = new PurchaseHistoryDTO();

				dto.setproduct_Name(rs.getString("product_name"));
				dto.setproduct_Name_Kana(rs.getString("product_name_kana"));
				dto.setimage_File_Name(rs.getString("image_file_name"));
				dto.setPrice(rs.getInt("price"));
				dto.setCount(rs.getInt("product_count"));
				dto.setrelease_Company(rs.getString("release_company"));
				dto.setrelease_Date(rs.getString("release_date"));
				dto.setId(rs.getInt("id"));

				purchaseHistoryList.add(dto);

			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			con.close();

		}
		return purchaseHistoryList;

	}

	public int deleteHistory(String product_id, String user_id, String delete_id) throws SQLException {

		String sql = "DELETE FROM purchase_history_info where id = ?";
		PreparedStatement ps;
		int result = 0;

		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, user_id);

			result = ps.executeUpdate();
			return result;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
