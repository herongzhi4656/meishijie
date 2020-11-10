package com.hrz.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrz.bean.Judge;
import com.hrz.bean.MenuInfo;
import com.hrz.bean.PrimaryMaterial;
import com.hrz.bean.Step;
import com.hrz.bean.SubsidaryMaterial;
import com.hrz.dao.JudgeDao;
import com.hrz.dao.MenuInfoDao;
import com.hrz.dao.PrimaryDao;
import com.hrz.dao.StepDao;
import com.hrz.dao.SubsidaryDao;
import com.hrz.dao.UserDao;

@WebServlet("/ShowMenuServlet")
public class ShowMenuServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		   doGet(req,resp);
	}
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	 String title = req.getParameter("title");
         String finalImg = req.getParameter("finalImg");
         String publishName = req.getParameter("publishName");
         String userName = req.getParameter("userName");
         String userImg = req.getParameter("userImg");
      
        //根据用户名和标题从数据库查出数据
         String sql=String.format("select * from introducemenu where achieveImage='%s' and title='%s' ", finalImg,title);
         MenuInfoDao menu = new MenuInfoDao();
         MenuInfo info = new MenuInfo();
         
         PrimaryMaterial primary = new PrimaryMaterial();
         PrimaryDao primaryInfo = new PrimaryDao();
         
         SubsidaryMaterial subsidary = new SubsidaryMaterial();
         SubsidaryDao subsidaryInfo = new SubsidaryDao();
         
         Step stepCookie = new Step();
         StepDao stepInfo = new StepDao();
         
         Judge judge = new Judge();
         JudgeDao judgeInfo = new JudgeDao();
         
 
         List<MenuInfo> menuInfo = new ArrayList<MenuInfo>();
         List<PrimaryMaterial> pmaterial =new ArrayList<PrimaryMaterial>();
         List<SubsidaryMaterial> smaterial = new ArrayList<SubsidaryMaterial>();
         List<Step> step = new ArrayList<Step>();
         List<Judge> judgemessage = new ArrayList();
         List list = new ArrayList();
         Map completeInfo= new HashMap();

         try {
			menuInfo = menu.queryForInfo(sql);
		
			//第二步去找原料和主料
			pmaterial = primaryInfo.searchPrimary(publishName,title);
			
			//第三步去找辅助材料
			smaterial = subsidaryInfo.searchSubsidary(publishName, title);
			

			step = stepInfo.searchSubsidary(publishName, title);
			
			//第四步去评论表里找评论
			judgemessage = judgeInfo.search(publishName, title);
			
			
			req.setAttribute("menuInfo",menuInfo);
			req.setAttribute("pmaterial",pmaterial);
			req.setAttribute("smaterial",smaterial);
			req.setAttribute("stepInfo", step);
			req.setAttribute("judge", judgemessage);
			req.setAttribute("userName",userName);
			req.setAttribute("userImg", userImg);
//			req.setAttribute("step1", 1);
//			req.setAttribute("step2", 2);
//			req.setAttribute("step3", 3);
//			req.setAttribute("step4", 4);
//			req.setAttribute("step5", 5);
			req.getRequestDispatcher("/MsjMenu.jsp").forward(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
        		
    }
}
