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
    <strong>课题信息修改：</strong>
    <div>
    <hr>
    <form action="proalter1.jsp" method="post">
    <div style="margin-left:-50px;margin-top:-50px" > 
             题目编号：<input type="text" name="topic"><br>
            题目名称：<input type="text" name="toname"><br>
            题目类型：<input type="text" name="type"><br>
            课题来源：<input type="text" name="source"><br>
            指导老师：<input type="text" name="teacher"><br>
           内容简介：<input type="text" name="brief"><br>
            专业要求：<input type="text" name="majrequest"><br>
            学生要求：<input type="text" name="sturequest"><br>
    </div>
  
    <input type="submit" value="修改" onclick="window.location.href='proalter1.jsp"
           style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    <input type="reset" value="重置" onclick="window.location.href='proalter.jsp"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>        
     
    </form>
    </div>
    </center>

</body>
</html>