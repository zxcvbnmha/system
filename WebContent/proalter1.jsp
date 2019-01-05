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
    <center>
      <% 
     //接收学生信息：学号，姓名，性别，出生日期，年级，电话
    request.setCharacterEncoding("UTF-8");
    String topic=new String(request.getParameter("topic").getBytes("UTF-8"),"UTF-8");
    String toname=new String(request.getParameter("toname").getBytes("UTF-8"),"UTF-8");
    String type=new String(request.getParameter("type").getBytes("UTF-8"),"UTF-8");
    String source=new String(request.getParameter("source").getBytes("UTF-8"),"UTF-8");
    String teacher=new String(request.getParameter("teacher").getBytes("UTF-8"),"UTF-8");
    String brief=new String(request.getParameter("brief").getBytes("UTF-8"),"UTF-8");
    String majrequest=new String(request.getParameter("majrequest").getBytes("UTF-8"),"UTF-8");
    String sturequest=new String(request.getParameter("sturequest").getBytes("UTF-8"),"UTF-8");
    
    //连接数据库进行添加操作 
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection conn=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110");
    //3.创建Statement
    Statement stmt = conn.createStatement();
    Statement sm=conn.createStatement();
    
    ResultSet rs=sm.executeQuery("select * from 题目表    where 题目名称='"+toname+"'");
    if(rs.next())
    {
    	out.print("<script language = 'javaScript'> alert('修改成功');</script>");
    //修改
    stmt.executeUpdate("update 题目表   set 题目编号="+topic+",题目类型="+type+",课题来源="+source+",指导老师="+teacher+",内容简介="+brief+",专业要求="+majrequest+",学生要求="+sturequest+" where 题目名称='"+toname+"'");
    }
    else
    {
    	out.print("<script language = 'javaScript'> alert('修改失败,课题不存在');</script>");
    }
    %>
    <strong>课题信息修改</strong>
    <div style="margin-top:20px;">
    <input type="button" value="返回继续修改" onclick="window.location.href='proalter.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;">
    <input type="submit" value="返回首页" onclick="window.location.href='sysselect.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    </center>
    

</body>
</html>