package com.internousdev.craftdenki.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.SalesHistoryDAO;
import com.internousdev.craftdenki.dto.SalesHistoryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class SalesManageAction  extends ActionSupport implements SessionAware{
	public Map<String,Object> session;
	private SalesHistoryDAO salesHistoryDAO = new SalesHistoryDAO();
	private List<SalesHistoryDTO> salesHistoryList = new ArrayList<>();

	private String errorMessage;

	public String execute(){
		String result = ERROR;

		if(true){      //管理者判定
			result = SUCCESS;

			//売上一覧を取得
			salesHistoryList = salesHistoryDAO.salesAllList();

		}else errorMessage = "不正なアクセスです。もう一度ログインをお願いいたします。";
		return result;
	}
	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public SalesHistoryDAO getSalesHistoryDAO() {
		return salesHistoryDAO;
	}
	public void setSalesHistoryDAO(SalesHistoryDAO salesHistoryDAO) {
		this.salesHistoryDAO = salesHistoryDAO;
	}
	public List<SalesHistoryDTO> getSalesHistoryList() {
		return salesHistoryList;
	}
	public void setSalesHistoryList(List<SalesHistoryDTO> salesHistoryList) {
		this.salesHistoryList = salesHistoryList;
	}
	public Map<String, Object> getSession() {
		return session;
	}
}
