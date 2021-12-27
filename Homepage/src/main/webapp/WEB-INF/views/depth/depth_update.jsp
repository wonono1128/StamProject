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
<link rel="stylesheet" href="resources/static/css/depth/depth_insert.css">
<script src="https://kit.fontawesome.com/070c967850.js"crossorigin="anonymous"></script>
<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>

<style>

 
</style>
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
								<li><a href="portfolio_2021">2021</a></li>
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
						<li><a href="solution_Adrive" class="depth1 on">SOLUTION</a>
							<ul class="depth2">
								<li><a href="solution_Adrive">A.Drive</a></li>
								<li><a href="solution_ST_framework">ST Framework</a></li>
								<li><a href="solution_System1">통합 SNS 관리 시스템</a></li>
								<li><a href="solution_System2">구간별 암호화 시스템</a></li>
							</ul></li>
						<li><a href="login" class="depth1">ManageMent</a>
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
						<li><a href="login" class="depth1">ManageMent</a>
							<ul class="depth2">
								<li><a href="logout">Logout</a></li>
								<li><a href="notice">Notice</a></li>
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
          <div class="insert_div">
	        <div class="insert_title_div">
				<span class="insert_title_span">Depth Update</span>
			</div>
          	<form method="post"action="depth_update_ok" >
	       		<table class="insert_table">
	       			<tr style="display:none;">
	       				<td><input type="text" name="menuCode" value="${dDto.menuCode }"></td>
	       			</tr>
	       			<tr class="insert_tr">
	       				<td class="insert_td_name">메뉴명2</td>
	       				<td class="insert_td_input"><input type="text" placeholder="메뉴명을 입력해주세요"  class="MenuParents" name="menuParents" value="${MenuParents }"></td>
	       			</tr>
	       			<tr class="insert_tr">
	       				<td class="insert_td_name">소제목</td>
	       				<td class="insert_td_input"><input type="text" placeholder="소제목을 입력해주세요" name="menuContents" value="${dDto.menuContents }"></td>
	       			</tr>
	       			
	       			<tr class="insert_tr">
						<td class="insert_td_btn">
							<button style="margin-right: 25px; width: 150px; border-radius: 20px; background-color: white; color: black; border: 1px solid black;">수정</button>
						</td>
						<td>
							<button onclick="depth_go(event)"style="margin-right: 25px; width: 150px; border-radius: 20px; background-color: white; color: black; border: 1px solid black;">목록</button>
						</td>
	       			</tr>
	       		</table>
	       			
       		</form>
          </div>

      </div><!-- //swiper-wrapper -->
      <div class="swiper-pagination"></div>
    </div><!-- //swiper-container -->

  </div><!-- //container -->

</div>
</div>


</body>
<script type="text/javascript"> 
	function depth_go(event) { 
		event.preventDefault(); 
		 const MenuParents = document.querySelector(".MenuParents").value;
		 location.href = "/homepage/depth?MenuParents="+ MenuParents;
		} 
</script>

</html>