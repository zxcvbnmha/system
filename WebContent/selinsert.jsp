<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
    
    <title>insert</title>
    
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
<% 
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection conn=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost ;DatabaseName=thesis","sa","19961110");
%>
    <center>
    <strong>选题信息添加输入：</strong>
    <div>
    <hr>
    <form action="selinsert1.jsp" method="post">
    <div style="margin-left:-50px;margin-top:-50px" >
            题目编号：<input type="text" name="seid"><br>
            题目名称：<input type="text" name="sename"><br>
            学&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" name="seeid"><br>
            姓&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="seename"><br>
            性&nbsp;&nbsp;&nbsp;&nbsp;别：<input type="text" name="sesex"><br>
           专&nbsp;&nbsp;&nbsp;&nbsp;业：<input type="text" name="semajor"><br>
           审&nbsp;&nbsp;&nbsp;&nbsp;核：<input type="text" name="check"><br>
    </div>
  
    
    <input type="submit" value="添加"  onclick="window.location.href='selinsert1.jsp'"
           style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    <input type="reset" value="重置"    onclick="window.location.href='selinsert.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
   
    </form>
    </div>
    </center>
  </body>
</html>