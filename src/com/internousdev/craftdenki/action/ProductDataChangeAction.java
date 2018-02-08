package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.CategoryDAO;
import com.internousdev.craftdenki.dao.ProductDetailsDAO;
import com.internousdev.craftdenki.dto.CategoryDTO;
import com.internousdev.craftdenki.dto.ProductDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductDataChangeAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;

	private String errorMessage;
	private String product_id;
	private String product_name;
	private String product_name_kana;
	private String product_description;
	private int category_id;
	private int price;
	private String image_file_name;
	private String release_date;
	private String release_company;

	private List<CategoryDTO> categoryList = new ArrayList<CategoryDTO>();


	public String execute() throws SQLException{
		String result = ERROR;

		CategoryDAO categoryDAO = new CategoryDAO();
		categoryList = categoryDAO.getCategoryInfo();





		if(true){      //管理者判定
			result = SUCCESS;

			session.put("product_id", product_id);

			ProductDetailsDAO dao = new ProductDetailsDAO();
			ProductDTO dto = dao.getProductDetailsInfo(Integer.parseInt(product_id));
			product_name = dto.getProduct_name();
			product_name_kana = dto.getProduct_name_kana();
			product_description = dto.getProduct_description();
			category_id = dto.getCategory_id();
			price = dto.getPrice();
			image_file_name = dto.getImage_file_name();
			release_date = dto.getRelease_date();
			release_company = dto.getRelease_company();

		}else {
			errorMessage = "不正なアクセスです。もう一度ログインをお願いいたします。";
		}
		return result;
	}


	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
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
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
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
	public Map<String, Object> getSession() {
		return session;
	}


	public List<CategoryDTO> getCategoryList() {
		return categoryList;
	}


	public void setCategoryList(List<CategoryDTO> categoryList) {
		this.categoryList = categoryList;
	}




}