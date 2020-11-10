package com.hrz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hrz.bean.PrimaryMaterial;

public class PrimaryDao {
	public List<PrimaryMaterial> searchPrimary(String publishName,String title) throws SQLException {
		 Connection searchDb = DBUtils.getConnection();
		    String sql=String.format("select * from recordmaterial where publishName='%s' and publishTitle='%s' ", publishName,title);
		    System.out.println("这是罚不明:"+publishName+title);
		    PreparedStatement user = searchDb.prepareStatement(sql);
		    ResultSet rs = user.executeQuery();
		    List<PrimaryMaterial> list = new ArrayList<PrimaryMaterial>();
            while(rs.next()) {
            	 PrimaryMaterial material = new PrimaryMaterial();
            	 System.out.println("主要材料查到了");
            	 material.setPublishName(rs.getString(1));
            	 material.setPublishTitle(rs.getString(2));
            	 material.setIngredients(rs.getString(3));
            	 material.setIusage(rs.getString(4));
            	 list.add(material);
            	 
		    }
            return list;
		    
	}
   
    
}
