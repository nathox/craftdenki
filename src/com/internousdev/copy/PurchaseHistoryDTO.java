package com.internousdev.copy;

public class PurchaseHistoryDTO {


		//商品名
	private String product_Name;

		//ふりがな
	private String product_Name_Kana;

		//商品画像
	private String image_File_Name;

	private String image_File_Path;

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
	public String getproduct_Name(){
		return product_Name;
	}
	public void setproduct_Name(String product_Name){
		this.product_Name=product_Name;
	}

		//ふりがな
	public String getproduct_Name_Kana(){
		return product_Name_Kana;
	}
	public void setproduct_Name_Kana(String product_Name_Kana){
		this.product_Name_Kana=product_Name_Kana;
	}

		//商品画像
	public String getimage_File_Name(){
		return image_File_Name;
	}
	public void setimage_File_Name(String image_File_Name){
		this.image_File_Name=image_File_Name;
	}

	public String getimage_File_Path(){
		return image_File_Path;
	}
	public void setimage_File_Path(String image_File_Path){
		this.image_File_Path=image_File_Path;
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
	public String getrelease_Company(){
		return release_Company;
	}
	public void setrelease_Company(String release_Company){
		this.release_Company=release_Company;
	}

		//発売年月日
	public String getrelease_Date(){
		return release_Date;
	}
	public void setrelease_Date(String release_Date){
		this.release_Date=release_Date;
	}

	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}




}
