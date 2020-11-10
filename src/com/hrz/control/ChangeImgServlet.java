package com.hrz.control;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import com.hrz.bean.UserLogin;
import com.hrz.dao.UserDao;


@WebServlet("/ChangeImgServlet")
public class ChangeImgServlet extends HttpServlet {
               @Override
            protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    req.setCharacterEncoding("utf-8");
	                 resp.setCharacterEncoding("utf-8");
	                 resp.setContentType("text/html;charset=UTF-8");
//	                 HttpSession session = req.getSession();
	                 UserLogin person = new UserLogin();
	                 person=(UserLogin)req.getSession().getAttribute("userInfo");
	                 String userName=person.getUserName();
	                 System.out.println("这是name"+userName);
	            	 System.out.println("进来了");
	                	int result =0;  
	               	     Cookie[] cookies = req.getCookies();
//	                      String userName=null;
	                      String currentImg;
	                        System.out.println(userName);
	                       String changeImg=req.getParameter("photos");
	                 	   System.out.println(changeImg);
	                 	   
	                 	  try {
	              			boolean multipartContent = ServletFileUpload.isMultipartContent(req);
	              			if(multipartContent) {
	              				System.out.println("这是表单内容");
	              				DiskFileItemFactory factory = new DiskFileItemFactory();	//ServletFileUpload需要factory参数
	              				ServletFileUpload upload = new ServletFileUpload(factory);
	              				factory.setSizeThreshold(102400);//设置临时的缓存文件大小100KB
	              				String path = req.getServletContext().getRealPath("/"+"image");
	              				System.out.println(path);
	              				factory.setRepository(new File(path));//设置临时文件的目录
	              				
	              				//通过parseRequest解析form中的所有请求字段，并保存到items集合中（前台的数据保存在list中）
	              				List<FileItem> items = upload.parseRequest(req);
	              				System.out.println("upload:null"+items.get(0));
	              				//遍历items中的数据
	              				Iterator<FileItem> iterator = items.iterator();
	              				while(iterator.hasNext()) {
	              					FileItem item = iterator.next();
	              					String itemname = item.getFieldName();
	              					System.out.println("有多少个list");
	              					//判断前端字段是普通字段，还是文件字段
	              					if(item.isFormField()) {//普通字段
	              						if(itemname.equals("act")) {//根据name 判断item是son sanme 还是。。
	              							
	              							System.out.println(itemname);
	              							System.out.println(item.getString("utf-8"));
	              						}else if(itemname.equals("sname")) {
	              							item.getString("utf-8");
	              						}else {
	              							System.out.println("其它字段");
	              						}
	              					}else {//文件字段 上传
	              						//获取文件名
	              						String fileName = item.getName();
	              						System.out.println(fileName);
	              						String ext = fileName.substring(fileName.indexOf(".")+1);
	              						if(!(ext.equalsIgnoreCase("png")||ext.equalsIgnoreCase("gif")||ext.equalsIgnoreCase("jpg"))) {
	              							System.out.println("图片格式有误");
	              							req.setAttribute("filePath", -1);
	              							req.getRequestDispatcher("/MsjChange.jsp").forward(req, resp);
	              							
	              						}
	              						//获取文件内容 上传
	              						//定义文件路径：指定上传的位置
	              						//获取服务器路径
//	              						String path = request.getSession().getServletContext().getRealPath("upload");
	              						File file = new File(path,fileName);
	              						item.write(file);//上传
	              	                   String filePath="image"+"/"+fileName;
	              	              	   UserDao user = new UserDao();
	                             	   String sql="update userInfo set userPhoto=? where userName=?";
	                             	   result=user.updateImg(userName,filePath, sql);
	                             	   if(result==1) {
	                             		   System.out.println("数据库保存成功");
	                             		    req.setAttribute("filePath",1);
	              							req.getRequestDispatcher("/MsjChange.jsp").forward(req, resp);
	                             	   }
	              						System.out.println(fileName+"上传成功");
	              					
	              					}
	              					
	              				}
	              			}
	              		}catch (FileUploadException e) {
	              			// TODO Auto-generated catch block
	              			e.printStackTrace();
	              		} catch (Exception e) {
	              			// TODO Auto-generated catch block
	              			e.printStackTrace();
	              		}
	                      }
            
                @Override
                protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                	  // TODO Auto-generated method stub
	              doGet(req,resp);
	           	  
    	  
     }
}

