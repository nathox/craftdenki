package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.ItemStockUpdateDAO;
import com.opensymphony.xwork2.ActionSupport;

public class SupplyCompleteAction extends ActionSupport implements SessionAware{
	private String product_id;
	private String supply_count;

	public Map<String,Object> session;

	public String execute() throws SQLException{
		String result = ERROR;

		if(true){      //管理者判定

			//product_infoテーブルのitem_stockをupdate
			ItemStockUpdateDAO dao = new ItemStockUpdateDAO();
			dao.itemStockUpdate(Integer.parseInt(supply_count),Integer.parseInt(product_id));


			result = SUCCESS;
		}
		return result;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getSupply_count() {
		return supply_count;
	}
	public void setSupply_count(String supply_count) {
		this.supply_count = supply_count;
	}
	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
}
