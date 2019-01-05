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
    String i=new String(request.getParameter("sid").getBytes("UTF-8"),"UTF-8");
    String u=new String(request.getParameter("sname").getBytes("UTF-8"),"UTF-8");
    String s=new String(request.getParameter("sex").getBytes("UTF-8"),"UTF-8");
    String y=new String(request.getParameter("major").getBytes("UTF-8"),"UTF-8");
    String b=new String(request.getParameter("class").getBytes("UTF-8"),"UTF-8");
    String d=new String(request.getParameter("tel").getBytes("UTF-8"),"UTF-8");
    String f=new String(request.getParameter("email").getBytes("UTF-8"),"UTF-8");
    String g=new String(request.getParameter("remark").getBytes("UTF-8"),"UTF-8");
    //连接数据库进行添加操作 
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection conn=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110");
    //3.创建Statement
    Statement stmt = conn.createStatement();
    if(u.equals(""))
    {
    	out.print("<script language = 'javaScript'> alert('用户名不能为空');</script>");
    }
    else
    {
    //添加
    out.print("<script language = 'javaScript'> alert('添加成功');</script>");
    stmt.executeUpdate("insert into 学生信息表        values('"+i+"','"+u+"','"+s+"','"+y+"','"+b+"','"+d+"','"+f+"','"+g+"')");
    }
   
    %>
    <strong>学生信息添加</strong>
    <div style="margin-top:20px;">
    <input type="submit" value="返回查询验证" onclick="window.location.href='stuqurey.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;">
    <input type="button" value="返回继续添加" onclick="window.location.href='stuinsert.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;">
    <input type="submit" value="返回首页" onclick="window.location.href='stuselect.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    </center>

</body>
</html>