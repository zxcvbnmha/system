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
 <style>
div {
    background-color: lightgrey;
    width: 300px;
    border: 25px solid gray;
    padding: 25px;
    margin: 25px;
}
</style>
</head>
<body>
<center>
   <strong>用户注册：</strong>
    <div>
    <hr>
    <form action="register1.jsp" method="post">
    <div style="margin-left:-50px;margin-top:-50px" >
          输入编号:<input type="text" name="regnumber"><br>
          输入姓名:<input type="text" name="regusername"><br>
          输入密码:<input type="text" name="regpassword1"><br>
          确认密码:<input type="text" name="regpassword2"><br> 
    <p style="display:inline; font-size:16px">用户类别:</p>
    <select id="select" style="height:25px; width:150px" name="reguserclass">
        <option value="学生">学生</option>
        <option value="教师">教师</option>
    </select>
    </div>

    <input type="submit" value="确认" onclick="window.location.href='register1.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    <input type="button" value="返回" onclick="window.location.href='login.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>

</form>
</div>
</center>
      
</body>
</html>