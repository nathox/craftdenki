package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ReviewAction1 extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private String historyItemName;

	public String execute(){




		return historyItemName;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
