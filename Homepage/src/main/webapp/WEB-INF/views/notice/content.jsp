<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>STAM</title>
<link rel="stylesheet" href="resources/static/plugins/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" href="resources/static/css/common.css">
<link rel="stylesheet" href="resources/static/css/style.css">
<link rel="stylesheet" href="resources/static/css/notice/content.css">
<script src="https://kit.fontawesome.com/070c967850.js"crossorigin="anonymous"></script>
<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>

</head>
<body>
<div class="wrapper" id="mainWrapper">
 <header class="header item">
    <h1 class="logo"><a href="main"><img src="resources/static/images/logo.png" alt="STAM"></a></h1>
    <button class="btn_nav mo">
      <span></span><span></span><span></span>
    </button>
    <button class="btn_back mo"></button>
    <nav class="navi_wrap">
				<c:if test="${level != 1 }">
					<ul class="navi">
						<li><a href="intro" class="depth1">ABOUT</a>
							<ul class="depth2">
								<li><a href="intro">Intro + Vision & Business</a></li>
								<li><a href="about_History">History</a></li>
								<li><a href="organizationChart">Organization Chart</a></li>
								<li><a href="withClient">With CLIENT</a></li>
							</ul></li>
						<li><a href="portfolio_2021" class="depth1">IT portfolio</a>
							<ul class="depth2">
								<li class="on"><a href="portfolio_2021">2021</a></li>
								<li><a href="portfolio_2020">2020</a></li>
								<li><a href="portfolio_2019">2019</a></li>
								<li><a href="portfolio_2018">2018</a></li>
								<li><a href="portfolio_2017">2017</a></li>
								<li><a href="portfolio_2016">-2016</a></li>
							</ul></li>
						<li><a href="brand" class="depth1">Brand</a>
							<ul class="depth2">
								<li><a href="brand">Brand</a></li>
								<li><a href="brand_Promotion">Promotion</a></li>
								<li><a href="brand_Edit">Edit</a></li>
							</ul></li>
						<li><a href="solution_Adrive" class="depth1">SOLUTION</a>
							<ul class="depth2">
								<li><a href="solution_Adrive">A.Drive</a></li>
								<li><a href="solution_ST_framework">ST Framework</a></li>
								<li><a href="solution_System1">통합 SNS 관리 시스템</a></li>
								<li><a href="solution_System2">구간별 암호화 시스템</a></li>
							</ul></li>
						<li><a href="login" class="depth1 on">ManageMent</a>
							<ul class="depth2">
								<li><a href="login">Login</a></li>
								<li class="on"><a href="notice">Notice</a></li>
							</ul></li>

					</ul>
				</c:if>
				<c:if test="${level == 1 }">
					<ul class="navi">
						<li><a href="#" class="depth1">ABOUT</a><a href="#"
							class="depth1" class="icon-left-padding"><i
								class="far fa-edit"></i></a>
							<ul class="depth2">
								<li><a href="intro">Intro + Vision & Business</a></li>
								<li><a href="about_History">History</a></li>
								<li><a href="organizationChart">Organization Chart</a></li>
								<li><a href="withClient">With CLIENT</a></li>
							</ul></li>
						<li><a href="#" class="depth1">IT portfolio</a><a
							class="depth1"><i class="far fa-edit"></i></a>
							<ul class="depth2">
								<li><a href="portfolio_2021">2021</a></li>
								<li><a href="portfolio_2020">2020</a></li>
								<li><a href="portfolio_2019">2019</a></li>
								<li><a href="portfolio_2018">2018</a></li>
								<li><a href="portfolio_2017">2017</a></li>
								<li><a href="portfolio_2016">-2016</a></li>
							</ul></li>
						<li><a href="#" class="depth1">Brand</a><a class="depth1"><i
								class="far fa-edit"></i></a>
							<ul class="depth2">
								<li><a href="brand">Brand</a></li>
								<li><a href="brand_Promotion">Promotion</a></li>
								<li><a href="brand_Edit">Edit</a></li>
							</ul></li>
						<li><a href="#" class="depth1">SOLUTION</a><a class="depth1"><i
								class="far fa-edit"></i></a>
							<ul class="depth2">
								<li><a href="solution_Adrive">A.Drive</a></li>
								<li><a href="solution_ST_framework">ST Framework</a></li>
								<li><a href="solution_System1">통합 SNS 관리 시스템</a></li>
								<li><a href="solution_System2">구간별 암호화 시스템</a></li>
							</ul></li>
						<li><a href="login" class="depth1 on">ManageMent</a>
							<ul class="depth2">
								<li><a href="logout">Logout</a></li>
								<li class="on"><a href="notice">Notice</a></li>
							</ul></li>
					</ul>
				</c:if>
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
          		<span class="notice_span">Notice Content</span>
         	<div class="notice_content_div">
	       		<table class="notice_table">
	       			<tr class="notice_content_tr ">
	       				<td class="notice_content_td" colspan="2">${ndto.noticeTitle}</td>	
	       		
	       			</tr>
	       			<tr class="notice_content_tr ">
	       		
	       				<td class="notice_td_day notice_content_td"colspan="2">${ndto.noticeDay }</td>
	       			</tr>
	       			<tr>
	      			 	
	       				<td colspan="2" class="notice_content_td notice_content_textarea"><pre class="notice_content_pre">${ndto.noticeContents}</pre></td>	
	       			</tr>
	       			<tr>
		       				<td class="notice_btn_td">
		       		<c:choose>
		       			<c:when test="${level == 1}">
			       		
			       			<div  class="notice_flex_insert">
				       			<a href="update?noticeNum=${ndto.noticeNum }" class="notice_btn_a"><span class="notice_btn_span">수정</span></a>
				       		</div>
				       
				       
				       		<div  class="notice_flex_insert">
				  		     	<a href="delete?noticeNum=${ndto.noticeNum }" class="notice_btn_a"><span class="notice_btn_span">삭제</span></a>
				  		     </div>
				  		 
				  		   
				  		     <div  class="notice_flex_insert">
				  		     	<a href="notice" class="notice_btn_a"><span class="notice_btn_span">목록</span></a>
				  		     </div>
				  		  
			  		     </c:when>
			  		    
			  		     <c:otherwise>
			  	
				  		     <div  class="notice_btn_otherwise">
				  		     	<a href="notice" class="notice_btn_a"><span class="notice_btn_span">목록</span></a>
				  		     </div>
			  		  
			  		     </c:otherwise>
			  		 
			       	</c:choose>
		       		</td>
		       		</tr>
	       		</table>
       		</div>
       		
          </div>

      </div><!-- //swiper-wrapper -->
      <div class="swiper-pagination"></div>
    </div><!-- //swiper-container -->

  </div><!-- //container -->

</div>
</div>


</body>

</html>