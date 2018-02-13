package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.FavoriteDAO;
import com.internousdev.craftdenki.dto.FavoriteDTO;
import com.opensymphony.xwork2.ActionSupport;

public class FavoriteAction extends ActionSupport implements SessionAware {

	private List<FavoriteDTO> favoriteList = new ArrayList<FavoriteDTO>();
	private Map<String, Object> session;
	private Collection<String> checkList;
	private String deleteFlg = "0";
	private String favoriteInsertFlg ="0" ;
	private String test = "test";
	private String message;
	private String productid;
	private String userId;
	private String result;




	public String execute() throws SQLException {
		FavoriteDAO dao = new FavoriteDAO();
		int count = 0;

		session.put("none", null);





		if (deleteFlg == "0") {
			if (session.containsKey("trueID")) {
				userId = session.get("trueID").toString();
				favoriteList = dao.getFavoriteInfo(userId);
				System.out.println(favoriteList);
			} else {
				userId = session.get("temp_user_id").toString();
			}
		}






		if (favoriteInsertFlg != "0") {
			dao.insertFavorite(userId, productid);
			System.out.println("asd"+favoriteList);
			favoriteInsertFlg = null;
			userId = session.get("trueID").toString();
			favoriteList = dao.getFavoriteInfo(userId);
			result = SUCCESS;
			return result;
		}








		else if (deleteFlg.equals("1")) {

			if (checkList != null) {
				System.out.println("ちぇっくりすと");
				for (String deleteId : checkList) {
					count += dao.deleteFavoriteInfo(deleteId, session.get("trueID").toString());
					System.out.println("aaa");
					System.out.println("削除された件数 ：" + count);
					deleteFlg = null;
					result = SUCCESS;
					return result;
				}


			}




			else {
				result = SUCCESS;
				return result;
			}

		}



		else {
			result = SUCCESS;
			return result;
		}
		return result;
	}












	public List<FavoriteDTO> getFavoriteList() {
		return favoriteList;
	}

	public void setFavoriteList(List<FavoriteDTO> favoriteList) {
		this.favoriteList = favoriteList;
	}

	public String getDeleteFlg() {
		return deleteFlg;
	}

	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Collection<String> getCheckList() {
		return checkList;
	}

	public void setCheckList(Collection<String> checkList) {
		this.checkList = checkList;
	}

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public String getProduct_id() {
		return productid;
	}

	public void setProduct_id(String productid) {
		this.productid = productid;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFavoriteInsertFlg() {
		return favoriteInsertFlg;
	}

	public void setFavoriteInsertFlg(String favoriteInsertFlg) {
		this.favoriteInsertFlg = favoriteInsertFlg;
	}
}
