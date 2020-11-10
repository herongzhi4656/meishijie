package com.hrz.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrz.bean.Collection;
import com.hrz.dao.CollectionDao;
@WebServlet("/collect")
public class ShowCorrectionServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            doGet(req,resp);
    } 
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String userName = req.getParameter("name");
    	String userPhoto = req.getParameter("img");
    	//去收藏数据库进行查找
    	CollectionDao collect = new CollectionDao();
    	Collection collectInfo = new Collection();
    	try {
			List<Collection> list = collect.searchCollect(userName);
			req.setAttribute("list",list);
			req.setAttribute("userName",userName);
			req.setAttribute("userPhoto", userPhoto);
			req.getRequestDispatcher("MsjCollection.jsp").forward(req, resp);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }
}
