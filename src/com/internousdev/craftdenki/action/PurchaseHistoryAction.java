package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.PurchaseHistoryDAO;
import com.internousdev.craftdenki.dto.PurchaseHistoryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class PurchaseHistoryAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;

	public PurchaseHistoryDAO purchaseHistoryDAO = new PurchaseHistoryDAO();

	public ArrayList<PurchaseHistoryDTO> purchaceHistoryList = new ArrayList<PurchaseHistoryDTO>();

	private String deleteFlg = null;
	private String userId;
	private String Message;
	private String product_id;
	private String user_id;
	private String delete_id;

	public String execute() throws SQLException {
		String userId = session.get("trueID").toString();
		System.out.println(userId);

		if (!session.containsKey("trueID")) {
			return ERROR;
		}

		// セッションからログインIDを取得する

		// 購入履歴検索処理
		if (this.deleteFlg == null || this.deleteFlg.isEmpty()) {
			// ログインID(userID)を利用して、DAOから情報を検索する
			purchaceHistoryList = purchaseHistoryDAO.getPurchaseHistory(userId);

			Iterator<PurchaseHistoryDTO> iterator = purchaceHistoryList.iterator();
			if (!(iterator.hasNext())) {
				purchaceHistoryList = null;
			}

		}

		return SUCCESS;

	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getuserId() {
		return userId;
	}

	public void setuserId(String userId) {
		this.userId = userId;

	}

	public String delete() throws SQLException {
		String userId = session.get("loginId").toString();
		int res = purchaseHistoryDAO.deleteHistory(product_id, user_id, delete_id);
		String setMessage = null;
		if (res > 0) {
			setMessage("購入履歴を削除しました");
			return setMessage;
		} else{
			setMessage("削除に失敗しました");
			return setMessage;
		}
	}

	private void setMessage(String string) {

	}

}
