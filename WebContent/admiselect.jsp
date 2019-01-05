<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>毕业设计管理系统</title>
<style>
body {
    margin: 0;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 25%;
    background-color: #f1f1f1;
    position: fixed;
    height: 100%;
    overflow: auto;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
</style>
</head>
<body>
    <ul>
    <li><a class="active" href="#home">主页</a></li>
    <li><a href="usealter.jsp" > 一.用户信息修改  </a></li>
    <li><a href="usedelete.jsp" > 二.用户信息删除</a></li>
    <li><a href="login.jsp"> 六.退出   </a></li>
    </ul>
    <div style="margin-left:25%;padding:1px 16px;height:1000px;">
    <h2>毕业设计管理系统</h2>
    <h3>Graduation design management system</h3>
    
</div>
</body>
</html>