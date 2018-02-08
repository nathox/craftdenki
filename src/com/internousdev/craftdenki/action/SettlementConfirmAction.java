package com.internousdev.craftdenki.action;

import com.opensymphony.xwork2.ActionSupport;


public class SettlementConfirmAction extends ActionSupport {

	private String destination;


	public String execute(){

		System.out.println(destination);
		




		return SUCCESS;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}


}
