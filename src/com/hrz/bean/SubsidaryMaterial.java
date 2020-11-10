package com.hrz.bean;

public class SubsidaryMaterial {
	    private String publishName;
	    private String publishTitle;
	    private String subsidary;
	    private String susage;
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
		public String getSubsidary() {
			return subsidary;
		}
		public void setSubsidary(String subsidary) {
			this.subsidary = subsidary;
		}
		public String getSusage() {
			return susage;
		}
		public void setSusage(String susage) {
			this.susage = susage;
		}
		public SubsidaryMaterial(String publishName, String publishTitle, String subsidary, String susage) {
			super();
			this.publishName = publishName;
			this.publishTitle = publishTitle;
			this.subsidary = subsidary;
			this.susage = susage;
		}
		public SubsidaryMaterial() {
			super();
		}
	    
}
