package com.internousdev.craftdenki.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ItemSearchDAO;
import com.internousdev.craftdenki.dto.ProductDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemSearchAction extends ActionSupport implements SessionAware{


	private String category; //jspで選択したカテゴリ1~4(String型)
	private String searchWord; //jspで記入した検索ワード　半角英数字ひらがな漢字 1~16文字
	private String message;  //～件hitしました or 検索結果がありません

	public Map<String,Object>session;

	//検索結果格納 jspに表示
	public ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();

	private ItemSearchDAO itemSearchDAO = new ItemSearchDAO();




	public String execute() throws SQLException{




		productList = itemSearchDAO.getItemInfo(searchWord,category);



		if(productList.size() > 0){
			int searchItemCount = productList.size();
			String count = Integer.toString(searchItemCount);
			setMessage(count + "件の商品が見つかりました。");

		}else{
			setMessage("検索結果がありません");
		}

		Iterator<ProductDTO> iterator = productList.iterator();
		if(!(iterator.hasNext())){
			productList = null;
		}
		return SUCCESS;

	}




	public String getCategory() {
		return category;
	}




	public void setCategory(String category) {
		this.category = category;
	}




	public String getSearchWord() {
		return searchWord;
	}




	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}




	public String getMessage() {
		return message;
	}




	public void setMessage(String message) {
		this.message = message;
	}




	public Map<String, Object> getSession() {
		return session;
	}




	public void setSession(Map<String, Object> session) {
		this.session = session;
	}









}
