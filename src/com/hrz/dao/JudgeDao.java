package com.hrz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.hrz.bean.Judge;

public class JudgeDao {
     public List<Judge> search(String judgedName,String title) throws SQLException{
    	Connection db= DBUtils.getConnection();
    	String sql= String.format("select * from judge where judgedName ='%s' and judgeTitle ='%s'", judgedName,title);
    	PreparedStatement user = db.prepareStatement(sql);
    	ResultSet rs = user.executeQuery();
    	List<Judge> list = new ArrayList<Judge>();
    	while(rs.next()) {
    		Judge judge = new Judge();
    		System.out.println("查询到了评论哦—");
    		judge.setJudgeName(rs.getString(1));
    		judge.setJudgeImg(rs.getString(2));
    		judge.setJudgedName(rs.getString(3));
    		judge.setJudgeTitle(rs.getString(4));
    		judge.setJudgeTime(rs.getString(5));
    		judge.setJudgeContent(rs.getString(6));
    		list.add(judge);
    	}
    	Judge j1 = null;
    	Iterator<Judge> it=list.iterator();
    	while(it.hasNext()) {
    		j1=(Judge)it.next();
    		System.out.println(j1.getJudgeImg()+j1.getJudgeName());
    		
    	}
    	return list;
     }
     public int insComment(Judge judge) throws SQLException {
    	 int result =0;
    	// String sql=String.format("insert into judge(`judgeName`,`judgeImg`,`judgedName`,`judgeTitle`,`judgeTime`,`judgeContent`)",name,img,publishName,title,nowTime,content);
    	 Connection db = DBUtils.getConnection();
    	 String sql="insert into judge(judgeName,judgeImg,judgedName,judgeTitle,judgeTime,judgeContent)values(?,?,?,?,?,?)";
    	 
    	 PreparedStatement judgeInfo = db.prepareStatement(sql);
    	 judgeInfo.setString(1, judge.getJudgeName());
    	 judgeInfo.setString(2, judge.getJudgeImg());
    	 judgeInfo.setString(3, judge.getJudgedName());
    	 judgeInfo.setString(4, judge.getJudgeTitle());
    	 judgeInfo.setString(5, judge.getJudgeTime());
    	 judgeInfo.setString(6, judge.getJudgeContent());
    	 
    	 result = judgeInfo.executeUpdate();
    	 return result;
    	 
    	 
     }
}
