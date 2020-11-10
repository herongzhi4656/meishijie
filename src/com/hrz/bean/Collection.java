package com.hrz.bean;

public class Collection {
    private String collectionName;
    private String collectionedName;
    private String collectionTitle;
    private String collectionImg;
	public String getCollectionName() {
		return collectionName;
	}
	public void setCollectionName(String collectionName) {
		this.collectionName = collectionName;
	}
	public String getCollectionedName() {
		return collectionedName;
	}
	public void setCollectionedName(String collectionedName) {
		this.collectionedName = collectionedName;
	}
	public String getCollectionTitle() {
		return collectionTitle;
	}
	public void setCollectionTitle(String collectionTitle) {
		this.collectionTitle = collectionTitle;
	}
	public String getCollectionImg() {
		return collectionImg;
	}
	public void setCollectionImg(String collectionImg) {
		this.collectionImg = collectionImg;
	}
	public Collection(String collectionName, String collectionedName, String collectionTitle, String collectionImg) {
		super();
		this.collectionName = collectionName;
		this.collectionedName = collectionedName;
		this.collectionTitle = collectionTitle;
		this.collectionImg = collectionImg;
	}
	public Collection() {
		super();
	}
    
}
