<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@ page import="java.util.*" %>
<%@ page import="javax.swing.JOptionPane" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>毕业设计管理系统</title>
</head>
<body>
<% 
     request.setCharacterEncoding("UTF-8"); 
     String username=new String(request.getParameter("username")); 
     String password=new String(request.getParameter("password")); 
     String userclass=new String(request.getParameter("userclass"));    
     //连接数据库
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection ct=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110"); 
    //3.创建Statement
    Statement sm=ct.createStatement();
    ResultSet rs = sm.executeQuery("select * from 用户表   where 用户名 = "+" '"+username+"' ");
    
    if(rs.next())
    {
    	String str1 = rs.getString("密码").trim();
    	String str2 = rs.getString("用户类别").trim();
    	if(password.equals(str1)==true)
    	{
    		if(str2.equals(userclass)==true)
    		{
    			if(str2.equals("学生")==true)
    				response.sendRedirect("stuselect.jsp");
    			else if(str2.equals("教师")==true)
    				response.sendRedirect("teaselect.jsp");
    			else if(str2.equals("管理员")==true)
    				response.sendRedirect("sysselect.jsp");
    			else if(str2.equals("系统管理员")==true)
    				response.sendRedirect("admiselect.jsp");
    		}
    		else
			{
				out.print("<script language = 'javaScript'> alert('用户类型不匹配');</script>");
				response.setHeader("refresh", "0;url = login.jsp");
			}
    	}
    	else
    	{
    		out.print("<script language = 'javaScript'> alert('密码错误');</script>");
			response.setHeader("refresh", "0;url = login.jsp");
    	}
    }
    else
	{
		out.print("<script language = 'javaScript'> alert('用户不存在');</script>");
		response.setHeader("refresh", "0;url = login.jsp");
	}
    rs.close();
    sm.close();
    ct.close();
%>

</body>
</html>