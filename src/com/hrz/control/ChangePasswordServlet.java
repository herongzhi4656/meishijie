package com.hrz.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrz.dao.UserDao;

@WebServlet("/ChangePwd")
public class ChangePasswordServlet extends HttpServlet{
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          doGet(req,resp);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	int pwdCorrect = 0;
    	int changeCorrect = 0;
    	 Cookie[] cookies = req.getCookies();
    	 String userName=null;
         for(Cookie c:cookies) {
        	 System.out.println("这是Cookie循环");
      	   if(c.getName().equals("aName")) {
      		   userName = c.getValue();
      		   System.out.println("1");
      	   }
         }
    	String oldPwd = req.getParameter("oldpassword");
    	String newPwd = req.getParameter("new_password");
    	String rePwd = req.getParameter("req_password");
    	UserDao user = new UserDao();
    	System.out.println("这是用户名:"+userName);
    	String sqlSearch = String.format("select userPassword from userinfo where userName='%s' ", userName);
    	String pwdsql = "update userInfo set userPassword=? where userName=?";
    	if(!(newPwd.equals(rePwd))) {
    		//两次密码输入不正确
    		req.setAttribute("correct", 0);
			req.getRequestDispatcher("/MsjChange.jsp").forward(req, resp);
    	}
    	try {
			pwdCorrect=user.serachPassword(oldPwd,sqlSearch);
			if(pwdCorrect==1) {
				System.out.println("找到了原来的密码");
				changeCorrect = user.updateImg(userName, newPwd, pwdsql);
				if(changeCorrect ==1) {
					System.out.println("数据库更改密码成功");
					req.setAttribute("correct", 1);
					req.getRequestDispatcher("/MsjChange.jsp").forward(req, resp);
				}else {
					//数据库更新失败
					req.setAttribute("correct", 2);
					req.getRequestDispatcher("/MsjChange.jsp").forward(req, resp);
				}
			}else {
				//输入的密码不正确
				req.setAttribute("correct", 3);
				req.getRequestDispatcher("/MsjChange.jsp").forward(req, resp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	
    }
}
