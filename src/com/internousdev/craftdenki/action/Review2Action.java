package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.Review2DAO;
import com.opensymphony.xwork2.ActionSupport;

public class Review2Action extends ActionSupport implements SessionAware {

	private String review;
	private String productId;
	private String buyItemDate;
	private String evaluationCount;
	private String result;
	private Review2DAO dao = new Review2DAO();
	public Map<String,Object>session;

	public String execute(){
		result = SUCCESS;

		dao.getReviewInfo(session.get("trueID").toString(),review,productId,buyItemDate,evaluationCount);

		return result;
	}

	public String getReview() {
	    return review;
	}

	public void setReview(String review) {
	    this.review = review;
	}

	public String getProductId() {
	    return productId;
	}

	public void setProductId(String productId) {
	    this.productId = productId;
	}

	public String getBuyItemDate() {
	    return buyItemDate;
	}

	public void setBuyItemDate(String buyItemDate) {
	    this.buyItemDate = buyItemDate;
	}


	public String getEvaluationCount() {
	    return evaluationCount;
	}

	public void setEvaluationCount(String evaluationCount) {
	    this.evaluationCount = evaluationCount;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
