package com.hrz.control;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrz.dao.JavaMailUtil;
import com.hrz.dao.RandomUtil;
import com.hrz.dao.htmlText;
import com.sun.mail.util.MailSSLSocketFactory;

@WebServlet("/SendEmailServlet")
public class SendEmailServlet extends HttpServlet {
	private static final long serialVersionUID =1L;
	//邮件发送
     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String email=req.getParameter("email");
        JavaMailUtil.receiveMailAccount=email;
        
     // 1、创建参数配置，用于连接邮箱服务器的参数配置
     			Properties props = new Properties();
     			// 开启debug调试
     			props.setProperty("mail.debug", "true");
     			// 发送服务器需要身份验证
     			props.setProperty("mail.smtp.auth", "true");
     			// 设置右键服务器的主机名
     			props.setProperty("mail.host", JavaMailUtil.emailSMTPHost);
     			//发送服务器需要验证身份
     			props.setProperty("mail.smtip.auth", "true");
     			// 发送邮件协议名称
     			props.setProperty("mail.transport.protocol", "smtp");
                
 
    			
//     			Properties prop = new Properties();
//     	    	//开启debug调试,以便在控制台查看
//     	    	prop.setProperty("mail.debug", "true");
//     	    	//设置邮件服务器主机名
//     	    	prop.setProperty("mail.host", "smtp.qq.com");
//     	    	//发送邮件服务器需要身份验证
//     	    	prop.setProperty("mail.smtp.auth", "true");
//     	    	//发送邮件协议名称
//     	    	prop.setProperty("mail.transport.protocol", "smtp");
//     	     	prop.put("mail.smtp.port", 465);
//            	prop.put("mail.smtp.socketFactory.port", 465);
     	    	//开启SSL加密，否则会失败
     	    	MailSSLSocketFactory sf;
     	
					try {
						sf = new MailSSLSocketFactory();
						sf.setTrustAllHosts(true);
		     	    	props.put("mail.smtp.ssl.enable", "true");
		     	    	props.put("mail.smtp.ssl.socketFactory", sf);
					
					} catch (GeneralSecurityException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					
     	    
     		
     		
     			// 2、根据配置创建会话对象，用于和邮件服务器交互
     			Session session = Session.getInstance(props);
     			// 设置debug，可以查看详细的发送log
     			session.setDebug(true);
     			// 3、创建一封邮件
     			String code = RandomUtil.getRandom();
     			System.out.println("邮箱验证码：" + code);
     			String html = htmlText.html(code);
     			MimeMessage message;
				try {
					message = JavaMailUtil.creageMimeMessage(session, JavaMailUtil.emailAccount,
							JavaMailUtil.receiveMailAccount, html);
					// 4、根据session获取邮件传输对象
	     			Transport transport;
						transport = session.getTransport();
				
	     			// 5、使用邮箱账号和密码连接邮箱服务器emailAccount必须与message中的发件人邮箱一致，否则报错
	     			transport.connect(JavaMailUtil.emailAccount, JavaMailUtil.eamilPassword);
	     			// 6、发送邮件,发送所有收件人地址
	     			transport.sendMessage(message, message.getAllRecipients());
	     		    // 7、关闭连接
	     			transport.close();
	     			//写入session
	     			req.getSession().setAttribute("code", code);
				} catch (MessagingException e) {
	     			req.getSession().setAttribute("error", "邮件发送失败");
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
    }
}
