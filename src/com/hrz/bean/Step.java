package com.hrz.bean;

public class Step {
     private String publishName;
     private String publishTitle;
     private String step;
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
	public String getStep() {
		return step;
	}
	public void setStep(String step) {
		this.step = step;
	}
	public Step(String publishName, String publishTitle, String step) {
		super();
		this.publishName = publishName;
		this.publishTitle = publishTitle;
		this.step = step;
	}
	public Step() {
		super();
	}
     
}
