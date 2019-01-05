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
    
    <title>delete</title>
    
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
    <h1>教师信息删除 </h1>
    <div>
    <hr>
    <form action="teadelete1.jsp" method="post">
    <div style="margin-left:-50px;margin-top:-50px" >  
    <p style="display:inline; font-size:16px">教师姓名:</p>
        <input type="text" name="teaname"
        	   style="height:25px; width:150px"/>
    </div>
     
    <input type="submit" value="删除" onclick="window.location.href='teadelete1.jsp"
           style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    <input type="reset" value="重置"  onclick="window.location.href='teadelete.jsp"
           style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </form>
    </div>
    </center>

</body>
</html>