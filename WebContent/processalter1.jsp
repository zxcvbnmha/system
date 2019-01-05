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
    
    <title>毕业设计管理系统</title>
    
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
   <strong>毕业设计进程信息修改</strong>
   <% 
  //接收学生信息：学号，姓名，性别，出生日期，年级，电话
    request.setCharacterEncoding("UTF-8");
    String ptask=new String(request.getParameter("ptask").getBytes("UTF-8"),"UTF-8");
    String psum=new String(request.getParameter("psum").getBytes("UTF-8"),"UTF-8");
    String preport=new String(request.getParameter("preport").getBytes("UTF-8"),"UTF-8");
    String ptranslate=new String(request.getParameter("ptranslate").getBytes("UTF-8"),"UTF-8");
    String ptest=new String(request.getParameter("ptest").getBytes("UTF-8"),"UTF-8");
    String pexamine=new String(request.getParameter("pexamine").getBytes("UTF-8"),"UTF-8");
    String popinion=new String(request.getParameter("popinion").getBytes("UTF-8"),"UTF-8");
    String pdebate=new String(request.getParameter("pdebate").getBytes("UTF-8"),"UTF-8");
    String pname=new String(request.getParameter("pname").getBytes("UTF-8"),"UTF-8");
    //连接数据库进行添加操作 
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection conn=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110");
    //3.创建Statement
    Statement stmt = conn.createStatement();
    Statement sm=conn.createStatement();
    
    ResultSet rs=sm.executeQuery("select * from 毕业设计进程表    where 姓名='"+pname+"'");
    
    //修改
    if(rs.next())
    {
        stmt.executeUpdate("update 毕业设计进程表  set 任务书="+ptask+",文献综述="+psum+ ",开题报告="+preport+",原文翻译="+ptranslate+",中期检查="+ptest+",论文审评="+pexamine+",导师意见="+popinion+",论文答辩="+pdebate+" where 姓名='"+pname+"'");
        out.print("<script language = 'javaScript'> alert('修改成功');</script>");    
    }
    else
    {
    	out.print("<script language = 'javaScript'> alert('修改失败，该用户不存在');</script>");
    }
    %>
     <div style="margin-top:20px;">
    <input type="submit" value="返回查询" onclick="window.location.href='processqurey.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
     <div style="margin-top:20px;">
    <input type="submit" value="返回继续修改" onclick="window.location.href='processalter.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;margin-bottom:165px;">
    <input type="button" value="返回主页" onclick="window.location.href='teaselect.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    </center>

</body>
</html>