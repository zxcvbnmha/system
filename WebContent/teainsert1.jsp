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
    String tsid=new String(request.getParameter("tsid").getBytes("UTF-8"),"UTF-8");
    String tsname=new String(request.getParameter("tsname").getBytes("UTF-8"),"UTF-8");
    String tsex=new String(request.getParameter("tsex").getBytes("UTF-8"),"UTF-8");
    String tdate=new String(request.getParameter("tdate").getBytes("UTF-8"),"UTF-8");
    String teducation=new String(request.getParameter("teducation").getBytes("UTF-8"),"UTF-8");
    String tpost=new String(request.getParameter("tpost").getBytes("UTF-8"),"UTF-8");
    String tdirection=new String(request.getParameter("tdirection").getBytes("UTF-8"),"UTF-8");
    String ttel=new String(request.getParameter("ttel").getBytes("UTF-8"),"UTF-8");
    String temail=new String(request.getParameter("temail").getBytes("UTF-8"),"UTF-8");
    //连接数据库进行添加操作 
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection conn=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110");
    //3.创建Statement
    Statement stmt = conn.createStatement();
    if(tsname.equals(""))
    {
    	out.print("<script language = 'javaScript'> alert('用户名不能为空');</script>");
    }
    else
    {
    //添加
    out.print("<script language = 'javaScript'> alert('添加成功');</script>");
    stmt.executeUpdate("insert into 指导教师信息表        values('"+tsid+"','"+tsname+"','"+tsex+"','"+tdate+"','"+teducation+"','"+tpost+"','"+tdirection+"','"+ttel+"','"+temail+"')");
    }
   
    %>
    <strong>教师信息添加</strong>
    <div style="margin-top:20px;">
    <input type="submit" value="返回查询验证" onclick="window.location.href='teaqurey.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;">
    <input type="button" value="返回继续添加" onclick="window.location.href='teainsert.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;">
    <input type="submit" value="返回首页" onclick="window.location.href='teaselect.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    </center>

</body>
</html>