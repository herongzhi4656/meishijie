package com.hrz.dao;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class TimeUtils {
    public Date getDate() throws ParseException {    
    	Date date=new Date();
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String nowTime = fm.format(date);
		Date time = fm.parse(nowTime);
		return time;
    }
}
