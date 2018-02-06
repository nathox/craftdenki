package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
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
	private String Message;
	private String userId;
	private int res;



	public String execute() throws SQLException {

		if (!session.containsKey("mainLoginId")) {
			return ERROR;
		}

		// セッションからログインIDを取得する
		String userId = session.get("loginId").toString();

		// 購入履歴検索処理
		if (this.deleteFlg == null || this.deleteFlg.isEmpty()) {
			// ログインID(userID)を利用して、DAOから情報を検索する
			purchaceHistoryList = purchaseHistoryDAO.getPurchaseHistory(userId);

		}
//		else if ("1".equals(this.deleteFlg)) {
//
//			// 全件削除処理 deleteFlg="1"
//			delete();
//
//		} else if ("2".equals(this.deleteFlg)) {
//
//			// 1件削除処理 deleteFlg="2"
//
//		} else if ("3".equals(this.deleteFlg)) {
//
//			// 選択削除処理 deleteFlg="3"
//
//			deleteChecked(null);
//		}
		return userId;

	}

//	public void delete() throws SQLException {
//		String user_Id = session.get(userId).toString();
//		int result = purchaseHistoryDAO.deletePurchaseHistory(userId);
//		Iterator<PurchaseHistoryDTO> iterator = purchaceHistoryList.iterator();
//		if (!(iterator.hasNext())) {
//			purchaceHistoryList = null;
//		}
//
//		if (result > 0) {
//			setMessage("購入履歴をすべて削除しました");
//
//		} else if (result == 0) {
//			setMessage("購入履歴を削除できませんでした");
//		}
//	}
//
//	private void setMessage(String string) {
//		// TODO 自動生成されたメソッド・スタブ
//
//	}
//
//
//
//	public void deleteChecked(List<String> checkedList) throws SQLException {
//		String user_Id = session.get(userId).toString();
//		int result = purchaseHistoryDAO.deleteChecked(checkedList);
//		Iterator<PurchaseHistoryDTO> iterator = purchaceHistoryList.iterator();
//		if (!(iterator.hasNext())) {
//			purchaceHistoryList = null;
//			setMessage("購入履歴はありません");
//		}
//
//		if (result > 0) {
//			setMessage(result + "件削除しました");
//
//		} else if (res == 0) {
//			setMessage("削除できませんでした");
//		}
//
//	}

	@Override//これは必要
	public void setSession(Map<String, Object> arg0) {
		// TODO 自動生成されたメソッド・スタブ

	}

}
