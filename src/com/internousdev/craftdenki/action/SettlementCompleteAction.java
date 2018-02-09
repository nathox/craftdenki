package com.internousdev.craftdenki.action;

import java.sql.SQLException;


import com.opensymphony.xwork2.ActionSupport;

import com.internousdev.craftdenki.dao.SettlementCompleteDAO;
//import com.internousdev.craftdenki.dto.SettlementCompleteDTO;


public class SettlementCompleteAction extends ActionSupport {


	private SettlementCompleteDAO settlementCompleteDAO = new SettlementCompleteDAO();
	private String message;

	public String execute()throws SQLException{






		return SUCCESS;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
