package com.hrz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hrz.bean.PrimaryMaterial;
import com.hrz.bean.SubsidaryMaterial;

public class SubsidaryDao {
	public List<SubsidaryMaterial> searchSubsidary(String publishName,String title) throws SQLException {
		 Connection searchDb = DBUtils.getConnection();
		    String sql=String.format("select * from recordsubsidary where publishName='%s' and publishTitle='%s' ", publishName,title);
		    PreparedStatement user = searchDb.prepareStatement(sql);
		    ResultSet rs = user.executeQuery();
		    List<SubsidaryMaterial> list = new ArrayList<SubsidaryMaterial>();
           while(rs.next()) {
           	 SubsidaryMaterial material = new SubsidaryMaterial();
           	 System.out.println("这里有数据哦");
           	 material.setPublishName(rs.getString(1));
           	 material.setPublishTitle(rs.getString(2));
           	 material.setSubsidary(rs.getString(3));
           	 material.setSusage(rs.getString(4));
           	 list.add(material);
           	 
		    }
           return list;
		    
	}
}
