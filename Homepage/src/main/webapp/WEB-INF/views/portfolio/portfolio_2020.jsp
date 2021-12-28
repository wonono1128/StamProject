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

<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
<script src="https://kit.fontawesome.com/070c967850.js"crossorigin="anonymous"></script>
</head>
<body>
<div class="wrapper">
  <header class="header item">
    <h1 class="logo"><a href="main"><img src="resources/static/images/logo.png" alt="STAM"></a></h1>
    <button class="btn_nav mo">
      <span></span><span></span><span></span>
    </button>
    <button class="btn_back mo"></button>
    <nav class="navi_wrap">
				<jsp:include page="../customer_menu.jsp"/>
				
				
			</nav>
  </header>
  <div class="container item">
    <p class="top_text">NO CROSS NO NO CROWN</p>
    <div class="swiper-container">
      <div class="swiper-wrapper">

        <!-- 2020-01 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">IT portfolio > 2020 </span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>CJBP<br>Connect ONe 인사시스템</h2>
            <div class="description">
              <p>제안/상담부터 제품 개발까지<br>
                일원화 된 업무시스템 구축<br>
                쉽게 정보를 검색하고,<br>
                상담 이력을 확인할 수 있는 시스템으로<br>
                기준정보, 상담이력, 진행상황 등<br>
                제품 개발 프로세스에 따른<br>
                체계적인 정보관리</p>
             <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_cj.png" alt="CJ 로고">
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div s_num_div">
              <span class="s_num s_num2020"></span>
              <a href="javascript:void(0);" class="btn_open mo" data-target="portfolio2020_1"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <img src="resources/static/images/portfolio/portfolio_2020_1.jpg" alt="">
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num1">1</span>
          </div>
        </div>

      </div><!-- //swiper-wrapper -->
      <div class="swiper-pagination"></div>
    </div><!-- //swiper-container -->
    <p class="bottom_text">Strategy + Ambition</p>
  </div><!-- //container -->

</div>

<div class="modal" id="portfolio2020_1">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="s_num_div mo"><span class="s_num s_num2020"></span></div>
        <div class="img_div"><img src="resources/static/images/portfolio/portfolio_2020_1.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>


</body>
<script type="text/javascript">
 contentsHeight();
</script>
</html>