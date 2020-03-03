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
	<p>我是子版块页|帖子展示 </p>
	---------------------------
	<h1> ${section.name}</h1>
	<c:forEach items="${section.posts}" var="post">
		<h5>
			<a href="http://localhost:8101/HuajiBBS/post?postId=${post.id }">${post.title}</a>
		</h5>	
	</c:forEach>
</body>
</html>