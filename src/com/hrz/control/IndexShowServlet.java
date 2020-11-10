package com.hrz.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrz.bean.MenuInfo;
import com.hrz.dao.MenuInfoDao;

public class IndexShowServlet<WebApplicationContext> extends HttpServlet{
       @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	  doGet(req,resp);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	
    }
    @Override
    public void init() throws ServletException {
    	MenuInfo menuInfo = new MenuInfo();
    	MenuInfoDao infoDao = new MenuInfoDao();
    	List<MenuInfo> list = new ArrayList<MenuInfo>();
    	String sql="select * from(select *from introducemenu order by pushTime  limit 0,8) as t order by t.pushTime";
        try {
			list=infoDao.queryForInfo(sql);
//			list.add(menuInfo);
			this.getServletContext().setAttribute("list",list);
//			req.setAttribute("menuList", list);
//			req.getRequestDispatcher("/MsjIndex.jsp");
			System.out.println(menuInfo.getAchieveImage());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
