package com.hrz.control;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        boolean result;
        String username;
        String filename;
        int filesize;
        String filepath;
        String date;


        //上传
         boolean isMultiipart = ServletFileUpload.isMultipartContent(request);
        try {
            if (isMultiipart) {//判断前台的form是否有mutipart属性
                   // FileItemFactory factory = new DiskFileItemFactory();
                        //把上面接口变为实现类
                DiskFileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                //int filesize = Integer.parseInt(request.getParameter("filesize"));
                //System.out.println("filesize: "+ filesize);

                factory.setSizeThreshold(100*1024);  //设置缓冲区大小
                    factory.setRepository(new File("D:\\java\\uploadAndDown\\uptemp\\"));  //设置临时文件目录
                    upload.setFileSizeMax(100*1024);
                    //控制上传文件的大小
                    upload.setSizeMax(10*1024*1024);

                    //通过parseRequest解析form中的所有请求字段， 并保存到items集合中
                    //即前台传递的sno sname spicture 此时就保存在了 items 中

                    List<FileItem> items = upload.parseRequest(request);
                    String sno = null;
                    String sname = null;
                    username = String.valueOf(session.getAttribute("username"));
                    Iterator<FileItem> iter = items.iterator();
                    System.out.println("uploadServlet"+items.get(0));
                    while (iter.hasNext()) {
                        FileItem item = iter.next();
                        String itemName = item.getFieldName();  //获取表单

                        if (item.isFormField()) {
                            if (itemName.equals("sno")) {//根据name属性 判断itrm是sno , sname spicture
                                sno = item.getString("utf-8");
                            } else if (itemName.equals("sname")) {
                                sname = item.getString("utf-8");
                            } else {
                                System.out.println("其他字段……");
                            }
                        } else {


                            filename = item.getName();
                            System.out.println("getName: " + filename);
                            filesize = Math.toIntExact(item.getSize());



                            //以用户名为文件夹
                            String path = request.getServletContext().getRealPath("/"+"image");
                    
//                            System.out.println(filepath);
//                            File file = new File(filepath + "/" + filename);
//                            if(!file.exists()) {
//      
//                                    item.write(file);
//                                    response.sendRedirect(request.getContextPath() + "/CheckServlet");
//                               
//                            }

                        }
                    }


            }
        }catch(FileUploadBase.SizeLimitExceededException e){
            response.getWriter().println("上传文件大小超过限制！ 最大20kb");
        } catch (FileUploadException e) {
            e.printStackTrace();
        }

        catch (Exception e) {
            e.printStackTrace();
        }
    }
}
