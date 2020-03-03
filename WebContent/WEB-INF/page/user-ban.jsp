<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>我是用户封禁页面</p>
	<c:forEach items="${users }" var="user">
		<h3>
			<div>${user.name }</div>
			<div>
				状态：
				<c:choose>
					<c:when test="${not empty user.unBanDate }">
						封禁至:<fmt:formatDate value="${user.unBanDate }" pattern="yyyy-MM-dd HH:mm:ss"/>
						<a href="http://localhost:8101/HuajiBBS/ban/unbanUser?uid=${user.id }"><button>解封</button></a>
    				</c:when>
					<c:when test="${empty user.unBanDate }">
						正常
						<a href="http://localhost:8101/HuajiBBS/ban/banUser?uid=${user.id }"><button>封禁</button></a>
				    </c:when>
				</c:choose>
			</div>
			
			
		</h3>
	</c:forEach>
</body>
</html>

<%-- 
<c:choose>
					<c:when test="${ post.visible  == 1}">
						正常
    				</c:when>
					<c:when test="${post.visible == 0  }">
						删除	
				    </c:when>
				</c:choose> --%>