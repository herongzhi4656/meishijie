package com.hrz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hrz.bean.Step;
import com.hrz.bean.SubsidaryMaterial;

public class StepDao {
	public List<Step> searchSubsidary(String publishName,String title) throws SQLException {
		 Connection searchDb = DBUtils.getConnection();
		    String sql=String.format("select * from cookiestep where publishName='%s' and publishTitle='%s' ", publishName,title);
		    PreparedStatement user = searchDb.prepareStatement(sql);
		    ResultSet rs = user.executeQuery();
		    List<Step> list = new ArrayList<Step>();
          while(rs.next()) {
          	 Step material = new Step();
          	 System.out.println("这里有数据哦");
          	 material.setPublishName(rs.getString(1));
          	 material.setPublishTitle(rs.getString(2));
          	 material.setStep(rs.getString(3));
             list.add(material);
          	 
		    }
          return list;
		    
	}
}
