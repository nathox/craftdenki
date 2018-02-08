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

public class FavoriteAction extends ActionSupport implements SessionAware{

	private List<FavoriteDTO> favoriteList = new ArrayList<FavoriteDTO>();
	private String deleteFlg;
	private String message;
	public Map<String, Object> session;

	private Collection<String> checkList;

	private String test = "test";

	public String execute() throws SQLException {

		String result=ERROR;

		FavoriteDAO dao = new FavoriteDAO();

		int count = 0;



		if (deleteFlg == null) {
			favoriteList = dao.getMyPageUserInfo(test);


			System.out.println(favoriteList);

		} else if (deleteFlg == "1") {

			for(String product_id : checkList){
				count += dao.deleteFavoriteInfo(product_id);
				System.out.println("aaa");
			}

			System.out.println("削除された件数　：" + count);

			// for(型 変数名 :コレクション)でコレクションの値をひとつずつ取り出し{}内を実行
			// for(String deleteId:delete){
			// this.delete(Integer.parseInt(deleteId));
			// }

		}

		result = SUCCESS;
		return result;
	}




	// public void delete(int deleteId) throws SQLException{
	// String item_transaction_id = session1.get("id").toString();
	// String user_master_id = session1.get("login_user_id").toString();

	// int res =
	// FavoriteDAO.buyItemHistoryDelete(item_transaction_id,user_master_id,deleteId);

	// if(res > 0){
	// setMessage("商品情報を正しく削除しました。");
	// }else if(res == 0){
	// setMessage("商品情報の削除に失敗しました。");
	// }
	// }




	public Collection<String> getCheckList() {
		return checkList;
	}




	public List<FavoriteDTO> getFavoriteList() {
		return favoriteList;
	}




	public void setFavoriteList(List<FavoriteDTO> favoriteList) {
		this.favoriteList = favoriteList;
	}




	public void setCheckList(Collection<String> checkList) {
		this.checkList = checkList;
	}





	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;

	}

	// public String execute() throws SQLException{
	// String ret = ERROR;
	// FavoriteDAO dao = new FavoriteDAO();
	// FavoriteDTO dto = new FavoriteDTO();
	//
	// dto = dao.select(id,user_id,product_id,regist_date);
	// if(id.equals(dto.getProduct_id())){
	// if(id.equals(dto.getProduct_id())){
	// ret = SUCCESS;
	// }
	// }
	//
	// session.put("product_id",dto.getProduct_id());
	// return ret;
	// }

	// @Override

}

// 2.
// package com.internousdev.favorite.action;
//
// import java.sql.SQLException;
// import java.util.Map;
//
// import com.internousdev.favorite.dao.FavoriteDAO;
// import com.internousdev.favorite.dto.FavoriteDTO;
//
//
// public class FavoriteAction {
//
// private static final String SUCCESS = null;
// private static final String ERROR = null;
// private String id ;
// private String user_id;
// private String product_id;
// private String regist_date;
// private Map<String, Object> session;
//
// public String execute() throws SQLException{
// String ret = ERROR;
// FavoriteDAO dao = new FavoriteDAO();
// FavoriteDTO dto = new FavoriteDTO();
//
// dto = dao.select(id,user_id,product_id,regist_date);
// if(id.equals(dto.getProduct_id())){
// if(id.equals(dto.getProduct_id())){
// ret = SUCCESS;
// }
// }
//
// session.put("product_id",dto.getProduct_id());
// return ret;
// }
//
//
// public String getId(){
// return id;
//
// }
//
// public void setId(String id){
// this.id = id;
// }
//
// public String getUser_id(){
// return user_id;
//
// }
//
//
// public void setProduct_id(String product_id){
// this.product_id = product_id;
//
// }
//
// public String getProduct_id(){
// return product_id;
//
// }
//
//
// public void setRegist_date(String regist_date){
// this.regist_date = regist_date;
//
// }
//
// public String getRegist_date(){
// return regist_date;
//
// }
//
//
//
// public Map<String, Object> getSession(){
// return session;
// }
//
//
// public void setSession(Map<String, Object> session){
// this.session = session;
// }
//
// }

// 1.
// package com.internousdev.favorite.action;
//
// import java.sql.SQLException;
// import java.util.Map;
//
// import com.internousdev.favorite.dao.FavoriteDAO;
// import com.internousdev.favorite.dto.FavoriteDTO;
//
//
// public class FavoriteAction {
//
// private static final String SUCCESS = null;
// private static final String ERROR = null;
// private String product_id ;
// private String product_name;
// private String product_name_kana;
// private String category_id;
// private Map<String, Object> session;
// private String name;
// private String password;
//
// public String execute() throws SQLException{
// String ret = ERROR;
// FavoriteDAO dao = new FavoriteDAO();
// FavoriteDTO dto = new FavoriteDTO();
//
// dto = dao.select(product_id,product_name,product_name_kana,category_id);
// if(product_id.equals(dto.getProduct_id())){
// if(product_name.equals(dto.getProduct_name())){
// ret = SUCCESS;
// }
// }
//
// session.put("product_id",dto.getProduct_id());
// return ret;
// }
//
//
// public String getName(){
// return name;
//
// }
//
// public void setName(String name){
// this.name = name;
// }
//
// public String getPassword(){
// return password;
//
// }
//
//
// public void setPassword(String password){
// this.password = password;
//
// }
//
// public Map<String, Object> getSession(){
// return session;
// }
//
//
// public void setSession(Map<String, Object> session){
// this.session = session;
// }
//
//
//
//
//
//
//
// }
