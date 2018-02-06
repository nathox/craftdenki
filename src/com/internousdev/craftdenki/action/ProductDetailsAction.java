package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ProductDetailsDAO;
import com.internousdev.craftdenki.dto.ProductDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductDetailsAction extends ActionSupport implements SessionAware {

	//セッション情報取得
	public Map<String, Object> session;

	private int product_id;
	public ArrayList<ProductDTO> detailsList;

	private ProductDetailsDAO productDetailsDAO = new ProductDetailsDAO();

	public String execute() throws SQLException{

		//商品詳細情報取得メソッド
		try{

			detailsList = productDetailsDAO.getProductDetailsInfo(product_id);

		}catch(Exception e){
			e.printStackTrace();
		}

		String result = SUCCESS;
		return result;

	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public int getProduct_id(){
		return product_id;
	}
	public void setProduct_id(int product_id){
		this.product_id = product_id;
	}

}
