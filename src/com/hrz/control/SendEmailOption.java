package com.hrz.control;

import java.security.GeneralSecurityException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.util.MailSSLSocketFactory;

public class SendEmailOption {
    public static void SendEmail(String emailName ,String vetifCode) throws GeneralSecurityException, MessagingException {
    	Properties prop = new Properties();
    	//开启debug调试,以便在控制台查看
    	prop.setProperty("mail.debug", "true");
    	//设置邮件服务器主机名
    	prop.setProperty("mail.host", "smtp.qq.com");
    	//发送邮件服务器需要身份验证
    	prop.setProperty("mail.smtp.auth", "true");
    	//发送邮件协议名称
    	prop.setProperty("mail.transport.protocol", "smtp");
    	//开启SSL加密，否则会失败
    	MailSSLSocketFactory sf = new MailSSLSocketFactory();
    	sf.setTrustAllHosts(true);
    	prop.put("mail.smtp.ssl.enable", "true");
    	prop.put("mail.smtp.ssl.socketFactory", sf);
    	prop.put("mail.smtp.port", 465);
    	prop.put("mail.smtp.socketFactory.port", 465);
    	//创建session
    	Session session = Session.getInstance(prop);
    	//通过session得到transport对象
    	Transport ts = session.getTransport();
    	ts.connect("smtp.qq.com","775519347","jfvmtjrqcbzibfdb");
    	//创建邮件
    	Message message = createSimpleMail(session,emailName,vetifCode);
    	//发送邮件
    	ts.sendMessage(message, message.getAllRecipients());
    	ts.close();
    	
  
    }
    public static MimeMessage createSimpleMail(Session session,String emailName,String vertifCode) throws AddressException, MessagingException {
    	//创建邮件对象
    	MimeMessage message = new MimeMessage(session);
    	//指明邮件的发件人
    	message.setFrom(new InternetAddress("775519347@qq.com"));
        //指明邮件的收件人
    	message.setRecipient(Message.RecipientType.TO,  new InternetAddress(vertifCode));
    	
    	//邮件的标题
    	message.setSubject("邮箱测试");
    	//邮件的文本内容
    	message.setContent("验证码为:"+vertifCode,"text/html;charset=UTF-8");
    	//返回创建好的邮件对象
    	return message;
    	
    }
}
