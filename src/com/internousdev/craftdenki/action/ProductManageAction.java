package com.internousdev.craftdenki.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ProductManageAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;

	public String execute(){
		String result = ERROR;
		//管理者判定
		if(true){
			result = SUCCESS;
		}
		return result;
	}
	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
}
