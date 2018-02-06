package com.internousdev.craftdenki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.craftdenki.util.DBConnector;

import freemarker.template.utility.DateUtil;

public class UserCreateCompleteDAO {

	private DBConnector dbConnector=new DBConnector();
	private Connection connection=dbConnector.getConnection();
	private DateUtil dateUtil=new DateUtil();

	private String sql="INSERT INTO user_info (user_id,password,family_name,first_name,family_name_kana,first_name_kana,sex,email,secret_question,secret_answer,regist_date)"
			+ "VALUES(?,?,?,?,?,?,?,?,?,?,?)";

	public void createUser(String userid,String pass,String familyname,String firstname,String familynamekana,String firstnamekana,int sex,String email,String secretquestion,String secretanswer) throws SQLException{

		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,userid);
			preparedStatement.setString(2, pass);
			preparedStatement.setString(3,familyname);
			preparedStatement.setString(4, firstname);
			preparedStatement.setString(5, familynamekana);
			preparedStatement.setString(6, firstnamekana);
			preparedStatement.setInt(7, sex);
			preparedStatement.setString(8, email);
			preparedStatement.setString(9, secretquestion);
			preparedStatement.setString(10,secretanswer);
			preparedStatement.setString(11,dateUtil.getDate());


			preparedStatement.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			connection.close();
		}
	}

}
