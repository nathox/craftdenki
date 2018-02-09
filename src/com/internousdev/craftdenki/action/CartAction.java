package com.internousdev.craftdenki.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
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
	private int finalPrice;
	private String userId;
	private String deleteFlg;
	private String insertFlg;
	private String message;

	public Collection<String> delete;
	public String productName;
	public String productNameKana;
	public String imageFilePath;
	public String productCount;
	public String releaseCompany;
	public String releaseDate;
	public String totalPrice;




	public String execute()throws SQLException{

		//ログイン/未ログインでカートにInsertするIDを変更
		if(session.containsKey("trueID")){
			userId = session.get("trueID").toString();
		}else{
			userId = session.get("temp_user_id").toString();
		}


		//商品の追加
		if(insertFlg != null){
			cartDAO.insertCart(userId,product_id,product_count,price);
		}


		System.out.println(insertFlg);
		System.out.println(deleteFlg);

		if(deleteFlg == null){

			//カート情報取得
			cartList = cartDAO.getCartInfo(userId);
			session.put("cartList", cartList);

//			int size = cartList.size();
//			for(int i=0; i<size; i++){
//				finalPrice = finalPrice + cartList.getTotalPrice(i);
//			}


		}else if(deleteFlg.equals("1")){

			//商品の削除
			for(String deleteId:delete){
				int res = cartDAO.deleteCart(userId,Integer.parseInt(deleteId));

				if(res > 0){
					setMessage("カート情報を削除しました。");
				}else if(res == 0){
					setMessage("カート情報の削除に失敗しました。");
				}
			}
		}

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

	public String getInsertFlg() {
		return insertFlg;
	}
	public void setInsertFlg(String insertFlg) {
		this.insertFlg = insertFlg;
	}

	public Collection<String> getDelete() {
		return delete;
	}
	public void setDelete(Collection<String> delete) {
		this.delete = delete;
	}





}
