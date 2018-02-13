package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ProductListDAO;
import com.internousdev.craftdenki.dto.ProductDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductManageAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	private ProductListDAO productListDAO = new ProductListDAO();
	private ArrayList<ProductDTO> productList = new ArrayList<>();

	private String errorMessage;

	public String execute() throws SQLException{
		String result = ERROR;

		if(true){      //管理者判定
			//商品一覧を取得
			productList = productListDAO.getProductInfo();
			session.put("productList", productList);
			result = SUCCESS;
		}else errorMessage = "不正なアクセスです。もう一度ログインをお願いいたします。";
		return result;
	}
	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
	public ArrayList<ProductDTO> getProductList(){
		return this.productList;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}
