package com.hrz.bean;

public class Judge {
    private String judgeName;
    private String judgeImg;
    private String judgedName;
    private String judgeTitle;
    private String judgeContent;
    private String judgeTime;
	public Judge(String judgeName, String judgeImg, String judgedName, String judgeTitle, String judgeContent,
			String judgeTime) {
		super();
		this.judgeName = judgeName;
		this.judgeImg = judgeImg;
		this.judgedName = judgedName;
		this.judgeTitle = judgeTitle;
		this.judgeContent = judgeContent;
		this.judgeTime = judgeTime;
	}
	public String getJudgeName() {
		return judgeName;
	}
	public void setJudgeName(String judgeName) {
		this.judgeName = judgeName;
	}
	public String getJudgeImg() {
		return judgeImg;
	}
	public void setJudgeImg(String judgeImg) {
		this.judgeImg = judgeImg;
	}
	public String getJudgedName() {
		return judgedName;
	}
	public void setJudgedName(String judgedName) {
		this.judgedName = judgedName;
	}
	public String getJudgeTitle() {
		return judgeTitle;
	}
	public void setJudgeTitle(String judgeTitle) {
		this.judgeTitle = judgeTitle;
	}
	public String getJudgeContent() {
		return judgeContent;
	}
	public void setJudgeContent(String judgeContent) {
		this.judgeContent = judgeContent;
	}
	public String getJudgeTime() {
		return judgeTime;
	}
	public void setJudgeTime(String judgeTime) {
		this.judgeTime = judgeTime;
	}
	public Judge() {
		super();
	}
	
	
}
