<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>STAM</title>
<link rel="stylesheet" href="resource/plugins/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" href="resource/css/common.css">
<link rel="stylesheet" href="resource/css/style.css">

<script src="resource/js/jquery-3.2.1.min.js"></script>
<script src="resource/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resource/js/common.js"></script>
</head>
<body>
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
            <li><a href="about_history">History</a></li>
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
            <li><a href="brand_promotion">Promotion</a></li>
            <li><a href="brand_edit">Edit</a></li>
          </ul>
        </li>
        <li>
          <a href="solution_Adrive" class="depth1">SOLUTION</a>
          <ul class="depth2">
            <li><a href="solution_Adrive">A.Drive</a></li>
            <li><a href="solution_ST_framework">ST Framework</a></li>
            <li><a href="solution_system1">통합 SNS 관리 시스템</a></li>
            <li><a href="solution_system2">구간별 암호화 시스템</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  </header>

  <div class="container item">
    <p class="top_text">NO CROSS NO NO CROWN</p>
    <div class="swiper-container">
      <div class="swiper-wrapper">

        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">HOME</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>STAM<br>COMPANYPROFILE</h2>
            <div class="description">
              <p><em>고객의 미래를 함께 준비합니다.</em><br>
                ㈜에스티에이엠은 온라인을 기반으로 한<br class="pc">
                웹사이트구축,<br class="mo"> 프로그램개발, 시스템구축,<br class="pc">
              브랜드 컨텐츠 기획 전문기업입니다.<br>
              -<br>
              서울특별시<br>
                금천구 디지털로130<br>
                남성프라자 801-3호<br>
                <em>T: 02-859-5798</em><br>
                <em>F: 02-6008-4863</em><br>
                S: www.stam.kr<br>
                -<br>
                Web Developent<br>
                Mobile Developent<br>
                Serice Planning<br>
                Content Planning<br>
                UIㆍUX Design</p>
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div tit_div2">
              <h3>STAM <br class="pc">COMPANY <br class="pc">PROFILE</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="main01"></a>
            </div>
            <div class="cont">
              <div class="media_div">
                <video muted autoplay loop src="resource/images/.mp4" type="video/mp4"></video>
              </div>
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

<div class="modal" id="main01">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2"><h3>STAM COMPANY PROFILE</h3></div>
        <div class="conts_div">
          <div class="media_div">
            <video muted autoplay loop src="resource/images/.mp4" type="video/mp4"></video>
          </div>
        </div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

</body>
</html>