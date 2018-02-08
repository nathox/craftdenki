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



	public String execute() throws SQLException {

		if (!session.containsKey("trueID")) {
			return ERROR;
		}

		// セッションからログインIDを取得する
		String userId = session.get("loginId").toString();

		// 購入履歴検索処理
		if (this.deleteFlg == null || this.deleteFlg.isEmpty()) {
			// ログインID(userID)を利用して、DAOから情報を検索する
			purchaceHistoryList = purchaseHistoryDAO.getPurchaseHistory(userId);

			Iterator<PurchaseHistoryDTO> iterator =  purchaceHistoryList.iterator();
			if(!(iterator.hasNext())){
				 purchaceHistoryList = null;
			}

		}

		return SUCCESS;

	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}

	public String getuserId(){
		return userId;
	}
	public void setuserId(String userId){
		this.userId = userId;


	}

	public void delete() throws SQLException{


	String userId = session.get("loginId").toString();

	int res = PurchaseHistoryDAO.(product_id,)

	if(res>0){
		purchaseHistoryList=null;
		setMessage("購入履歴を削除しました");
	}else of(res == 0){
		setMessage("削除に失敗しました");
	}
	}

}
