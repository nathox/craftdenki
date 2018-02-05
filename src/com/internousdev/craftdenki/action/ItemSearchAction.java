package com.internousdev.craftdenki.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ItemSearchAction extends ActionSupport implements SessionAware{


	private String category; //jspで選択したカテゴリ1~4(String型)
	private String searchWord; //jspで記入した検索ワード　半角英数字ひらがな漢字 1~16文字
	public Map<String,Object>session;








}
