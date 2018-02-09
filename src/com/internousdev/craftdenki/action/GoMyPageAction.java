package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class GoMyPageAction extends ActionSupport implements SessionAware {

	String result;

	private Map<String,Object>session;


	public String execute(){

		if(session.containsKey("trueId")){
			result=SUCCESS;
		}else{
			session.put("status", "mypage");
			result=ERROR;
		}
//あとでERROR用にstrutsいじる

		return result;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session=session;
	}

}
