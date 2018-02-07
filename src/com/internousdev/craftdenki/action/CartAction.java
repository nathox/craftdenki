package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dao.CartDAO;
import com.internousdev.craftdenki.dto.CartDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CartAction extends ActionSupport implements SessionAware{

	private Map<String,Object> session;
	private String result;
	private CartDAO cartDAO = new CartDAO();
	private ArrayList<CartDTO> cartList = new ArrayList<CartDTO>();
	private int product_id;
	private int product_count;
	private int price;
	private String userId;


	public String execute()throws SQLException{


		if(session.containsKey("ログインID")){
			userId = session.get("仮ログインID").toString();
		}else{
			userId = session.get("ログインID").toString();
		}


		//session.get("ログインID")に変える。
		session.put("user_id", "test");
		String user_id = session.get("user_id").toString();



		//カート情報追加メソッド(未完了)
		cartDAO.insertCart(userId,product_id, product_count, price);

		//カート情報取得メソッド(完了)
		cartList = cartDAO.getCartInfo(user_id);
		result = SUCCESS;

		return result;

	}

	public void setCartList(ArrayList<CartDTO> cartList) {
		this.cartList = cartList;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public ArrayList<CartDTO> getCartList(){
		return this.cartList;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
