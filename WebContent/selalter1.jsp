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
    <hr>
    <center>
    <h1>选题修改</h1>
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
    
    ResultSet rs=sm.executeQuery("select * from 选题表    where 姓名='"+seename+"'");
    //修改
    if(rs.next())
    {
    stmt.executeUpdate("update 选题表   set 题目编号="+seid+",题目名称="+sename+ ",学号="+seeid+",性别="+sesex+",专业="+semajor+",审核="+check+" where 姓名='"+seename+"'");
    out.print("<script language = 'javaScript'> alert('修改成功');</script>");
    }
    else
    {
    	out.print("<script language = 'javaScript'> alert('修改失败，该用户不存在');</script>");
    }
    %>
     <div style="margin-top:20px;">
    <input type="submit" value="返回查询验证" onclick="window.location.href='selqurey.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;">
    <input type="submit" value="返回继续修改" onclick="window.location.href='selalter.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;margin-bottom:165px;">
    <input type="button" value="返回首页" onclick="window.location.href='teaselect.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
     </center>

</body>
</html>