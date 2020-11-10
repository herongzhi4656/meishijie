package com.hrz.dao;

import java.io.UnsupportedEncodingException;
import java.util.Date;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class JavaMailUtil {
  //发送邮箱
	public static String emailAccount="775519347@qq.com";
	//发件人邮箱授权码
	public static String eamilPassword="jfvmtjrqcbzibfdb";
	//发件人邮箱服务地址
	public static String emailSMTPHost = "smtp.qq.com";
	//收件人邮箱
	public static String receiveMailAccount="";
	
	public static MimeMessage creageMimeMessage(Session session,String sendMail,String receiveMail,String html) throws UnsupportedEncodingException, MessagingException {
    MimeMessage message = new MimeMessage(session);
    //发件人
    message.setFrom(new InternetAddress(sendMail, "发件人昵称", "UTF-8"));
    message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "张三", "UTF-8"));
 // 4、Subject:邮件主题
    message.setSubject("邮箱验证","UTF-8");
    // 5、Content:邮件正文（可以使用Html标签）
    message.setContent(html,"text/html;charset=UTF-8");
    // 6、设置发送时间
    message.setSentDate(new Date());
    // 7、保存设置
    message.saveChanges();
    return message;
	}
}
