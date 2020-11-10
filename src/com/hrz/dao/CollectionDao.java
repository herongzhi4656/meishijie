package com.hrz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;

import com.hrz.bean.Collection;

public class CollectionDao {
	
	public int insCollection(Collection collection) throws SQLException {
		Connection db = DBUtils.getConnection();
		int result =0;
		String sql ="insert into collection(collectionName,collectionedName,collectionTitle,collectionImg)values(?,?,?,?)";
		PreparedStatement judgeInfo = db.prepareStatement(sql);
		judgeInfo.setString(1, collection.getCollectionName());
		judgeInfo.setString(2, collection.getCollectionedName());
		judgeInfo.setString(3, collection.getCollectionTitle());
		judgeInfo.setString(4, collection.getCollectionImg());
	    result = judgeInfo.executeUpdate();
	    return result;
	}
	public List<Collection> searchCollect(String name) throws SQLException{
		Connection db = DBUtils.getConnection();
		String sql = "select * from collection where collectionName=?";
		PreparedStatement collect = db.prepareStatement(sql);
		collect.setString(1, name);
		ResultSet rs = collect.executeQuery();
		List<Collection> list = new ArrayList<Collection>();
		
		while(rs.next()) {
			System.out.println("收藏进来了");
			Collection info = new Collection();
			info.setCollectionName(rs.getString(1));
			info.setCollectionedName(rs.getString(2));
			info.setCollectionTitle(rs.getString(3));
			info.setCollectionImg(rs.getString(4));
			list.add(info);
					
		}
		return list;
		
	    
	} 
     
     
}
