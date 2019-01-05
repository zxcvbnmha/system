<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd 

">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
* {
    box-sizing: border-box;
}
.header {
    border: 1px solid black;
    padding: 15px;
}
.menu {
    width: 25%;
    float: left;
    padding: 15px;
    border: 1px solid black;
}
.main {
    width: 75%;
    float: left;
    padding: 15px;
    border: 1px solid black;
}
</style>
</head>

<body>
<%Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
Connection ct=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110");  %>

<div class="header">
<h1>毕业设计管理系统</h1>
</div>

<div class="main">

<div style="margin-top:5px;margin-bottom:5px">
<img src="/thesissystem/image/1.jpg" width="960" height="500" >
</div>
</div>

<div class = "menu">
<ul>
<form action="loginto.jsp" method="post">
<div style="margin-top:100px">
    <p style="display:inline; font-size:16px">用&nbsp;&nbsp;户&nbsp;&nbsp;名:</p>
        <input type="text" name="username"
          	   style="height:25px; width:150px"/>
<div style="margin-top:20px">
    <p style="display:inline; font-size:16px">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</p>
        <input type="password" name="password"
        	   style="height:25px; width:150px"/>
</div>
<div style="margin-top:20px">
    <p style="display:inline; font-size:16px">用户&nbsp;&nbsp;类别:</p>
        <select id="select" style="height:25px; width:150px" name="userclass">
            <option value="学生">学生</option>
            <option value="教师">教师</option>
            <option value="管理员">管理员</option>
            <option value="系统管理员">系统管理员</option>
        </select>
</div>
<div style="margin-top:20px;">
    <input type="submit" value="登录" onclick="window.location.href='loginto.jsp'"
    	   style="width:120px; height:30px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
</div>
<div style="margin-top:20px;margin-bottom:165px;">
    <input type="button" value="注册" onclick="window.location.href='register.jsp'"
    	   style="width:120px; height:30px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
</div>
</form>
</ul>
</div>

</body>
</html>
