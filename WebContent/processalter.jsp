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
    width: 1000px;
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
    <hr>
    <strong>毕业设计进程信息修改：</strong>
    <form action="processalter1.jsp" method="post">
    <div style="margin-left:-50px;margin-top:-50px" > 
            任务&nbsp;&nbsp;书：<input type="text" name="ptask" style="height:200px; width:800px"><br>
            文献综述：<input type="text" name="psum" style="height:200px; width:800px"><br>
            开题报告：<input type="text" name="preport" style="height:200px; width:800px"><br>
            原文翻译：<input type="text" name="ptranslate" style="height:200px; width:800px"><br>
            中期检查：<input type="text" name="ptest" style="height:200px; width:800px"><br>
           论文审评：<input type="text" name="pexamine" style="height:200px; width:800px"><br>
           导师意见：<input type="text" name="popinion" style="height:200px; width:800px"><br>
           论文答辩：<input type="text" name="pdebate" style="height:200px; width:800px"><br>
           姓&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="pname" style="height:45px; width:100px"><br>
    </div>
   
    <input type="submit" value="修改" onclick="window.location.href='processalter1.jsp'"
           style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>  
    <input type="reset" value="重置"  onclick="window.location.href='processalter.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </form>
    </center>

</body>
</html>