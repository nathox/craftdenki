package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ProductDetailsDAO;
import com.internousdev.craftdenki.dto.ProductDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductDataChangeAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;

	private String errorMessage;
	private String product_id;

	public String execute() throws SQLException{
		String result = ERROR;

		if(true){      //管理者判定
			result = SUCCESS;

			ProductDetailsDAO dao = new ProductDetailsDAO();
			ProductDTO dto = dao.getProductDetailsInfo(Integer.parseInt(product_id));
			session.put("productId", dto.getProduct_id());
			session.put("productName", dto.getProduct_name());
			session.put("productNameKana", dto.getProduct_name_kana());
			session.put("productDescription", dto.getProduct_description());
			session.put("categoryId", dto.getCategory_id());
			session.put("price", dto.getPrice());
			session.put("imageFileName", dto.getImage_file_name());
			session.put("releaseDate", dto.getRelease_date());
			session.put("releaseCompany", dto.getRelease_company());

		}else errorMessage = "不正なアクセスです。もう一度ログインをお願いいたします。";
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
}