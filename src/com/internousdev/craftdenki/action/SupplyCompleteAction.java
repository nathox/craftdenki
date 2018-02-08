package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ItemStockUpdateDAO;
import com.internousdev.craftdenki.dto.ProductDTO;
import com.opensymphony.xwork2.ActionSupport;

public class SupplyCompleteAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;

	private List<ProductDTO> supplyList = new ArrayList<ProductDTO>();
	private String errorMessage;



	@SuppressWarnings({ "unchecked", "unused" })
	public String execute() throws SQLException{
		String result = ERROR;

		supplyList = (ArrayList<ProductDTO>)session.get("supplyList");

		if(true){      //管理者判定

			result = SUCCESS;

			//product_infoテーブルのitem_stockをupdate
			for(int i = 0; i < supplyList.size(); i++){
				ItemStockUpdateDAO dao = new ItemStockUpdateDAO();
				boolean res = dao.itemStockUpdate(supplyList.get(i).getSupply_count(),supplyList.get(i).getProduct_id());

				//update出来なかった商品があれば、errorM.jspへ遷移
				if(!res){
					result = ERROR;
					errorMessage = "仕入処理が出来なかった商品があります。恐れ入りますが、在庫数の確認をお願いいたします。";
				}
			}

		}else errorMessage = "不正なアクセスです。もう一度ログインをお願いいたします。";

		return result;
	}


	//getter,setter
	public Map<String, Object> getSession() {
		return session;
	}



	public void setSession(Map<String, Object> session) {
		this.session = session;
	}



	public List<ProductDTO> getSupplyList() {
		return supplyList;
	}



	public void setSupplyList(List<ProductDTO> supplyList) {
		this.supplyList = supplyList;
	}



	public String getErrorMessage() {
		return errorMessage;
	}



	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}



}
