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
    <li><a href="selallqurey.jsp"> 一.学生选题查询   </a><li> 
    <li><a href="teaqurey.jsp"> 二.教师信息查询 </a></li>
    <li><a href="processalter.jsp"> 三.毕业设计进程审批 </a></li>
    <li><a href="selalter.jsp"> 四.课题审批 </a></li>
    <li><a href="teaalter.jsp"> 五.教师信息修改</a></li>	
    <li><a href="teainsert.jsp"> 六.补全个人信息</a></li>
    <li><a href="login.jsp"> 七.退出   </a></li>
   </ul>
    <div style="margin-left:25%;padding:1px 16px;height:1000px;">
    <h2>毕业设计管理系统</h2>
    <h3>Graduation design management system</h3>
    <p>通知：各位新注册的用户请先补全个人信息再进行操作！！！</p>
    <p>毕业设计需对一个即将进行开发的项目的一部份进行系统分析(需求分析，平台选型，分块，设计部分模块的细化)。这类论文的重点是收集整理应用项目的背景分析，需求分析，平台选型，总体设计(分块)，设计部分模块的细化，使用的开发工具的内容。</p>
    <p>关于2017-2018-1学期学生评教系统开放的通知</p>
    <p>关于2017-2018-1学期退补选及重修选课通知</p>
    <p>关于2017-2018-1学期大学四六级选课通知</p>
    <p>实践环节必修认识实习</p>
    <p>专业必修</p>
    <p>毕业设计文献</p>
    <p>专业选修</p>
</div>
</body>
</html>