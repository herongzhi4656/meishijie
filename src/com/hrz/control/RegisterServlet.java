package com.hrz.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrz.dao.UserDao;
@WebServlet("/userRegister")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          doGet(req,resp);
	}
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	String sessionCode = (String)req.getSession().getAttribute("code");
    	String sql="insert into userinfo(userName,userPassword,userPhoto)values(?,?,?)";
    	String imgPath = "https://s2.ax1x.com/2019/12/11/QrwjQU.png";
    	int flag=0;
    	String username = req.getParameter("email");
    	String password=req.getParameter("password");
    	String sqlSearch = String.format("select userName from userinfo where userName='%s' ", username);
    	int result=0;
    	UserDao userDao = new UserDao();
    	System.out.println(sessionCode);
    	if(sessionCode!=null) {
    		//获取页面提交的验证码
    		String inputCode=req.getParameter("code");
    		System.out.println("页面提交的验证码:"+inputCode);
    		if(sessionCode.toLowerCase().equals(inputCode.toLowerCase())) {
    			 System.out.print("跳进了sessionCode中");
    			if(username==""||password=="") {
    				System.out.println("验证失败");
        			req.setAttribute("code",-2);
        			req.getRequestDispatcher("/MsjLogin.jsp").forward(req, resp);
    			}
    			System.out.println("页面提交:"+username+password);
    			//验证成功，跳转成功页面
    		      
    				
					try {
						result=userDao.serach(sqlSearch);
						System.out.println("这是result"+result);
						if(result==1) {
							System.out.println("数据查询成功");
							flag=userDao.update(username, password, imgPath,sql);
//							req.setAttribute("username", username);
			    			req.getRequestDispatcher("/MsjRegister.jsp").forward(req, resp);
						}else {
							
							System.out.println("这是result查到了其他用户");
							req.setAttribute("code", result);
							req.getRequestDispatcher("/MsjRegister.jsp").forward(req, resp);
						}
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			
    			if(flag==1) {
    				System.out.println("数据库插入成功");
    			}
    			
    		
    		}else {
    			System.out.println("验证失败");
    			
    			req.getRequestDispatcher("/MsjRegister.jsp").forward(req, resp);
    		}
    		req.removeAttribute("code");
    		
    	}else {
    		System.out.println("验证失败");
			req.setAttribute("code",-1);
			req.getRequestDispatcher("/MsjRegister.jsp").forward(req, resp);
    	}
    	req.removeAttribute("code");
    
    }
}
