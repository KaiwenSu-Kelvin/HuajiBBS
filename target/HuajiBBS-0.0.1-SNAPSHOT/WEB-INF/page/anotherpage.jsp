<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

    <div>
        <strong> ${sessionScope.user.name}!!!!! </strong>
        <strong> ${sessionScope.user.email}!!!!! </strong>
        <strong> ${sessionScope.user.gender}!!!!! </strong>
        <strong> ${sessionScope.user.level}!!!!! </strong>
        <strong> ${sessionScope.user.hobby}!!!!! </strong>
    </div>
    <form action="${pageContext.request.contextPath}/outLogin">
        <table>
            <tr>
                <td><input type="submit" value="退出登录" ></td>
            </tr>
        </table>
    </form>
</body>
</html>