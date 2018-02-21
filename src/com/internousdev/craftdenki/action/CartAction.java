package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.CartDAO;
import com.internousdev.craftdenki.dto.CartDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CartAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	private int product_id;
	private int product_count;
	private int finalPrice;
	private String price;
	private String userId;
	private String insertFlg = "0";
	private Collection<String> deleteList;
	private String cartDeleteFlg;
	private String nothing;
	private int item_stock;
	private String id;


	public String getNothing() {
		return nothing;
	}

	public void setNothing(String nothing) {
		this.nothing = nothing;
	}

	private CartDAO cartDAO = new CartDAO();
	private CartDTO cartDTO = new CartDTO();
	private ArrayList<CartDTO> cartList = new ArrayList<CartDTO>();

	public String execute() throws SQLException {

		String result = ERROR;

		if (session.containsKey("trueID")) {
			this.userId = session.get("trueID").toString();
		} else {
			this.userId = session.get("temp_user_id").toString();
		}

		// --------------------------------------------------------------------------------------------

		if (insertFlg.equals("1")) {
			cartDAO.insertCart(userId, product_id, product_count, Integer.parseInt(price),item_stock);
			nothing = "1";
		}
		// --------------------------------------------------------------------------------------------
		if (cartDeleteFlg == null) {
			cartList = cartDAO.getCartInfo(userId);
			int finalPrice = cartDAO.finalPrice;
			session.put("finalPrice", finalPrice);
			session.put("cartList", cartList);
			if (cartList.isEmpty()) {
				nothing = null;
			} else {
				nothing = "1";
			}

		} else {
			if (deleteList != null) {
				for (String deleteId : deleteList) {

					cartDAO.deleteSelectCart(Integer.parseInt(deleteId));

					cartDAO.deleteCart(userId, Integer.parseInt(deleteId));

					if (true) {
						cartList = cartDAO.getCartInfo(userId);


						if (cartList.isEmpty()) {
							nothing = null;
						} else {
							nothing = "1";
						}
					}

				}
			} else {
				cartList = cartDAO.getCartInfo(userId);
				if (cartList.isEmpty()) {
					nothing = null;
				} else {
					nothing = "1";
				}

			}
		}
		result = SUCCESS;
		return result;
	}

	public String getCartDeleteFlg() {
		return cartDeleteFlg;
	}

	public void setCartDeleteFlg(String cartDeleteFlg) {
		this.cartDeleteFlg = cartDeleteFlg;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public ArrayList<CartDTO> getCartList() {
		return this.cartList;
	}

	public void setCartList(ArrayList<CartDTO> cartList) {
		this.cartList = cartList;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getInsertFlg() {
		return insertFlg;
	}

	public void setInsertFlg(String insertFlg) {
		this.insertFlg = insertFlg;
	}

	public Collection<String> getDelete() {
		return deleteList;
	}

	public void setDelete(Collection<String> deleteList) {
		this.deleteList = deleteList;
	}

	public int getFinalPrice() {
		return finalPrice;
	}

	public void setFinalPrice(int finalPrice) {
		this.finalPrice = finalPrice;
	}

	public String getUserId() {
		return userId;
	}

	public int getItem_stock() {
		return item_stock;
	}

	public void setItem_stock(int item_stock) {
		this.item_stock = item_stock;
	}

	public Collection<String> getDeleteList() {
		return deleteList;
	}

	public void setDeleteList(Collection<String> deleteList) {
		this.deleteList = deleteList;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
