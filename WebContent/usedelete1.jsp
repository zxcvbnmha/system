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
<%
  //接收学生姓名
    String u=new String(request.getParameter("usename").getBytes("ISO8859_1"),"UTF-8"); 
    
    //连接数据库进行删除操作 
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection ct=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110"); 
    //3.创建Statement
    Statement sm=ct.createStatement();
    Statement st=ct.createStatement();
    
    ResultSet rs=st.executeQuery("select * from 用户表    where 用户名='"+u+"'");
    
    //4.删除
    int flag = 1;
    if(rs.next()){
    sm.executeUpdate("delete  from 用户表    where 用户名='"+u+"'");
    }
    else{
    flag = 0;
   }
    if(flag == 1){
     %>
     <center>
    <% out.print("<script language = 'javaScript'> alert('删除成功');</script>");%>
    <div style="margin-top:20px;">
    <input type="submit" value="返回继续删除" onclick="window.location.href='usedelete.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;margin-bottom:165px;">
    <input type="button" value="返回主页" onclick="window.location.href='login.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    </center>
   
    <%}
    else{%>
    <center>
    <% out.print("<script language = 'javaScript'> alert('删除失败，该用户不存在');</script>");%>
    <div style="margin-top:20px;">
    <input type="submit" value="返回继续删除" onclick="window.location.href='usedelete.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;margin-bottom:165px;">
    <input type="button" value="返回主页" onclick="window.location.href='sysselect.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    </center>
   
    <%} %>
     

</body>
</html>