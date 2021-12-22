<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/static/plugins/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" href="resources/static/css/common.css">
<link rel="stylesheet" href="resources/static/css/style.css">
<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
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
          <a href="solution_Adrive" class="depth1 on">SOLUTION</a>
          <ul class="depth2">
            <li><a href="solution_Adrive">A.Drive</a></li>
            <li><a href="solution_ST_framework">ST Framework</a></li>
            <li class="on"><a href="solution_System1">통합 SNS 관리 시스템</a></li>
            <li><a href="solution_System2">구간별 암호화 시스템</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  </header>
<div class="container item">
    <p class="top_text">NO CROSS NO NO CROWN</p>
    <div class="swiper-container">
      <div class="swiper-wrapper">

        <!-- ST Framework-01 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Solution > 통합 SNS 관리 시스템</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>SYSTEM<br>통합 SNS 관리 시스템</h2>
            <div class="description">
              <p>기업에서 관리하고 있는 각 SNS를 한번에<br>
                통합 관리하고 모니터링 하여 다양한 정보를<br>
                고객이 원하는 매체에 배포하도록 수집과<br>
                제공하는 솔루션입니다.</p>
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div tit_div2">
              <h3>구성 상세</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="system01"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/system_01.jpg" alt=""></div>
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

<div class="modal" id="system01">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2"><h3>구성 상세</h3></div>
        <div class="conts_div">
          <div class="img_div"><img src="resources/static/images/system_01.jpg" alt=""></div>
        </div>
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