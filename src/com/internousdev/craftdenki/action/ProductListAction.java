package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ProductListDAO;
import com.internousdev.craftdenki.dto.ProductDTO;
import com.opensymphony.xwork2.ActionSupport;



public class ProductListAction extends ActionSupport implements SessionAware{

	//セッション情報取得
	public Map<String, Object> session;

	//商品情報取得
	private ProductListDAO productListDAO = new ProductListDAO();

	//商品情報格納
	public ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();



	public String execute() throws SQLException{

		//商品情報取得メソッド
		productList = productListDAO.getProductInfo();

		Iterator<ProductDTO> iterator = productList.iterator();
		if(!(iterator.hasNext())){
			productList = null;
		}

		String result = SUCCESS;
		return result;

	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
	public Map<String, Object> getSession(){
		return session;
	}


	public ProductListDAO getProductListDAO(){
		return productListDAO;
	}
	public void setProductListDAO(ProductListDAO productListDAO){
		this.productListDAO = productListDAO;
	}

	public ArrayList<ProductDTO> getProductList(){
		return productList;
	}
	public void setProductList(ArrayList<ProductDTO> productList){
		this.productList = productList;
	}

}
