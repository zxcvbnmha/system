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
    
    <title>My JSP 'Add.jsp' starting page</title>
    
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
  //接收学生信息：学号，姓名，性别，出生日期，年级，电话
      request.setCharacterEncoding("UTF-8"); 
      String seid=new String(request.getParameter("seid").getBytes("UTF-8"),"UTF-8");
      String sename=new String(request.getParameter("sename").getBytes("UTF-8"),"UTF-8");
      String seeid=new String(request.getParameter("seeid").getBytes("UTF-8"),"UTF-8");
      String seename=new String(request.getParameter("seename").getBytes("UTF-8"),"UTF-8");
      String sesex=new String(request.getParameter("sesex").getBytes("UTF-8"),"UTF-8");
      String semajor=new String(request.getParameter("semajor").getBytes("UTF-8"),"UTF-8");
      String check=new String(request.getParameter("check").getBytes("UTF-8"),"UTF-8");
      
    //连接数据库进行添加操作 
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection conn=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110");
    //3.创建Statement
    Statement stmt = conn.createStatement();
    Statement sm=conn.createStatement();
    Statement sn=conn.createStatement();
    
    
    ResultSet rs=sm.executeQuery("select * from 学生信息表    where 姓名='"+seename+"'");
    ResultSet rt=sm.executeQuery("select * from 题目表    where 题目名称='"+sename+"'");
    
    if(rt.next())
    {
    if(rs.next())
    { 
    //添加
    stmt.executeUpdate("insert into  选题表     values('"+seid+"','"+sename+"','"+seeid+"','"+seename+"','"+sesex+"','"+semajor+"','"+check+"')");
    out.print("<script language = 'javaScript'> alert('选题成功');</script>");
    }
    else
    {
    	 out.print("<script language = 'javaScript'> alert('选题失败，该用户不存在');</script>");
    }
    }
    else
    {
    	out.print("<script language = 'javaScript'> alert('选题失败，该选题不存在');</script>");
    }
    %>
    
    <center>
    <div style="margin-top:20px;">
    <input type="submit" value="返回查询验证" onclick="window.location.href='selqurey.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;">
    <input type="button" value="返回继续添加" onclick="window.location.href='selinsert.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;">
    <input type="button" value="返回首页" onclick="window.location.href='stuselect.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    </center>
    
  

</body>
</html>