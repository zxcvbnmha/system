<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.biaoti{
	font-family: 微软雅黑;
	font-size: 26px;
	font-weight: bold;
	border-bottom:1px dashed #CCCCCC;
	color: #255e95;
}
<title>查询</title>
</style>
</head>

<body>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
Connection conn=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost ;DatabaseName=thesis","sa","19961110");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from 题目表  ");
//out.println(conn.toString());
%>

<table width="100%" border="1" cellspacing="0" cellpadding="0"  align="center">
  <tr>
    <td align="center" class="biaoti" height="60">题目表</td>
  </tr>
  <tr>
    <td align="right" height="25">2018-01-02---2018-05-02</td>
  </tr>
</table>

<table width="100%" border="1" cellspacing="1" cellpadding="4" bgcolor="#cccccc" class="tabtop13" align="center">
    <tr>
        <th>题目编号</th>
        <th>题目名称</th>
        <th>题目类型</th>
        <th>课题来源</th>
        <th>指导老师</th>
        <th>内容简介</th>
        <th>专业要求</th>
        <th>学生要求</th>
        <th>是否选择</th>
    </tr>

<%while(rs.next()){%>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
        <td><%=rs.getString(8)%></td>
        <TD><input type='button' value='是' onclick="window.location.href='selinsert.jsp'" /></TD>
    </tr>
    <%}%>

</body>
</html>