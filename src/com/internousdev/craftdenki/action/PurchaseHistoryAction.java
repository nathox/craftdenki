package com.internousdev.craftdenki.action;


import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.PurchaseHistoryDAO;
import com.internousdev.craftdenki.dto.PurchaseHistoryDTO;
import com.opensymphony.xwork2.ActionSupport;


public class PurchaseHistoryAction extends ActionSupport implements SessionAware{


	public Map<String,Object>session;

	public PurchaseHistoryDAO purchaseHistoryDAO=new PurchaseHistoryDAO();

	public ArrayList<PurchaseHistoryDTO> purchaceHistoryDTO=new ArrayList<PurchaseHistoryDTO>();


	private String deleteFlg="";
	private String Message;





	public String execute() throws SQLException{

		if(!session.containsKey("mainLoginId")){
			return ERROR;
		}

		String userId = session.get("loginId").toString();
		if(deleteFlg==null){
			PurchaseHistoryDTO dto =PurchaseHistoryDAO.getPurchaseHistory(userId);

		}



	}






}
