<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#manager_db_id{
		display:none;
	}
</style>
<link rel="stylesheet" href="resources/static/css/login/login.css">
</head>
<body>
<div id="container">
	<header class="header item">
		<h1 class="logo"><a href="login"><img src="resources/static/images/logo.png" alt="STAM"></a></h1>
	</header>
		
	<div id="login_div">
		<form id="login_form" action="./loginChk" method="post">
			<h2>Login</h2>
		    <div id="div_id">
		    	<input id="manager_db_id" name="manager_db_id" value="">
		    	<input id="manager_id" name="manager_id" placeholder="관리자 아이디를 입력하세요">
		    </div>
		    <div id="div_pw">
		    	<input type="password" id="manager_pw" name="manager_pw" placeholder="관리자 비밀번호를 입력하세요"> <br>
		    </div>
		    <c:if test="${message == 'error'}">
				<div class="fail_message">아이디 또는 비밀번호가 일치하지 않습니다.</div>
			</c:if>
		    <button id="login_btn">Login</button>
		</form>
	</div>
</div>
</body>
</html>