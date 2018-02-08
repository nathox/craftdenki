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



	@SuppressWarnings("unchecked")
	public String execute() throws SQLException{
		String result = ERROR;

		supplyList = (ArrayList<ProductDTO>)session.get("supplyList");

		if(true){      //管理者判定

			//product_infoテーブルのitem_stockをupdate
			for(int i = 0; i < supplyList.size(); i++){
				ItemStockUpdateDAO dao = new ItemStockUpdateDAO();
				dao.itemStockUpdate(supplyList.get(i).getSupply_count(),supplyList.get(i).getProduct_id());
			}


			result = SUCCESS;
		}
		return result;
	}



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

	//getter,setter

}
