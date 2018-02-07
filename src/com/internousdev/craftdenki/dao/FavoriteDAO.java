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
		String sql = "SELECT * FROM favorite_info where user_id = ? ";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);

			ps.setString(1, "test");

			ResultSet rs = ps.executeQuery();



			while (rs.next()) {
				FavoriteDTO dto = new FavoriteDTO();
				dto.setId(rs.getString("id"));
				dto.setUserId(rs.getString("user_id"));
				dto.setProductId(rs.getString("product_id"));
				dto.setRegistDate(rs.getString("regist_date"));
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

	public FavoriteDTO select(String id, String user_id, String product_id, String regist_date) {
		// TODO 自動生成されたメソッド・スタブ

	// SQL実行
		String sql = "";

		PreparedStatement ps = connection.prepareStatement(sql);
	int result;
	try
	{

		ps.setString(1, id);
		String user_id＝null;
		preparedStatement.setString(2, user_id);
		String product_id;
		preparedStatement.setString(3, product_id);
		String regist_date;
		preparedStatement.setString(4, regist_date);
		result = preparedStatement.executeUpdate();
	}catch(
	SQLException e)
	{
		e.printStackTrace();
	}finally
	{
		connection.close();
	}return result;
}return null;
}

}

// 2.
// package com.internousdev.favorite.dao;
// import java.util.ArrayList;
// import java.util.List;
//
// import com.internousdev.favorite.dto.FavoriteDTO;
//
// public class FavoriteDAO {
//
// public static void main(String[] args){
// List<String> list = new ArrayList<>();
//
// list.add("id");
// list.add("user_id");
// list.add("product_id");
// list.add("regist_date");
//
//
// for(String s : list) {
// System.out.println(s);
// }
//
// list.forEach(System.out::println);
// }
//
// public FavoriteDTO select(String id, String user_id, String product_id,
// String regist_date) {
// // TODO 自動生成されたメソッド・スタブ
// return null;
// }
//
// }

// 1.
//
// package com.internousdev.favorite.dao;
// import java.sql.Connection;
// import java.sql.PreparedStatement;
// import java.sql.ResultSet;
// import java.sql.SQLException;
// import java.util.ArrayList;
// import java.util.List;
//
// import com.internousdev.favorite.dto.FavoriteDTO;
// import com.internousdev.favorite.util.DBConnector;
//
// public class FavoriteDAO {
//
//
// public FavoriteDTO select(String product_id,String product_name,String
// product_name_kana,String category_id) throws SQLException{
// FavoriteDTO dto=new FavoriteDTO();
// DBConnector db = new DBConnector();
// Connection con = db.getConnection();
// String sql="select * favorite_info";
//
// try{
// PreparedStatement ps = con.prepareStatement(sql);
// ps.setString(1, product_id);
// ps.setString(2, product_name);
// ps.setString(3, product_name_kana);
// ps.setString(4, category_id);
// ResultSet rs = ps.executeQuery();
//
// if(rs.next()){
// dto.setProduct_id(rs.getString("product_id"));
// dto.setProduct_name(rs.getString("product_name"));
// dto.getProduct_name_kana(rs.getString("product_name_kana"));
// dto.setCategory_id(rs.getString("category_id"));
// }
//
//
// }catch (SQLException e){
// e.printStackTrace();
//
// }finally{
//
// con.close();
// }
//
// return dto;
//
// }
//
//
//
//
//
