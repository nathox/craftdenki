package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.CategoryDAO;
import com.internousdev.craftdenki.dao.ProductListDAO;
import com.internousdev.craftdenki.dto.CategoryDTO;
import com.internousdev.craftdenki.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class CheckProductChangeAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;

	private ArrayList<String> errorMessageList = new ArrayList<>();
	private String errorMessage;
	private List<CategoryDTO> categoryList = new ArrayList<CategoryDTO>();

	private String product_id; //新商品ID
	private String product_name; //商品名
	private String product_name_kana; //商品名かな
	private String product_description; //商品詳細
	private String category_id; //カテゴリID
	private String price; //販売価格
	private String image_file_name; //画像ファイル名
	private String release_date; //発売年月
	private String release_company; //発売会社

	public String execute() throws SQLException{
		String result=ERROR;



		if(true){      //管理者判定
			result = SUCCESS;

			//カテゴリテーブルよりカテゴリリストを取得
			CategoryDAO categoryDAO = new CategoryDAO();
			categoryList = categoryDAO.getCategoryInfo();



			ProductListDAO dao = new ProductListDAO();

			InputChecker i = new InputChecker();

			if(!(session.get("product_id").toString().equals(product_id)) && dao.existsProductId(product_id)){
				errorMessageList.add("入力された商品IDは既に存在します");
				result = "error1";
			}else if (!i.newProductIdChk(product_id).equals("OK")) {
				errorMessageList.add(i.newProductIdChk(product_id));
				result = "error1";
			}

			if (!i.newProductNameChk(product_name).equals("OK")) {
				errorMessageList.add(i.newProductNameChk(product_name));
				result = "error1";
			}

			if (!i.newProductNameKanaChk(product_name_kana).equals("OK")) {
				errorMessageList.add(i.newProductNameKanaChk(product_name_kana));
				result = "error1";
			}

			if (!i.newProductDescriptionChk(product_description).equals("OK")) {
				errorMessageList.add(i.newProductDescriptionChk(product_description));
				result = "error1";
			}

			if (!i.newCategoryIdChk(category_id).equals("OK")) {
				errorMessageList.add(i.newCategoryIdChk(category_id));
				result = "error1";
			}

			if (!i.newBuyPriceChk(price).equals("OK")) {
				errorMessageList.add(i.newBuyPriceChk(price));
				result = "error1";
			}

			if (!i.newReleaseDateChk(image_file_name).equals("OK")) {
				errorMessageList.add(i.newReleaseDateChk(image_file_name));
				result = "error1";
			}

			if (!i.newReleaseCompanyChk(release_date).equals("OK")) {
				errorMessageList.add(i.newReleaseCompanyChk(release_date));
				result = "error1";
			}

			if (!i.newProductImageChk(release_company).equals("OK")) {
				errorMessageList.add(i.newProductImageChk(release_company));
				result = "error1";
			}

		}else errorMessage = "不正なアクセスです。もう一度ログインをお願いいたします。";
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<String> getErrorMessageList() {
		return errorMessageList;
	}

	public void setErrorMessageList(ArrayList<String> errorMessageList) {
		this.errorMessageList = errorMessageList;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public List<CategoryDTO> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(List<CategoryDTO> categoryList) {
		this.categoryList = categoryList;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_name_kana() {
		return product_name_kana;
	}

	public void setProduct_name_kana(String product_name_kana) {
		this.product_name_kana = product_name_kana;
	}

	public String getProduct_description() {
		return product_description;
	}

	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getImage_file_name() {
		return image_file_name;
	}

	public void setImage_file_name(String image_file_name) {
		this.image_file_name = image_file_name;
	}

	public String getRelease_date() {
		return release_date;
	}

	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}

	public String getRelease_company() {
		return release_company;
	}

	public void setRelease_company(String release_company) {
		this.release_company = release_company;
	}

}
