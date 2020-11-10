<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.hrz.bean.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<p>${list[0].title}</p>
</body>
<%
    MenuInfo menu = new MenuInfo();
    menu.setTitle("何");
    menu.setAchieveImage("1");
    menu.setAttributeCookie("2");
    menu.setAchieveImage("3");
    menu.setAttributeCount("4");
    menu.setAttributeCraft("5");
    menu.setAttributeDiffucult("6");
    menu.setAttributeFlavor("7");
    menu.setAttributeTime("2019-10-1");
    menu.setMediaTitle("11");
    UserLogin user = new UserLogin();
    user.setUserName("zs");
    user.setUserPhoto("11");
    List list = new ArrayList();
    list.add(menu);
    list.add(user);
    request.setAttribute("list", list);
    
    


%>
</html>