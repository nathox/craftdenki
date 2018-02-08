package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.craftdenki.dto.Review2DTO;
import com.internousdev.craftdenki.util.DBConnector;

public class Review2DAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();
	private Review2DTO dto = new Review2DTO();

	public void getReviewInfo(String loginId, String review, String productId, String buyItemDate,
			String evaluationCount) {

		String sql = "insert into review_info(id,user_id,product_id,buy_item_date,review_id,evaluation_count values(NULL,?,?,?,?,?)";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, loginId);
			ps.setString(2, productId);
			ps.setString(3, buyItemDate);
			ps.setString(4, review);
			ps.setString(5, evaluationCount);

			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		;
	}

}
