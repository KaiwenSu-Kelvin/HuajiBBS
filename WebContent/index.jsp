<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>我是默认首页</p>
	
	<p>${sessionScope.user}</p>
	<p>${sessionScope.admin}</p>
	
	<p><a href="http://localhost:8101/HuajiBBS/index">跳转到主板块页</a></p>
	<p><a href="http://localhost:8101/HuajiBBS/ban/user">跳转到用户封禁页面</a></p>
	<p><a href="http://localhost:8101/HuajiBBS/ban/post">跳转到帖子删除页面</a></p>
	<p><a href="http://localhost:8101/HuajiBBS/login">登录</a></p>
	<p><a href="http://localhost:8101/HuajiBBS/outLogin">用户注销</a></p>
	<p><a href="http://localhost:8101/HuajiBBS/checkAdminLogin">后台管理</a></p>
	<p><a href="http://localhost:8101/HuajiBBS/adminOutLogin">管理员注销</a></p>
	
</body>
</html>