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
	<p>我是首页|板块分类 </p>
	---------------------------

	<c:forEach items="${categories}" var="categorie">
		<h1>
		${categorie.name}
		</h1>
	
		<c:forEach items="${categorie.sections}" var="section">
			<h4>
				<a href="http://localhost:8101/HuajiBBS/section?sectionId=${section.id }">${section.name}</a>
			</h4>
		</c:forEach>
		
	</c:forEach>
	
	
	
	<%-- -------------------
	<c:forEach var="i" begin="1" end="10" step ="1">
		<p id = >主板块${i}</p>
	</c:forEach> --%>
</body>
</html>