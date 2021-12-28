<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0,shrink-to-fit=no,maximum-scale=1.0,minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>STAM</title>
<link rel="stylesheet" href="resources/static/plugins/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" href="resources/static/css/common.css">
<link rel="stylesheet" href="resources/static/css/style.css">
<link rel="stylesheet" href="resources/static/css/notice/notice.css">
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>

</head>
 <body class="sb-nav-fixed">
<div class="wrapper" id="mainWrapper">
 <header class="header item">
    <h1 class="logo"><a href="main"><img src="resources/static/images/logo.png" alt="STAM"></a></h1>
    <button class="btn_nav mo">
      <span></span><span></span><span></span>
    </button>
    <button class="btn_back mo"></button>
    <nav class="navi_wrap">
				<jsp:include page="../customer_menu.jsp"/>
				<jsp:include page="../manager_menu.jsp"/>
			</nav>
  </header>
  
   <div class="container item">

    <div class="swiper-container">
      <div class="swiper-wrapper">

        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">HOME</span>
        
          </div>
          <div class="notice_div">
			<span class="notice_span">IT Portfolio</span>
       		<table class="notice_table">
       		<tr> <!-- 검색행 -->
       		 
		     
		     </tr>
	
       			<tr class="notice-tr top-tr">
       				<td class="notice_th td_num">번호</td>
       				<td class="notice_th td_mangager">회사명</td>
       				<td class="notice_th td_mangager">제품명</td>
       				<td class="notice_th td_mangager">선택</td>
       			</tr>
       		<c:choose>	
 			 <c:when test="${nextNum == 1 }">
       		 	<tr class="notice_tr"> 
       		 		<td colspan="5" class="no_notice_page"> 작성된 공지사항이 없습니다.</td>
       		 	</tr>
       		 </c:when>
       		  <c:otherwise>
       		  	<c:forEach var="pDto" items="${list}">
	       			<tr class="notice_tr">
	       				<td class="notice_td">${pDto.productCode}</td>
						<td class="notice_td">${pDto.companyName}</td>
						<td class="notice_td"><a href="product_content?productCode=${pDto.productCode}">${pDto.productName}</a></td>
						<td class="notice_td"><input type="checkbox"></input></td>
	       			</tr>
       			</c:forEach>
       		  </c:otherwise>
       		 </c:choose>
			<tr>	
				<td><a href="product_insert">추가</a></td>
				<td><a href="product_delete">삭제</a></td>
			</tr>
       		</table>
       		
          </div>

      </div><!-- //swiper-wrapper -->
      <div class="swiper-pagination"></div>
    </div><!-- //swiper-container -->

  </div><!-- //container -->

</div>
</div>
	
</body>

<!--   		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script> -->
        
</html>