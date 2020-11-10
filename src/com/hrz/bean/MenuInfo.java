package com.hrz.bean;

import java.util.Date;

public class MenuInfo {
    private String publishName;
    private String title;
    private String mediaTitle;
    private String attributeCraft;
    private String attributeFlavor;
    private String attributeDiffucult;
    private String attributeTime;
    private String attributeCookie;
    private String attributeCount;
    private String achieveImage;
    private String story;
    private Date pushTime;
    public String getPublishName() {
		return publishName;
	}
	public void setPublishName(String publishName) {
		this.publishName = publishName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMediaTitle() {
		return mediaTitle;
	}
	public void setMediaTitle(String mediaTitle) {
		this.mediaTitle = mediaTitle;
	}
	public String getAttributeCraft() {
		return attributeCraft;
	}
	public void setAttributeCraft(String attributeCraft) {
		this.attributeCraft = attributeCraft;
	}
	public String getAttributeFlavor() {
		return attributeFlavor;
	}
	public void setAttributeFlavor(String attributeFlavor) {
		this.attributeFlavor = attributeFlavor;
	}
	public String getAttributeDiffucult() {
		return attributeDiffucult;
	}
	public void setAttributeDiffucult(String attributeDiffucult) {
		this.attributeDiffucult = attributeDiffucult;
	}
	public String getAttributeTime() {
		return attributeTime;
	}
	public void setAttributeTime(String attributeTime) {
		this.attributeTime = attributeTime;
	}
	public String getAttributeCookie() {
		return attributeCookie;
	}
	public void setAttributeCookie(String attributeCookie) {
		this.attributeCookie = attributeCookie;
	}
	public String getAttributeCount() {
		return attributeCount;
	}
	public void setAttributeCount(String attributeCount) {
		this.attributeCount = attributeCount;
	}
	public String getAchieveImage() {
		return achieveImage;
	}
	public void setAchieveImage(String achieveImage) {
		this.achieveImage = achieveImage;
	}
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public Date getPushTime() {
		return pushTime;
	}
	public void setPushTime(Date pushTime) {
		this.pushTime = pushTime;
	}
	public MenuInfo(String publishName, String title, String mediaTitle, String attributeCraft, String attributeFlavor,
			String attributeDiffucult, String attributeTime, String attributeCookie, String attributeCount,
			String achieveImage, String story, Date pushTime) {
		super();
		this.publishName = publishName;
		this.title = title;
		this.mediaTitle = mediaTitle;
		this.attributeCraft = attributeCraft;
		this.attributeFlavor = attributeFlavor;
		this.attributeDiffucult = attributeDiffucult;
		this.attributeTime = attributeTime;
		this.attributeCookie = attributeCookie;
		this.attributeCount = attributeCount;
		this.achieveImage = achieveImage;
		this.story = story;
		this.pushTime = pushTime;
	}
	public MenuInfo() {
		super();
	}
	
   
}
