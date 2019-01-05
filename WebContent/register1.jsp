<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>"> 
    <title>register</title> 
 <meta http-equiv="pragma" content="no-cache">
 <meta http-equiv="cache-control" content="no-cache">
 <meta http-equiv="expires" content="0">    
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
 <meta http-equiv="description" content="This is my page">
 <!--
 <link rel="stylesheet" type="text/css" href="styles.css">
 -->
</head>

<body>
<%
    request.setCharacterEncoding("UTF-8"); 
    String regnumber=new String(request.getParameter("regnumber")); 
    String regusername=new String(request.getParameter("regusername")); 
    String regpassword1=new String(request.getParameter("regpassword1")); 
    String regpassword2=new String(request.getParameter("regpassword2")); 
    String reguserclass=new String(request.getParameter("reguserclass"));  
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection conn=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110");
    //3.创建Statement
    Statement stmt = conn.createStatement();
    
    if(regusername.equals(""))
    {
    	out.print("<script language = 'javaScript'> alert('用户名为空');</script>");
		response.setHeader("refresh", "0;url = register.jsp");
    }
    else
    {
    if(regpassword1.equals(""))
    {
    	out.print("<script language = 'javaScript'> alert('输入密码为空');</script>");
		response.setHeader("refresh", "0;url = register.jsp");
    }
    else
    {
		if(regpassword1.equals(regpassword2)==true)
	    {
	        stmt.executeUpdate("insert into 用户表     values('"+regnumber+"','"+regusername+"','"+regpassword1+"','"+reguserclass+"')");
	        out.print("<script language = 'javaScript'> alert('注册成功');</script>");
			response.setHeader("refresh", "0;url = login.jsp");
	    }
	    else
	    {
	    	out.print("<script language = 'javaScript'> alert('输入密码不同');</script>");
			response.setHeader("refresh", "0;url = register.jsp");
	    }
    }
    }
%>
    <center>
    <strong>用户注册</strong>
    <hr>
    <div style="margin-top:20px;">
    <input type="submit" value="继续注册" onclick="window.location.href='register.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
   
    <div style="margin-top:20px;">
    <input type="submit" value="返回首页" onclick="window.location.href='login.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    </center>
    stmt.close();
    conn.close();

</body>
</html>