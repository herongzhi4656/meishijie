package com.hrz.bean;

public class PrimaryMaterial {
    private String publishName;
    private String publishTitle;
    private String ingredients;
    private String iusage;
	public String getPublishName() {
		return publishName;
	}
	public void setPublishName(String publishName) {
		this.publishName = publishName;
	}
	public String getPublishTitle() {
		return publishTitle;
	}
	public void setPublishTitle(String publishTitle) {
		this.publishTitle = publishTitle;
	}
	public String getIngredients() {
		return ingredients;
	}
	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}
	public String getIusage() {
		return iusage;
	}
	public void setIusage(String iusage) {
		this.iusage = iusage;
	}
	public PrimaryMaterial(String publishName, String publishTitle, String ingredients, String iusage) {
		super();
		this.publishName = publishName;
		this.publishTitle = publishTitle;
		this.ingredients = ingredients;
		this.iusage = iusage;
	}
	public PrimaryMaterial() {
		super();
	}

	
    
}
