package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ProductDetailsDAO;
import com.internousdev.craftdenki.dto.ProductDTO;
import com.internousdev.craftdenki.dto.Review2DTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductDetailsAction extends ActionSupport implements SessionAware {

	//セッション情報取得
	public Map<String, Object> session;

	private String product_id;

	private int product_count;

	private String item_stock;

	private int insertFlg;

	//購入個数リスト
	private List<Integer> stockList = new ArrayList<Integer>();

	//商品詳細情報｢リスト
	public List<ProductDTO> detailsList = new ArrayList<ProductDTO>();

	//レビュー情報｢リスト
	public List<Review2DTO> reviewList = new ArrayList<Review2DTO>();

	private ProductDetailsDAO productDetailsDAO = new ProductDetailsDAO();





	public String execute() throws SQLException{


		String[] productIdList = product_id.split(", ", 0);


		//商品詳細情報取得メソッド
		try{

			detailsList = productDetailsDAO.getProductDetailsInfoList(productIdList);

		}catch(Exception e){
			e.printStackTrace();
		}


		//レビュー情報取得メソッド
		try{

			reviewList = productDetailsDAO.getReviewInfo(product_id);

		}catch(Exception e){
			e.printStackTrace();
		}


		//1から在庫数までの選択表示用List
		for(int i=1; i<= detailsList.get(0).getItem_stock() ; i++){
			stockList.add(i);
			System.out.println("----在庫数");
			System.out.print(i + " ");
			System.out.println("-----------");
		}

		String result = SUCCESS;
		return result;

	}



	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public String getItem_stock() {
		return item_stock;
	}

	public void setItem_stock(String item_stock) {
		this.item_stock = item_stock;
	}



	/**
	 * insertFlgを取得します。
	 * @return insertFlg
	 */
	public int getInsertFlg() {
	    return insertFlg;
	}



	/**
	 * insertFlgを設定します。
	 * @param insertFlg insertFlg
	 */
	public void setInsertFlg(int insertFlg) {
	    this.insertFlg = insertFlg;
	}



	public List<Integer> getStockList() {
		return stockList;
	}

	public void setStockList(List<Integer> stockList) {
		this.stockList = stockList;
	}

	public List<ProductDTO> getDetailsList() {
		return detailsList;
	}

	public void setDetailsList(List<ProductDTO> detailsList) {
		this.detailsList = detailsList;
	}

	public ProductDetailsDAO getProductDetailsDAO() {
		return productDetailsDAO;
	}

	public void setProductDetailsDAO(ProductDetailsDAO productDetailsDAO) {
		this.productDetailsDAO = productDetailsDAO;
	}



}
