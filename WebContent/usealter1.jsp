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
    
    <title>usealter</title>
    
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
<center>
<strong>用户信息修改</strong>
    <hr>
      <% 
  //接收学生信息：学号，姓名，性别，出生日期，年级，电话
    request.setCharacterEncoding("UTF-8");
    String uid=new String(request.getParameter("uid").getBytes("UTF-8"),"UTF-8");
    String uname=new String(request.getParameter("uname").getBytes("UTF-8"),"UTF-8");
    String upassword=new String(request.getParameter("upassword").getBytes("UTF-8"),"UTF-8");
    String ucate=new String(request.getParameter("ucate").getBytes("UTF-8"),"UTF-8");
    //连接数据库进行添加操作 
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection conn=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110");
    //3.创建Statement
    Statement stmt = conn.createStatement();
    Statement sm=conn.createStatement();
    
    ResultSet rs=sm.executeQuery("select * from 用户表    where 用户名='"+uname+"'");
    
    //修改
    if(rs.next())
    {
    stmt.executeUpdate("update 用户表   set 用户号="+uid+",密码="+upassword+ ",用户类别="+ucate+" where 用户名='"+uname+"'");
    out.print("<script language = 'javaScript'> alert('修改成功');</script>");
    }
    else
    {
    	  out.print("<script language = 'javaScript'> alert('修改失败，该用户不存在');</script>");	
    }
    
    %>
     <div style="margin-top:20px;">
    <input type="submit" value="返回继续修改" onclick="window.location.href='usealter.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;margin-bottom:165px;">
    <input type="button" value="返回主页" onclick="window.location.href='sysselect.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
 </center>
</body>
</html>