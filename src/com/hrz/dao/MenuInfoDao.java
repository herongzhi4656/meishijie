package com.hrz.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.hrz.bean.MenuInfo;
import com.hrz.bean.PrimaryMaterial;
import com.hrz.bean.Step;
import com.hrz.bean.SubsidaryMaterial;

public class MenuInfoDao {
     Connection searchDb = DBUtils.getConnection();
     public List<MenuInfo> queryForInfo(String sql) throws SQLException {
    	 PreparedStatement user = searchDb.prepareStatement(sql);
    	 ResultSet rs= user.executeQuery();
    	 List<MenuInfo> list = new ArrayList<MenuInfo>();
    	 while(rs.next()) {
    		 MenuInfo menuInfo = new MenuInfo();
    		 System.out.println("查到了数据");
    		 menuInfo.setPublishName(rs.getString(1));
    		 menuInfo.setTitle(rs.getString(2));
    		 menuInfo.setMediaTitle(rs.getString(3));
    		 menuInfo.setAttributeCraft(rs.getString(4));
    		 menuInfo.setAttributeFlavor(rs.getString(5));
    		 menuInfo.setAttributeDiffucult(rs.getString(6));
    		 menuInfo.setAttributeTime(rs.getString(7));
    		 menuInfo.setAttributeCookie(rs.getString(8));
    		 menuInfo.setAttributeCount(rs.getString(9));
    		 menuInfo.setAchieveImage(rs.getString(10));
    		 menuInfo.setStory(rs.getString(11));
    		 menuInfo.setPushTime(rs.getDate(12));
    		 list.add(menuInfo);
    		 
    	 }
    	 return list;
     }
     public MenuInfo querySearchInfo(String sql) throws SQLException {
    	 PreparedStatement user = searchDb.prepareStatement(sql);
    	 ResultSet rs= user.executeQuery();
    	 List<MenuInfo> list = new ArrayList<MenuInfo>();
    	 MenuInfo menuInfo = new MenuInfo();
    	 while(rs.next()) {
    		 System.out.println("查到了数据");
    		 menuInfo.setPublishName(rs.getString(1));
    		 menuInfo.setTitle(rs.getString(2));
    		 menuInfo.setMediaTitle(rs.getString(3));
    		 menuInfo.setAttributeCraft(rs.getString(4));
    		 menuInfo.setAttributeFlavor(rs.getString(5));
    		 menuInfo.setAttributeDiffucult(rs.getString(6));
    		 menuInfo.setAttributeTime(rs.getString(7));
    		 menuInfo.setAttributeCookie(rs.getString(8));
    		 menuInfo.setAttributeCount(rs.getString(9));
    		 menuInfo.setAchieveImage(rs.getString(10));
    		 menuInfo.setStory(rs.getString(11));
    		 menuInfo.setPushTime(rs.getDate(12)); 
    	 }
    	 return menuInfo;
     }
     public int insintroduce(MenuInfo introduce) throws SQLException {
    	String sql= "insert into introducemenu(publishName,title,mediaTitle,attributeCraft,attributeFlavor,attributeDifficult,attributeTime,attributeCookie,attributeCount,achieveImage,story,pushTime)values(?,?,?,?,?,?,?,?,?,?,?,?)";
    	int correct=0;

    	Connection insDb = DBUtils.getConnection();
    	  PreparedStatement user = insDb.prepareStatement(sql);
    	  user.setString(1,introduce.getPublishName());
    	  user.setString(2,introduce.getTitle());
    	  user.setString(3, introduce.getMediaTitle());
    	  user.setString(4, introduce.getAttributeCraft());
    	  user.setString(5, introduce.getAttributeFlavor());
    	  user.setString(6, introduce.getAttributeDiffucult());
    	  user.setString(7, introduce.getAttributeTime());
    	  user.setString(8, introduce.getAttributeCookie());
    	  user.setString(9, introduce.getAttributeCount());
    	  user.setString(10, introduce.getAchieveImage());
    	  user.setString(11, introduce.getStory());
    	  user.setTimestamp(12,new java.sql.Timestamp(System.currentTimeMillis()));
    	  correct = user.executeUpdate();
    	 return correct;
     }
     public int insprimary(PrimaryMaterial material) throws SQLException {
     	String sql="insert into recordmaterial(publishName,publishTitle,ingredients,iusage)values(?,?,?,?)";
     	int correct=0;
     	System.out.println("11");
     	Connection insDb = DBUtils.getConnection();
     	PreparedStatement user = insDb.prepareStatement(sql);
     	user.setString(1,material.getPublishName());
     	user.setString(2,material.getPublishTitle());
     	user.setString(3,material.getIngredients());
     	user.setString(4, material.getIusage());
     	correct = user.executeUpdate();
     	return correct;
     	
     }
     public int insubsidary(SubsidaryMaterial material) throws SQLException {
      	String sql= "insert into recordsubsidary(publishName,publishTitle,subsidary,susage)values(?,?,?,?)";
      	int correct=0;
      	Connection insDb = DBUtils.getConnection();
      	PreparedStatement user = insDb.prepareStatement(sql);
      	user.setString(1,material.getPublishName());
      	user.setString(2,material.getPublishTitle());
      	user.setString(3,material.getSubsidary());
      	user.setString(4, material.getSusage());
      	correct = user.executeUpdate();
      	return correct;
      	
      }
     
     public int insstep(Step material) throws SQLException {
       	String sql= "insert into cookiestep(publishName,publishTitle,step)values(?,?,?)";
       	int correct=0;
       	Connection insDb = DBUtils.getConnection();
       	PreparedStatement user = insDb.prepareStatement(sql);
       	user.setString(1,material.getPublishName());
       	user.setString(2,material.getPublishTitle());
       	user.setString(3,material.getStep());
       	correct = user.executeUpdate();
       	return correct;
       	
       }
}
