package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.Review2DAO;
import com.internousdev.craftdenki.dto.Review2DTO;
import com.opensymphony.xwork2.ActionSupport;

public class ReviewAction2 extends ActionSupport implements SessionAware {

	private String review;
	private String historyItemName;
	private String result;
	private Review2DAO dao = new Review2DAO();
	private Review2DTO dto = new Review2DTO();
	public Map<String,Object>session;

	public String execute(){
		result = SUCCESS;

		dto = dao.getReviewInfo(historyItemName,review);





		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
