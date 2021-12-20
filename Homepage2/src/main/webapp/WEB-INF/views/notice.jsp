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
<link rel="stylesheet" href="resource/plugins/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" href="resource/css/common.css">
<link rel="stylesheet" href="resource/css/style.css">
<link rel="stylesheet" href="resource/css/notice.css">
<script src="resource/js/jquery-3.2.1.min.js"></script>
<script src="resource/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resource/js/common.js"></script>



</head>
 <body class="sb-nav-fixed">
<div class="wrapper" id="mainWrapper">
 <header class="header item">
    <h1 class="logo"><a href="main"><img src="resource/images/logo.png" alt="STAM"></a></h1>
    <button class="btn_nav mo">
      <span></span><span></span><span></span>
    </button>
    <button class="btn_back mo"></button>
    <nav class="navi_wrap">
      <ul class="navi">
        <li>
          <a href="intro" class="depth1">ABOUT</a>
          <ul class="depth2">
            <li><a href="intro">Intro + Vision & Business</a></li>
            <li><a href="about_History">History</a></li>
            <li><a href="organizationChart">Organization Chart</a></li>
            <li><a href="withClient">With CLIENT</a></li>
          </ul>
        </li>
        <li>
          <a href="portfolio_2021" class="depth1">IT portfolio</a>
          <ul class="depth2">
            <li><a href="portfolio_2021">2021</a></li>
            <li><a href="portfolio_2020">2020</a></li>
            <li><a href="portfolio_2019">2019</a></li>
            <li><a href="portfolio_2018">2018</a></li>
            <li><a href="portfolio_2017">2017</a></li>
            <li><a href="portfolio_2016">-2016</a></li>
          </ul>
        </li>
        <li>
          <a href="brand" class="depth1">Brand</a>
          <ul class="depth2">
            <li><a href="brand">Brand</a></li>
            <li><a href="brand_Promotion">Promotion</a></li>
            <li><a href="brand_Edit">Edit</a></li>
          </ul>
        </li>
        <li>
          <a href="solution_Adrive" class="depth1">SOLUTION</a>
          <ul class="depth2">
            <li><a href="solution_Adrive">A.Drive</a></li>
            <li><a href="solution_ST_framework">ST Framework</a></li>
            <li><a href="solution_System1">통합 SNS 관리 시스템</a></li>
            <li><a href="solution_System2">구간별 암호화 시스템</a></li>
          </ul>
        </li>
        <li>
        	 <a href="notice" class="depth1">Notice</a>
        </li>
      </ul>
    </nav>
  </header>

  <div class="container item">

    <div class="swiper-container">
      <div class="swiper-wrapper">

        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">HOME</span>
        
          </div>
          <div class="notice-div">
			<span class="notice-span">Notice</span>
       		<table class="notice-table">
       		<tr> <!-- 검색행 -->
       		 
		      <td colspan="4" class="notice_select_td">  
		        <form method="post" action="notice" class="notice_select">
		                        선택
		             <select style="width:auto;" name="cla">
			             <option value="notice_title"> 제목 </option>
			             <option value="manager_name"> 작성자 </option>
			             <option value="notice_contents"> 내용 </option>            
		            </select>
		            검색어 <input type="text" style="width:auto;"name="sword">
		          <input type="submit" value="검색">
		        </form>
		      </td>
		     </tr>
	
       			<tr class="notice-tr top-tr">
       				<td class="notice-th td-num">번호</td>
       				<td class="notice-th td-mangager">작성자</td>
       				<td class="notice-th Td-Title">제목</td>
       				<td class="notice-th Td-Regdate">날짜</td>
       			</tr>
       		
       			<c:forEach var="ndto" items="${nlist}">
	       			<tr class="notice-tr">
	       				<td class="notice-td">${ndto.notice_num }</td>
	       				<td class="notice-td">${ndto.manager_name }</td>
	       				<td class="notice-td"><a href="content?notice_num=${ndto.notice_num }">${ndto.notice_title }</a></td>
	       				<td class="notice-td">${ndto.notice_day }</td>
	       			</tr>
       			</c:forEach>
       		 
<!-- 페이징 html -->
       			<tr class="notice_paging_tr">
			      <td colspan="3" align="center" >
			       <!-- 이전 페이지 이동 -->
			         <!-- 10페이지 이전 이동 시작 -->
			          <c:if test="${pstart != 1}">
			           <a href="notice?page=${pstart-1}&sword=${sword}"> << </a>
			          </c:if>
			          <c:if test="${pstart == 1}">
			           <<
			          </c:if>
			         <!-- 10페이지 이전 이동 끝 -->
			         
			         <!-- 1페이지 이전 이동 (현재페이지에서 1페이지 이전) -->
			         <c:if test="${page > 1}">
			          <a href="notice?page=${page-1}&sword=${sword}"> < </a>  
			         </c:if>
			         <c:if test="${page == 1}"> 
			          <      
			         </c:if>
			         <!-- 1페이지 이전 이동 끝 -->
			       <!-- 이전 페이지 이동 끝 -->
			       <c:forEach begin="${pstart}" end="${pend}" var="i">
			        <c:if test="${page == i}">
			         <a href="notice?page=${i}&sword=${sword}" style="color:red;"> ${i} </a>
			        </c:if>
			        <c:if test="${page != i}">
			         <a href="notice?page=${i}&sword=${sword}"> ${i} </a>
			        </c:if>
			       </c:forEach>
			       
			       <!-- 다음 페이지 이동 -->
			        <!-- 다음 1페이지 이동 -->
			        <c:if test="${page != pagecnt }">
			         <a href="notice?page=${page+1}&sword=${sword}"> > </a>
			        </c:if>
			        <c:if test="${page == pagecnt}"> 
			         >
			        </c:if>
			        <!-- 다음 1페이지 이동 끝 -->
			        
			        <!-- 다음 10페이지 이동 시작 -->
			        <c:if test="${pend != pagecnt }">
			         <a href="notice?page=${pend+1}&sword=${sword}"> >> </a>
			        </c:if>
			        <c:if test="${pend == pagecnt}">
			          >>
			        </c:if>
			        <!-- 다음 10페이지 이동 끝 -->
			       <!-- 다음 페이지 이동 끝 -->
			      </td>
			      <td class="notice_insert"><a href="insert" class="notice_insert_a"><span class="notice_insert_span">추가</span></a></td>
			    </tr>
<!-- 페이징 html 끝 -->
     
       		</table>
       		
          </div>

      </div><!-- //swiper-wrapper -->
      <div class="swiper-pagination"></div>
    </div><!-- //swiper-container -->

  </div><!-- //container -->

</div>
</div>


</body>
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
</html>