package com.hrz.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrz.bean.Collection;
import com.hrz.dao.CollectionDao;
@WebServlet("/collection")
public class CollectionServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  doGet(req,resp);
	}
@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String img = req.getParameter("img");
    	String title = req.getParameter("title");
    	String publishName= req.getParameter("publishName");
    	String name = req.getParameter("name");
    	//进入数据库操作
    	int result=0;
    	Collection collection = new Collection();
    	collection.setCollectionName(name);
    	collection.setCollectionedName(publishName);
    	collection.setCollectionTitle(title);
    	collection.setCollectionImg(img);
    	CollectionDao dao = new CollectionDao();
    	try {
			result = dao.insCollection(collection);
			if(result==1) {
				System.out.println("收藏成功!");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }     
}
