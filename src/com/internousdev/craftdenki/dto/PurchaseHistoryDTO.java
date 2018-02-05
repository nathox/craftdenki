package com.internousdev.craftdenki.dto;

public class PurchaseHistoryDTO {


		//商品名
	private String productName;

		//ふりがな
	private String productNameKana;

		//商品画像
	private String productImage;

		//値段
	private int price;

		//個数
	private int count;

		//発売会社名
	private String releaseCompany;

		//発売年月日
	private String releaseDate;


	private int id;




		//商品名
	public String getproductName(){
		return productName;
	}
	public void setproductName(String productName){
		this.productName=productName;
	}

		//ふりがな
	public String getproductNameKana(){
		return productNameKana;
	}
	public void setproductNameKana(String productNameKana){
		this.productNameKana=productNameKana;
	}

		//商品画像
	public String getproductImage(){
		return productImage;
	}
	public void setproductImage(String productImage){
		this.productImage=productImage;
	}

		//値段
	public int getPrice(){
		return price;
	}
	public void setPrice(int price){
		this.price=price;
	}

		//個数
	public int getCount(){
		return count;
	}
	public void setCount(int count){
		this.count=count;
	}

		//発売会社名
	public String getReleaseCompany(){
		return releaseCompany;
	}
	public void setReleaseCompany(String releaseCompany){
		this.releaseCompany=releaseCompany;
	}

		//発売年月日
	public String getReleaseDate(){
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate){
		this.releaseDate=releaseDate;
	}

	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}




}
