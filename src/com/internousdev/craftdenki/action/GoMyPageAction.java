package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class GoMyPageAction extends ActionSupport implements SessionAware {

	private String result;

	private Map<String, Object> session;

	public String execute() {

		if (session.containsKey("trueID")) {

			System.out.println(session.get("trueID"));
			System.out.println(session.get("trueID").toString());
			result = SUCCESS;
		} else {
			session.put("status", "mypage");
			result = ERROR;
		}

		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}

}
