package com.hrz.control;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.hrz.bean.PrimaryMaterial;
import com.hrz.bean.Step;
import com.hrz.bean.SubsidaryMaterial;
import com.hrz.bean.MenuInfo;
import com.hrz.bean.UserLogin;
import com.hrz.dao.MenuInfoDao;
import com.hrz.dao.TimeUtils;
@WebServlet("/PublishServlet")
public class PublishServlet extends HttpServlet{
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doGet(req,resp);
			
		}
   
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          UserLogin person = new UserLogin();
          person=(UserLogin)req.getSession().getAttribute("userInfo");
          String userName=person.getUserName();
    	  int inscorrect=0;
    	  
    	  // TODO Auto-generated method stub
    	String primaryTitle=null;//主标题
    	String MediaTitle=null;//媒体标题
    	String gongyi = null;//工艺
    	String kouwei =null;//口味
    	String makeDiff=null;//制作困难
    	String makePretime =null;//准备时间
    	String makeTime = null;//烹饪时间
    	String makeAmount = null;//选择人数
    	//String finalImg = req.getParameter("photos");//成果图
    	String story = null;//背后的故事
    	File file;
    	String[] pMaterial = new String[10];//主料
    	String[] fMaterial = new String[10];//辅料
    	String[] pAmount = new String[10];//主料用量
    	String[] fAmount = new String[10];//辅料用量
    	String[] stepText= new String[10];//步骤
    	Date pubTime=null; //发布时间
        TimeUtils time = new TimeUtils();
        
        String filePath=null;
      
    	
    	//String[] showImg = req.getParameterValues("step_result_img[]");//最终的成果图
    //	System.out.println(primaryTitle);
//    	System.out.println("这是故事:"+story);
//    	for(int i=0;i<pAmount.length;i++) {
//    		System.out.println("这是:pAmount:"+pAmount[i]);
//    	}
    
    	String type = req.getParameter("stype");
            req.setCharacterEncoding("utf-8");
            resp.setCharacterEncoding("utf-8");
            resp.setContentType("text/html;charset=UTF-8");
             HttpSession session = req.getSession();
       	    System.out.println("进来了");
           	
           	int result =0;  
          	    
              
                  String changeImg=req.getParameter("photos");
            	   System.out.println(changeImg);
            	   
            	  try {
         			boolean multipartContent = ServletFileUpload.isMultipartContent(req);
         			if(multipartContent) {
         				  try {
         						pubTime=time.getDate();//获取当前系统的时间
         						System.out.println(pubTime);
         					} catch (ParseException e1) {
         						// TODO Auto-generated catch block
         						e1.printStackTrace();
         					}
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
         				int zlscCount =0;
 						int zlylCount =0;
 						int flscCount = 0;
 						int flylCount =0;
 						int stepCount =0;
         				Iterator<FileItem> iterator = items.iterator();
         				while(iterator.hasNext()) {
         					FileItem item = iterator.next();
         					String itemname = item.getFieldName();
         					System.out.println("有多少个list");
         					//判断前端字段是普通字段，还是文件字段
         					if(item.isFormField()) {//普通字段
         						
         						if(itemname.equals("title")) {//根据name 判断item是son sanme 还是。。
         							primaryTitle=item.getString("utf-8");;
         							System.out.println(primaryTitle);
         							
         						}else if(itemname.equals("ftitle")) {
         							MediaTitle = item.getString("utf-8");
         							
         						}else if(itemname.equals("gongyi")){
         							
         							if(item.getString("utf-8").equals("g1")) {
         								gongyi ="炒";
         							}else if(item.getString("utf-8").equals("g2")) {
         								gongyi ="蒸";
         							}else if(item.getString("utf-8").equals("g3")) {
         								gongyi ="煮";
         							}else if(item.getString("utf-8").equals("g4")) {
         								gongyi ="其他";
         							}
         							System.out.println(gongyi);
         							
         						}else if(itemname.equals("kouwei")){
         							if(item.getString("utf-8").equals("w1")) {
         								kouwei="香辣";
         							}else if(item.getString("utf-8").equals("w2")) {
         								kouwei="甜味";
         							}else if(item.getString("utf-8").equals("w3")) {
         								kouwei="酸甜味";
         							}else if(item.getString("utf-8").equals("w4")) {
         								kouwei="其他";
         							}
         							
         							System.out.println(kouwei);
         						}else if(itemname.equals("make_diff")){
         							if(item.getString("utf-8").equals("d1")) {
         								makeDiff = "初级入门";	
         							}else if(item.getString("utf-8").equals("d2")) {
         								makeDiff = "中级掌勺";
         							}else if(item.getString("utf-8").equals("d3")) {
         								makeDiff = "高级厨师";
         							}
         							System.out.println(makeDiff);
         							
         						}else if(itemname.equals("make_pretime")) {
         							if(item.getString("utf-8").equals("p1")) {
         								makePretime = "15分钟";
         							}else if(item.getString("utf-8").equals("p2")) {
         								makePretime = "30分钟";
         							}else if(item.getString("utf-8").equals("p2")) {
         								makePretime = "60分钟";
         							}
         							System.out.println(makePretime);
         							
         						}else if(itemname.equals("make_time")) {
         							if(item.getString("utf-8").equals("c1")) {
         								makeTime ="60分钟";
         							}else if(item.getString("utf-8").equals("c2")) {
         								makeTime ="90分钟";
         							}else if(item.getString("utf-8").equals("c3")) {
         								makeTime ="2小时";
         							}
         							System.out.println(makeTime);
         						
         						}else if(itemname.equals("make_amount")) {
                                    if(item.getString("utf-8").equals("a1")) {
                                    	makeAmount = "1人份";
                                    }else if(item.getString("utf-8").equals("a2")) {
                                    	makeAmount = "2人份";
                                    }else if(item.getString("utf-8").equals("a3")) {
                                    	makeAmount = "3人份";
                                    }else if(item.getString("utf-8").equals("a4")) {
                                    	makeAmount = "未知";
                                    }
                                    System.out.println(makeAmount);
         							
         						}else if(itemname.equals("descr")) {
         							story = item.getString("utf-8");
         							  System.out.println("这是storylll"+story);
         							  System.out.println("story进来了吗");
         						}else if(itemname.equals("zlsc1")) {
         							pMaterial[zlscCount++]=item.getString("utf-8");
         						    System.out.println("这是主料:"+item.getString("utf-8"));
         						}else if(itemname.equals("zlyl1")) {
         							pAmount[zlylCount++]=item.getString("utf-8");
         						   System.out.println("这是主料配方:"+item.getString("utf-8"));
         					
         						}else if(itemname.equals("flsc1")) {
         						     fMaterial[flscCount++] = item.getString("utf-8");
         							 System.out.println("这是辅料:"+item.getString("utf-8"));
         						}else if(itemname.equals("flyl1")) {
         				             fAmount[flylCount++]=item.getString("utf-8");
         							 System.out.println("这是辅料配方:"+item.getString("utf-8"));
         						}else if(itemname.equals("step_text1")) {
         				            stepText[stepCount++]=item.getString("utf-8");
         						} else if(itemname.equals("zlsc2")) {
                                    pMaterial[zlscCount++]=item.getString("utf-8");
                                    System.out.println("这是主料:"+item.getString("utf-8"));
         						}else if(itemname.equals("zlyl2")) {
         				             pAmount[zlylCount++] = item.getString("utf-8");
         				            System.out.println("这是主料配方:"+item.getString("utf-8"));
         						}else if(itemname.equals("flsc2")) {
         						     fMaterial[flscCount++] = item.getString("utf-8");
         						    System.out.println("这是辅料:"+item.getString("utf-8"));
         						}else if(itemname.equals("flyl2")) {
         					        fAmount[flylCount++]=item.getString("utf-8");
         					       System.out.println("这是辅料配方:"+item.getString("utf-8"));
         						}else if(itemname.equals("step_text2")) {
         						
         							stepText[stepCount++]=item.getString("utf-8");
         						}else if(itemname.equals("zlsc3")) {
         						     pMaterial[zlscCount++]=item.getString("utf-8");
         						}else if(itemname.equals("zlyl3")) {
         						     pAmount[zlylCount++] = item.getString("utf-8");
         						}else if(itemname.equals("flsc3")) {
         						     fMaterial[flscCount++] = item.getString("utf-8");
         						}else if(itemname.equals("flyl3")) {
         						      fAmount[flylCount++]=item.getString("utf-8");
         						}else if(itemname.equals("step_text3")) {
         				             stepText[stepCount++]=item.getString("utf-8");
         						} else if(itemname.equals("zlsc4")) {
         							pMaterial[zlscCount++]=item.getString("utf-8");
         						}else if(itemname.equals("zlyl4")) {
         					        pAmount[zlylCount++] = item.getString("utf-8");
         						}else if(itemname.equals("flsc4")) {
         					         fMaterial[flscCount++] = item.getString("utf-8");
         						}else if(itemname.equals("flyl4")) {
         					          fAmount[flylCount++]=item.getString("utf-8");
         						}else if(itemname.equals("step_text4")) {
         							  stepText[stepCount++]=item.getString("utf-8");
         						}else if(itemname.equals("step_text5")) {
         						     stepText[stepCount++]=item.getString("utf-8");
         						}
         						else {
         							System.out.println("其他字段");
         						}
         						
         					}else {//文件字段 上传
         						//获取文件名
         						String fileName = item.getName();
         						System.out.println(fileName);
         						String ext = fileName.substring(fileName.indexOf(".")+1);
         						if(!(ext.equalsIgnoreCase("png")||ext.equalsIgnoreCase("gif")||ext.equalsIgnoreCase("jpg"))) {
         							System.out.println("图片格式有误");
         							req.setAttribute("filePath", -1);
         							req.getRequestDispatcher("/MsjPubMenu.jsp").forward(req, resp);
         							
         						}
         						
         						//获取文件内容 上传
         						//定义文件路径：指定上传的位置
         						//获取服务器路径
//         						String path = request.getSession().getServletContext().getRealPath("upload");
         						 file = new File(path,fileName);
         						item.write(file);//上传
         	                     filePath="image"+"/"+fileName;
         	                    
         	            
         	                
         	               
         	         
         	                   
//         	              	   UserDao user = new UserDao();
//                        	   String sql="update userInfo set userPhoto=? where userName=?";
//                        	   result=user.updateImg(userName,filePath, sql);
                        	
         						System.out.println(fileName+"上传成功");
         					
         					}
         					
         				}
//         				for(int i=0;)
         				
         			   //    先将相关的信息插入进去
  	                   MenuInfo introduce = new MenuInfo();
  	                   MenuInfoDao info = new MenuInfoDao();
  	                   introduce.setTitle(primaryTitle);
  	                   introduce.setMediaTitle(MediaTitle);
  	                   introduce.setAttributeCraft(gongyi);
  	                   introduce.setAttributeFlavor(kouwei);
  	                   introduce.setAttributeDiffucult(makeDiff);
  	                   introduce.setAttributeTime(makePretime);//准备时间
  	                   introduce.setAttributeCookie(makeTime);
  	                   introduce.setAttributeCount(makeAmount);
  	                   introduce.setStory(story);
  	                   introduce.setAchieveImage(filePath);
  	                   introduce.setPushTime(pubTime);
  	                   introduce.setPublishName(userName);
  	                   inscorrect=info.insintroduce(introduce); //将主要材料存进表中
  	                   PrimaryMaterial meterial = new PrimaryMaterial();
  	                   Step step = new Step();
  	                   
  	                   //第一个表单中的数据保存完毕
  	                   //将原材料保存到材料表中
  	                   int mcorrect =0;
  	                   int fcorrect =0;
  	                   int scorrect=0;
  	                   PrimaryMaterial primary = new PrimaryMaterial();
  	                   SubsidaryMaterial subsidary = new SubsidaryMaterial();
  	                   System.out.println("这是主料长度"+flscCount);
  	                 if(inscorrect==1) {
	                
	                	   for(int i=0;i<zlscCount;i++) {
	                		   //进入数据库将主材料保存
	  	                	    System.out.println("主料");
	                		     primary.setIngredients(pMaterial[i]);
	                		     primary.setIusage(pAmount[i]);
	                		     primary.setPublishName(userName);
	                		     primary.setPublishTitle(primaryTitle);
	                		     mcorrect=info.insprimary(primary);
	                	   }
	                	  
	                   }
  	               if(mcorrect==1&&inscorrect==1) {
	                	  //进入数据库将辅材料保存
	                         for(int i=0;i<flscCount;i++) {
	                			  System.out.println("辅料");
	                			   subsidary.setPublishName(userName);
	                			   subsidary.setPublishTitle(primaryTitle);
	                			   subsidary.setSubsidary(fMaterial[i]);
	                			   subsidary.setSusage(fAmount[i]);
	                			   fcorrect= info.insubsidary(subsidary);
	                		   }
  	               }
	                          //存储步骤
        	                   if(fcorrect==1&&mcorrect==1&&inscorrect==1) {
        	                	  
        	                	   for(int i=0;i<stepCount;i++) {
        	                		   System.out.println("步骤");
        	                		   step.setPublishName(userName);
        	                		   step.setPublishTitle(primaryTitle);
        	                		   step.setStep(stepText[i]);
        	                		   scorrect=info.insstep(step);
        	                	   }
        	                   }
        	                   if(fcorrect==1&&mcorrect==1&&inscorrect==1&&scorrect==1) {
                        		   System.out.println("数据库保存成功");
                        		    req.setAttribute("publish",1);
         							req.getRequestDispatcher("/MsjPubMenu.jsp").forward(req, resp);
                        	   }
	                	   
	               
         			}
         		}catch (FileUploadException e) {
         			// TODO Auto-generated catch block
         			e.printStackTrace();
         		} catch (Exception e) {
         			// TODO Auto-generated catch block
         			e.printStackTrace();
         		}
    		
            	
    	//第一步将原材料那些加到pulishName中
//            	  for(int i=0;i<stepText.length;i++) {
//          			System.out.println("这是:step"+stepText[i]);
//          		}
//          		System.out.println("这是story啊"+story);
    }
	 

}
