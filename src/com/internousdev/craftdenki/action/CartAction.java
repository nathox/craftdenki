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
	private String userId;
	private String deleteFlg;
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


		if(deleteFlg == null){

			//カート情報取得メソッド(完了)
			cartList = cartDAO.getCartInfo(userId);
			session.put("cartList", cartList);

		}else if(deleteFlg.equals("1")){
			for(String deleteId:delete){
//				this.delete(Integer.parseInt(deleteId));
				int res = cartDAO.deleteCart(userId,deleteId);

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


	//カート内選択商品削除
//	public void delete(int deleteId)throws SQLException{
//		//String item_id = session.get("product_id").toString();
//
//		int res = cartDAO.deleteCart(userId,deleteId);
//
//		if(res > 0){
//			setMessage("カート情報を削除しました。");
//		}else if(res == 0){
//			setMessage("カート情報の削除に失敗しました。");
//		}
//	}


	//カート追加
	public String insert()throws SQLException{
		cartDAO.insertCart(userId,this.product_id,this.product_count,this.price);

		result = "insert";
		return result;

	}



	//決済
	public void settlement(){
		//現在進行中
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


}
