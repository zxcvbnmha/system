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
</head>
<body>
    
    
    <center>
    <% 
    //接收学生姓名和学号
    String u=new String(request.getParameter("stuname").getBytes("ISO-8859-1"),"UTF-8");
    String m=new String(request.getParameter("stumajor").getBytes("ISO-8859-1"),"UTF-8");
    String c=new String(request.getParameter("stuclass").getBytes("ISO-8859-1"),"UTF-8");

    String iu;
    //连接数据库
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection ct=java.sql.DriverManager.getConnection("jdbc:sqlserver://localhost;DatabaseName=thesis","sa","19961110"); 
    //3.创建Statement
    Statement sm=ct.createStatement();
    String sql=new String();
    
    //查询出需要显示的记录
    
	
    if(u.equals(""))
    {
    	if(m.equals(""))
    	{
    		if(c.equals(""))
    		{
    			out.print("<script language = 'javaScript'> alert('查询信息为空');</script>");
    		}
    		else
    		{
    			sql="select * from 学生信息表    where 班级='"+c+"'";
    		}
    		
    	}
    	else
    	{
    		if(c.equals(""))
    		{
    			sql="select * from 学生信息表    where 专业='"+m+"'";
    		}
    		else
    		{
    			sql="select * from 学生信息表    where 专业='"+m+"' and where 班级='"+c+"'";
    		}
    		
    	}
    	
    }
    else
    {
    	if(m.equals(""))
    	{
    		if(c.equals(""))
    		{
    			sql="select * from 学生信息表    where 姓名='"+u+"'";
    		}
    		else
    		{
    			sql="select * from 学生信息表    where 班级='"+c+"' and 姓名='"+u+"'";
    		}
    		
    	}
    	else
    	{
    		if(c.equals(""))
    		{
    			sql="select * from 学生信息表    where 专业='"+m+"' and 姓名='"+u+"' ";
    		}
    		else
    		{
    			sql="select * from 学生信息表    where 专业='"+m+"' and  班级='"+c+"' and 姓名='"+u+"'";
    		}
    		
    	}
    }
    //显示记录
     ResultSet rs=sm.executeQuery(sql);
    %>
    <table  width="100%" border="1" cellspacing="1" cellpadding="4" >
    <h1>学生信息列表</h1>
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>专业</td>
        <td>班级</td>
        <td>电话</td>
        <td>邮箱</td>
        <td>备注</td>
    </tr>
    <% while(rs.next()) {%>
    <tr>
        <td><%=rs.getString(1)%> </td> 
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3)%></td> 
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td> 
        <td><%=rs.getString(6)%></td> 
        <td><%=rs.getString(7)%></td> 
        <td><%=rs.getString(8)%></td>   
    </tr> 
     <%}
     %>
     </table>
     <div style="margin-top:20px;">
    <input type="submit" value="返回重新查询" onclick="window.location.href='qurey.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
    <div style="margin-top:20px;margin-bottom:165px;">
    <input type="button" value="返回主页" onclick="window.location.href='stuselect.jsp'"
    	   style="width:120px; height:35px;padding:5px 15px; border-radius:2px; border:1px solid;"/>
    </div>
     </center>

</body>
</html>