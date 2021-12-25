<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
	layout:decorate="~{layout/default_layout}">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <title>Spring Boot Unknown Error PAGE</title>
    <!--/* 이 영역에 공통으로 사용할 css, js library를 선언한다. */-->
   	<link rel="stylesheet" href="resources/static/css/error/error.css">
   	<script src="resources/static/js/jquery-3.2.1.min.js"></script>
   	<script type="text/javascript" src="resources/static/js/error.js"></script>


</head>
<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Semi+Condensed:100,200,300,400" rel="stylesheet">
<body class="loading">
  <h1>Error Page</h1>
  <h2>Unexpected Error <b>:(</b></h2>
   <a href="main" class="go_main">
		  <h2 class="go_main_h2">Click Main</h2>
   </a>
  <div class="gears">
    <div class="gear one">
      <div class="bar"></div>
      <div class="bar"></div>
      <div class="bar"></div>
    </div>
    <div class="gear two">
      <div class="bar"></div>
      <div class="bar"></div>
      <div class="bar"></div>
    </div>
    <div class="gear three">
      <div class="bar"></div>
      <div class="bar"></div>
      <div class="bar"></div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="js/main.js" type="text/javascript"></script>
</body>

</html>