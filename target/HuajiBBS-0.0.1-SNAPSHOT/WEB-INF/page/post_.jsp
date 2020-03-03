<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>我是帖子页面</p>
	-----------------
	<h2>${post.title }</h2>
	<h1>${post.content }</h1>
	<c:forEach items="${post.floors }" var="floor">
		<h3>${floor.content }</h3>
	</c:forEach>
	
	
	
</body>
</html>