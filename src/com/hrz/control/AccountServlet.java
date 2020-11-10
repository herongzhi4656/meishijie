package com.hrz.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrz.dao.UserDao;
@WebServlet("/AccountServlet")
public class AccountServlet extends HttpServlet{
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	     doGet(req,resp);
  }
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int flag=0;
//		resp.setCharacterEncoding("UTF-8");
//		resp.setContentType("json");
		String sql="insert into userinfo(userName,userPassword,userPhoto)values(?,?,?)";
    	String imgPath = "https://s2.ax1x.com/2019/12/11/QrwjQU.png";
    	String username = req.getParameter("username");
  
    	String password = req.getParameter("password");
        System.out.println(username+password);
    	UserDao userDao = new UserDao();
    	String sqlSearch = String.format("select userName from userinfo where userName='%s' ", username);
    	try {
    		flag=userDao.serach(sqlSearch);
    		if(flag==1) {
    			userDao.update(username, password, imgPath, sql);
    			req.getRequestDispatcher("/MsjLogin.jsp").forward(req, resp);
    		}else {
    			System.out.println("有用户名");
    			req.setAttribute("result", flag);
    			req.getRequestDispatcher("/MsjRegister.jsp").forward(req, resp);
    		}
		
			//req.getRequestDispatcher("/MsjLogin.jsp").forward(req, resp);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
    

    	
    }
     
}
