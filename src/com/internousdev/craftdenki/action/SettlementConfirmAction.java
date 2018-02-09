package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class SettlementConfirmAction extends ActionSupport implements SessionAware{


	private Map<String,Object>session;
	private String destination;
	private String choseAddress;
	private String choseNumber;


	public String execute(){

		System.out.println(destination);


		if(destination.equals("1")){

			choseAddress = session.get("userAddress").toString();
			choseNumber = session.get("telNumber").toString();
			System.out.println(choseAddress);
			System.out.println(choseNumber);
		}else if(destination.equals("2")){
			choseAddress = session.get("userAddress2").toString();
			choseNumber = session.get("telNumber2").toString();
			System.out.println(choseAddress);
			System.out.println(choseNumber);
		}else if(destination.equals("3")){
			choseAddress = session.get("userAddress3").toString();
			choseNumber = session.get("telNumber3").toString();
			System.out.println(choseAddress);
			System.out.println(choseNumber);

		}




		return SUCCESS;
	}

	public String getChoseAddress() {
		return choseAddress;
	}

	public void setChoseAddress(String choseAddress) {
		this.choseAddress = choseAddress;
	}

	public String getChoseNumber() {
		return choseNumber;
	}

	public void setChoseNumber(String choseNumber) {
		this.choseNumber = choseNumber;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}


}
