package com.hrz.control;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hrz.bean.Judge;
import com.hrz.dao.JudgeDao;

@WebServlet("/JudgeServlet")
public class JudgeServlet extends HttpServlet{
	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	          doGet(req,resp);
	    }
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        	 String content=req.getParameter("content");
        	 String title = req.getParameter("title");
        	 String publishName=req.getParameter("publishName");
        	 String name = req.getParameter("name");
        	 String img=req.getParameter("img");
        	 int correct=0;
        	 //获取当前时间
        	 Date date=new Date();
        	 
        	 SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        	 String nowTime = fm.format(date);
        	 
        	 JudgeDao judge = new JudgeDao();
        	 Judge info = new Judge();
        	 info.setJudgeName(name);
        	 info.setJudgeImg(img);
        	 info.setJudgedName(publishName);
        	 info.setJudgeTitle(title);
        	 info.setJudgeTime(nowTime);
             info.setJudgeContent(content);
        	 List<Judge>  data = new ArrayList(); 
        	 data.add(info);
        	 
        	 try {
				correct=judge.insComment(info);
				ObjectMapper om = new ObjectMapper();
				String json = om.writeValueAsString(data);
				
				if(correct==1) {
					
					System.out.println("数据库保存评论成功！");
					resp.getWriter().write(json);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	   
        	 
        	 //将评论存入到数据库中
        	 
        }
}
