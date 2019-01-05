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
    <center>
    <h2>学生论文审核查询</h2>
    <div>
    <hr>
    <form action="processcheck1.jsp" method="post">
    <div style="margin-left:-50px;margin-top:-50px" >
    <p style="display:inline; font-size:16px">用&nbsp;&nbsp;户&nbsp;&nbsp;名:</p>
        <input type="text" name="prousername"
          	   style="height:25px; width:150px"/>
    </div>
          	   
    <input type="submit" value="查询" onclick="window.location.href='processcheck1.jsp'"
    	   style="width:120px; height:30px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
 
    <input type="button" value="返回" onclick="window.location.href='stuselect.jsp'"
    	   style="width:120px; height:30px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </form>
    </div>
    </center>


</body>
</html>