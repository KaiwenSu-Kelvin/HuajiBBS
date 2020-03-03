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
	<p>我是帖子删除页面</p>
	<c:forEach items="${posts }" var="post">
		<h3>
			<div>${post.title }</div>
			<div>
				状态:
				<c:choose>
					<c:when test="${post.visible == 1}">
						正常
						<a href="http://localhost:8101/HuajiBBS/ban/banPost?pid=${post.id }"><button>删帖</button></a>
					</c:when>
					<c:when test="${post.visible == 0}">
						删除
						<a href="http://localhost:8101/HuajiBBS/ban/unbanPost?pid=${post.id }"><button>恢复</button></a>
					</c:when>
				</c:choose>
			</div>
		</h3>
	</c:forEach>
</body>
</html>