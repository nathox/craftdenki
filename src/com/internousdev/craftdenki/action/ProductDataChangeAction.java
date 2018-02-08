package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import com.internousdev.craftdenki.dto.ProductDTO;
import com.internousdev.craftdenki.dao.ProductDetailsDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductDataChangeAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;

	private String errorMessage;

	public String execute(){
		String result = ERROR;

		if(true){      //管理者判定
			result = SUCCESS;

			ProductDetailsDAO dao = new ProductDetailsDAO();

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