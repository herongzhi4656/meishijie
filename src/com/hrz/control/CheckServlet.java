package com.hrz.control;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hrz.bean.UserLogin;
import com.hrz.dao.UserDao;
@WebServlet("/login1")
public class CheckServlet extends HttpServlet{
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
		   doGet(req,resp);
			
		}
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	System.out.println("doGet");
	//1.获取请求参数 账号密码
	String username = req.getParameter("username");
	String password = req.getParameter("password");
	System.out.println(username+password);
	int flag=0;
	ResultSet res;
	UserDao user = new UserDao();
	UserLogin userLogin = new UserLogin();
	try {
		userLogin=user.queryForLogin(username,password);
		System.out.println("这是rs");
		HttpSession userSession = req.getSession();
	
		if(userLogin.getUserId()>0) {
			userSession.setAttribute("userInfo", userLogin);
			req.setAttribute("user", userLogin);
			
			req.getRequestDispatcher("/MsjIndex.jsp").forward(req, resp);
		}else {
			req.setAttribute("user", userLogin);
			req.getRequestDispatcher("/MsjLogin.jsp").forward(req, resp);
			System.out.println("用户名或密码错误");
		}
		
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
    }
}
