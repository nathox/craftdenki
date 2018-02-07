package com.internousdev.craftdenki.dto;

public class PurchaseHistoryDTO {


		//商品名
	private String product_Name;

		//ふりがな
	private String product_Name_Kana;

		//商品画像
	private String image_File_Name;

		//値段
	private int price;

		//個数
	private int count;

		//発売会社名
	private String release_Company;

		//発売年月日
	private String release_Date;


	private int id;




		//商品名
	public String getproductName(){
		return product_Name;
	}
	public void setproductName(String productName){
		this.product_Name=productName;
	}

		//ふりがな
	public String getproductNameKana(){
		return product_Name_Kana;
	}
	public void setproductNameKana(String productNameKana){
		this.product_Name_Kana=productNameKana;
	}

		//商品画像
	public String getimageFileName(){
		return image_File_Name;
	}
	public void setimageFileName(String image_File_Name){
		this.image_File_Name=image_File_Name;
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
		return release_Company;
	}
	public void setReleaseCompany(String releaseCompany){
		this.release_Company=releaseCompany;
	}

		//発売年月日
	public String getReleaseDate(){
		return release_Date;
	}
	public void setReleaseDate(String releaseDate){
		this.release_Date=releaseDate;
	}

	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}




}
