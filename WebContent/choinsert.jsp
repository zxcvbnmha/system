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
    String i=new String(request.getParameter("sid").getBytes("ISO8859_1"),"UTF-8");
    String u=new String(request.getParameter("sname").getBytes("ISO8859_1"),"UTF-8");
    String s=new String(request.getParameter("sex").getBytes("ISO8859_1"),"UTF-8");
    String y=new String(request.getParameter("major").getBytes("ISO8859_1"),"UTF-8");
    String b=new String(request.getParameter("class").getBytes("ISO8859_1"),"UTF-8");
    String d=new String(request.getParameter("tel").getBytes("ISO8859_1"),"UTF-8");
    String f=new String(request.getParameter("email").getBytes("ISO8859_1"),"UTF-8");
    String g=new String(request.getParameter("remark").getBytes("ISO8859_1"),"UTF-8");
    //连接数据库进行添加操作 
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection conn=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110");
    //3.创建Statement
    Statement stmt = conn.createStatement();
    
    //添加
    stmt.executeUpdate("insert into 学生信息表        values('"+i+"','"+u+"','"+s+"','"+y+"','"+b+"','"+d+"','"+f+"','"+g+"')");
   
    %>
    <strong>学生信息添加</strong>
    <hr>
    <a href="connect.jsp"> 返回查询验证 </a>
    <br><br>
    <a href="insert.jsp"> 返回继续添加 </a>
    <br><br>
    <a href="login.jsp"> 返回首页 </a>

</body>
</html>