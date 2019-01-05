<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@ page import="java.util.*" %>
<%@ page import="javax.swing.JOptionPane" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>毕业设计管理系统</title>
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
    <strong>用户信息修改：</strong>
    <div>
    <hr>
    <form action="usealter1.jsp" method="post">
    <div style="margin-left:-50px;margin-top:-50px" > 
            用户&nbsp;&nbsp;&nbsp;号：<input type="text" name="uid"><br>
            用户&nbsp;&nbsp;&nbsp;名：<input type="text" name="uname"><br>
            密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="text" name="upassword"><br>
            用户类别：<input type="text" name="ucate"><br>
    </div>  
    <input type="submit" value="修改" onclick="window.location.href='usealter1.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    <input type="reset" value="重置"  onclick="window.location.href='usealter.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </form>
    </div>
    </center>

</body>
</html>