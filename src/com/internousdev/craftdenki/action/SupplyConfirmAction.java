package com.internousdev.craftdenki.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.craftdenki.dto.ProductDTO;
import com.opensymphony.xwork2.ActionSupport;

public class SupplyConfirmAction extends ActionSupport implements SessionAware{
	public Map<String,Object> session;

	/*productManage.jspの仕入機能の表より、
	 * 「商品ID」「商品名」「販売価格」「在庫」「仕入数(入力した)」の文字列(「, 」区切り)
	 */
	private String product_id;
	private String product_name;
	private String price;
	private String item_stock;
	private String supplycount;

	/*supplyConfirm.jspにて表示用
	 * 兼
	 * SupplyCompleteActionにてUPDATE用
	 */
	private ArrayList<ProductDTO> supplyList = new ArrayList<>();



	public String execute(){
		String result = ERROR;

		/*フィールドの文字列を
		 * 「, 」(コンマ半角スペース)で区切って
		 * String配列を作成
		 */
		String[] productIdList = product_id.split(", ",0);
		String[] productNameList = product_name.split(", ",0);
		String[] priceList = price.split(", ",0);
		String[] itemStockList = item_stock.split(", ",0);
		String[] supplyCountList = supplycount.split(", ",0);

		if(true){      //管理者判定

			//supplyListに格納していきます
			for(int i = 0; i < productIdList.length; i++){
				//仕入数が0なら格納しない
				if(supplyCountList[i].trim().equals("0")){
					continue;
				} else{
				ProductDTO dto = new ProductDTO();
				dto.setProduct_id(Integer.parseInt(productIdList[i]));
				dto.setProduct_name(productNameList[i]);
				dto.setPrice(Integer.parseInt(priceList[i]));
				dto.setItem_stock(Integer.parseInt(itemStockList[i]));
				dto.setSupply_count(Integer.parseInt(supplyCountList[i]));
				supplyList.add(dto);
				}
			}

			session.put("supplyList", supplyList);


			result = SUCCESS;
		}
		return result;
	}




	public String getProduct_id() {
		return product_id;
	}




	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}




	public String getProduct_name() {
		return product_name;
	}




	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}




	public String getPrice() {
		return price;
	}




	public void setPrice(String price) {
		this.price = price;
	}




	public String getItem_stock() {
		return item_stock;
	}




	public void setItem_stock(String item_stock) {
		this.item_stock = item_stock;
	}




	public String getSupplycount() {
		return supplycount;
	}




	public void setSupplycount(String supplycount) {
		this.supplycount = supplycount;
	}




	public Map<String, Object> getSession() {
		return session;
	}




	public ArrayList<ProductDTO> getSupplyList() {
		return supplyList;
	}




	public void setSupplyList(ArrayList<ProductDTO> supplyList) {
		this.supplyList = supplyList;
	}




	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
}
