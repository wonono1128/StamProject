<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach items="${member }" var="test">
	${test.manager_num }
	${test.manager_id }
	${test.manager_pw }
	${test.manager_name }
</c:forEach>


 <h2>로그인</h2>
<form name="form1" method="post" action="member_test">
<table border="1" width="400px">
<tr>
 <td>아이디</td>
 <td><input id="userid" name="userid"></td>
</tr>
<tr>
 <td>비밀번호</td>
 <td><input type="password" id="passwd" name="passwd"></td>
</tr>
<tr>
 <td colspan="2" align="center">
 <button type="button" id="btnLogin">로그인 </button>
 </td>
</tr>
</table>
</form>
</body>
</html>