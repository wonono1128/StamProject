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
				<c:if test="${level != 1 }">
					<ul class="navi">
						<li><a href="intro" class="depth1">ABOUT</a>
							<ul class="depth2">
								<li><a href="intro">Intro + Vision & Business</a></li>
								<li><a href="about_History">History</a></li>
								<li><a href="organizationChart">Organization Chart</a></li>
								<li><a href="withClient">With CLIENT</a></li>
							</ul></li>
						<li><a href="portfolio_2021" class="depth1 on">IT portfolio</a>
							<ul class="depth2">
								<li><a href="portfolio_2021">2021</a></li>
								<li><a href="portfolio_2020">2020</a></li>
								<li class="on"><a href="portfolio_2019">2019</a></li>
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
						<li><a href="login" class="depth1">ManageMent</a>
							<ul class="depth2">
								<li><a href="login">Login</a></li>
								<li><a href="notice">Notice</a></li>
							</ul></li>

					</ul>
				</c:if>
				
			</nav>
  </header>
  <div class="container item">
    <p class="top_text">NO CROSS NO NO CROWN</p>
    <div class="swiper-container">
      <div class="swiper-wrapper">

        <!-- 2019-01 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">IT portfolio > 2019 </span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>한국콜마<br>매뉴얼 관리 시스템</h2>
            <div class="description">
              <p>제안/상담부터 제품 개발까지<br>
                일원화 된 업무시스템 구축<br>
                쉽게 정보를 검색하고,<br>
                상담 이력을 확인할 수 있는 시스템으로<br>
                기준정보, 상담이력, 진행상황 등<br>
                제품 개발 프로세스에 따른<br>
                체계적인 정보관리</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_kolmar.png" alt="한국콜라 로고"></p>
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div s_num_div">
              <span class="s_num s_num2019"></span>
              <a href="javascript:void(0);" class="btn_open mo" data-target="portfolio2019_1"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <img src="resources/static/images/portfolio/portfolio_2019_1.jpg" alt="">
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num1">1</span>
          </div>
        </div>

        <!-- 2019-02 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">IT portfolio > 2019 </span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>대림 B&amp;CO<br>스마트 견적 시스템</h2>
            <div class="description">
              <p>제안/상담부터 제품 개발까지<br>
                일원화 된 업무시스템 구축<br>
                쉽게 정보를 검색하고,<br>
                상담 이력을 확인할 수 있는 시스템으로<br>
                기준정보, 상담이력, 진행상황 등<br>
                제품 개발 프로세스에 따른<br>
                체계적인 정보관리</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_dalim.png" alt="대림B&Co 로고"></p>
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div s_num_div">
              <span class="s_num s_num2019"></span>
              <a href="javascript:void(0);" class="btn_open mo" data-target="portfolio2019_2"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <img src="resources/static/images/portfolio/portfolio_2019_2.jpg" alt="">
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num2">2</span>
          </div>
        </div>

        <!-- 2019-03 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">IT portfolio > 2019 </span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>CJBP<br>경영진 대쉬보드</h2>
            <div class="description">
              <p>제안/상담부터 제품 개발까지<br>
                일원화 된 업무시스템 구축<br>
                쉽게 정보를 검색하고,<br>
                상담 이력을 확인할 수 있는 시스템으로<br>
                기준정보, 상담이력, 진행상황 등<br>
                제품 개발 프로세스에 따른<br>
                체계적인 정보관리</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_cj.png" alt="CJ 로고">
              </p>
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div s_num_div">
              <span class="s_num s_num2019"></span>
              <a href="javascript:void(0);" class="btn_open mo" data-target="portfolio2019_3"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <img src="resources/static/images/portfolio/portfolio_2019_3.jpg" alt="">
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num3">3</span>
          </div>
        </div>

        <!-- 2019-04 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">IT portfolio > 2019 </span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>대림 B&amp;CO<br>통합관리시스템</h2>
            <div class="description">
              <p>제안/상담부터 제품 개발까지<br>
                일원화 된 업무시스템 구축<br>
                쉽게 정보를 검색하고,<br>
                상담 이력을 확인할 수 있는 시스템으로<br>
                기준정보, 상담이력, 진행상황 등<br>
                제품 개발 프로세스에 따른<br>
                체계적인 정보관리</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_dalim.png" alt="대림B&Co 로고"></p>
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div s_num_div">
              <span class="s_num s_num2019"></span>
              <a href="javascript:void(0);" class="btn_open mo" data-target="portfolio2019_4"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <img src="resources/static/images/portfolio/portfolio_2019_4.jpg" alt="">
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num4">4</span>
          </div>
        </div>

      </div><!-- //swiper-wrapper -->
      <div class="swiper-pagination"></div>
    </div><!-- //swiper-container -->
    <p class="bottom_text">Strategy + Ambition</p>
  </div><!-- //container -->

</div>

<div class="modal" id="portfolio2019_1">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="s_num_div mo"><span class="s_num s_num2019"></span></div>
        <div class="img_div"><img src="resources/static/images/portfolio/portfolio_2019_1.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="portfolio2019_2">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="s_num_div mo"><span class="s_num s_num2019"></span></div>
        <div class="img_div"><img src="resources/static/images/portfolio/portfolio_2019_2.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="portfolio2019_3">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="s_num_div mo"><span class="s_num s_num2019"></span></div>
        <div class="img_div"><img src="resources/static/images/portfolio/portfolio_2019_3.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="portfolio2019_4">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="s_num_div mo"><span class="s_num s_num2019"></span></div>
        <div class="img_div"><img src="resources/static/images/portfolio/portfolio_2019_4.jpg" alt=""></div>
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