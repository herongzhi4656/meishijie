package com.hrz.control;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.hrz.dao.TimeUtils;

public class TimeTest {
   public static void main(String[] args) throws ParseException {
	   Date date=new Date();
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String nowTime = fm.format(date);
		Date time = fm.parse(nowTime);
		System.out.println(nowTime);
		
   }
}
