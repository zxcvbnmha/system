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
    //接收学生姓名和学号
    String u=new String(request.getParameter("stuname").getBytes("ISO-8859-1"),"UTF-8"); 
    //连接数据库
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection ct=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110"); 
    //3.创建Statement
    Statement sm=ct.createStatement();
    
    //查询出需要显示的记录
    
    ResultSet rs=sm.executeQuery("select * from 选题表    where 姓名='"+u+"'");
    
    //显示记录
    %>
    <table  width="100%" border="1" cellspacing="1" cellpadding="4" >
    <%if(rs.next()) {out.print("<script language = 'javaScript'> alert('查询成功');</script>");%>
    <h1>学生选题信息列表</h1>
    <tr><td>题目编号</td><td>题目名称</td><td>学号</td><td>姓名</td><td>性别</td><td>专业</td><td>审核</td></tr>
    <tr>
        <td><%=rs.getString(1)%> </td> 
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3)%></td> 
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td> 
        <td><%=rs.getString(6)%></td> 
        <td><%=rs.getString(7)%></td>   
    </tr> 
     </table>
     <%} 
     else
     {
    	 out.print("<script language = 'javaScript'> alert('查询失败，用户不存在');</script>");
     }%>
     </table>
     <div style="margin-top:20px;">
    <input type="submit" value="返回重新查询" onclick="window.location.href='selqurey.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;margin-bottom:165px;">
    <input type="button" value="返回主页" onclick="window.location.href='sysselect.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    </center>

</body>
</html>