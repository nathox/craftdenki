package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ProductListDAO;
import com.internousdev.craftdenki.util.ErrorMessageList;
import com.internousdev.craftdenki.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class CheckProductInfo extends ActionSupport implements SessionAware, ErrorMessageList {
	private String newProductId; //新商品ID
	private String newProductName; //商品名
	private String newProductNameKana; //商品名かな
	private String newProductDescription; //商品詳細
	private String newCategoryId; //カテゴリID
	private String newBuyPrice; //販売価格
	private String newReleaseDate; //発売年月
	private String newReleaseCompany; //発売会社
	private String newProductImage; //画像ファイル名

	private ArrayList<String> errorMessageList = new ArrayList<>();
	private Map<String, Object> session;



	public String execute() throws SQLException {
		String result = SUCCESS;
		ProductListDAO dao = new ProductListDAO();

		InputChecker i = new InputChecker();

		if(dao.existsProductId(newProductId)){
			errorMessageList.add("入力された商品IDは既に存在します");
			result = ERROR;
		}else if (!i.newProductIdChk(newProductId).equals("OK")) {
			errorMessageList.add(i.newProductIdChk(newProductId));
			result = ERROR;
		}

		if (!i.newProductNameChk(newProductName).equals("OK")) {
			errorMessageList.add(i.newProductNameChk(newProductName));
			result = ERROR;
		}
	}
}
