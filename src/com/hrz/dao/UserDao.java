package com.hrz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.hrz.bean.UserLogin;

public class UserDao {
	Connection db=DBUtils.getConnection();
	Connection insDb = DBUtils.getConnection();
	Connection searchDb=DBUtils.getConnection();
	Connection updateDb = DBUtils.getConnection();
	Connection searchPwd = DBUtils.getConnection();
    public UserLogin queryForLogin(String username,String password) throws SQLException {
    	UserLogin userLogin = new UserLogin();
    	boolean  result =false;
        int position=-1;
        
        System.out.println(username+password);
//    	if(username.length()==0||password.length()==0) {
//    		return position;
//    	}
    	String sql = String.format("select * from userinfo where userName='%s' ", username);
    	PreparedStatement user=db.prepareStatement(sql);
    	ResultSet rs=user.executeQuery();
    	System.out.println(rs);
    	if(!rs.next()) {
    		System.out.println("没有该用户");
    		position =-2;
    		userLogin.setUserId(-1);
//    		userLogin=null;
    	}else if(!rs.getString(3).equals(password)) {
    		System.out.println("密码错误");
    		position=-3;
    		userLogin.setUserId(-1);
//    		userLogin=null;
    	}else {
    		userLogin.setUserId(rs.getInt(1));
			userLogin.setUserName(rs.getString(2));
			userLogin.setUserPassword(rs.getString(3));
			userLogin.setUserPhoto(rs.getString(4));
    	}
    	return userLogin;
    	
    }
    public int  update(String username,String password,String path,String sql) throws SQLException {
    	PreparedStatement user =insDb.prepareStatement(sql);
    	user.setString(1, username);
    	user.setString(2, password);
    	user.setString(3, path);
    	user.executeUpdate();
    	return 1;
    }
    public int updateImg(String username,String userimg,String sql) throws SQLException {
    	int flag=0;
    	System.out.println("这是"+flag);
    	PreparedStatement user =updateDb.prepareStatement(sql);
    	user.setString(1, userimg);
    	user.setString(2, username);
    	flag = user.executeUpdate();
    
    	
    	return flag;  	
    }

    public int serach(String sql) throws SQLException {
    	PreparedStatement user=searchDb.prepareStatement(sql);
    	ResultSet rs=user.executeQuery();
    	int flag=0;
    	if(!rs.next()) {
    		flag=1;
    	}
    	return flag;
    	
    }
    public int serachPassword(String userPwd,String sql) throws SQLException {
    	PreparedStatement user=searchPwd.prepareStatement(sql);
    	ResultSet rs=user.executeQuery();
    	int flag=0;
    	if(rs.next()) {
    		System.out.println("这是第一列"+rs.getString(1));
    		if(rs.getString(1).equals(userPwd)) {
    			flag=1;
    		}
    	}
    	return flag;
    }
}
