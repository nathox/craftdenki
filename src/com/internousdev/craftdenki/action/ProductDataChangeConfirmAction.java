package com.internousdev.craftdenki.action;

import com.opensymphony.xwork2.ActionSupport;

public class ProductDataChangeConfirmAction extends ActionSupport{

	private String productId;
	private String productName;
	private String productNameKana;
	private String productDescription;
	private String categoryId;
	private String price;
	private String imageFileName;
	private String releaseDate;
	private String releaseCompany;

	public String execute(){
		String result=ERROR;
		System.out.println("------------ProductDataChangeConfirmAction");
		System.out.println(productId);
		System.out.println(productName);
		System.out.println(productNameKana);
		System.out.println(productDescription);
		System.out.println(categoryId);
		System.out.println(price);
		System.out.println(imageFileName);
		System.out.println(releaseDate);
		System.out.println(releaseCompany);
		System.out.println("----------------------------------------------");




		result=SUCCESS;



		return result;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductNameKana() {
		return productNameKana;
	}

	public void setProductNameKana(String productNameKana) {
		this.productNameKana = productNameKana;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getReleaseCompany() {
		return releaseCompany;
	}

	public void setReleaseCompany(String releaseCompany) {
		this.releaseCompany = releaseCompany;
	}



}
