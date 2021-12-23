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
          <a href="portfolio_2021" class="depth1 on">IT portfolio</a>
          <ul class="depth2">
            <li><a href="portfolio_2021">2021</a></li>
            <li><a href="portfolio_2020">2020</a></li>
            <li><a href="portfolio_2019">2019</a></li>
            <li class="on"><a href="portfolio_2018">2018</a></li>
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
          <a href="login" class="depth1">ManageMent</a>
          <ul class="depth2">
            <c:if test="${level != 1 }">
            	<li><a href="login">Login</a></li>
	         </c:if>
	         <c:if test="${level == 1 }">
	         	<li><a href="logout">Logout</a></li>
	         </c:if>
            <li><a href="notice">Notice</a></li>
          </ul>
        </li>        
      </ul>
    </nav>
  </header>
  <div class="container item">
    <p class="top_text">NO CROSS NO NO CROWN</p>
    <div class="swiper-container">
      <div class="swiper-wrapper">

        <!-- 2018-01 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">IT portfolio > 2018 </span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>대림 B&amp;CO<br>토탈 인테리어 쇼핑몰</h2>
            <div class="description">
              <p>토탈 홈 퍼니싱 시장에서<br class="pc">
              성공적인 확장의 기반이 될<br>
              온라인 쇼핑몰과<br class="pc">
              통합 운영 플랫폼 구축<br>
              이를 기반으로 지속 가능한<br>
              성장동력 확보와<br class="pc">
              공격적인 차별화 전략을 수행</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_dalim.png" alt="대림B&Co 로고"></p>
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div s_num_div">
              <span class="s_num s_num2018"></span>
              <a href="javascript:void(0);" class="btn_open mo" data-target="portfolio2018_1"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <img src="resources/static/images/portfolio/portfolio_2018_1.jpg" alt="">
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num1">1</span>
          </div>
        </div>

        <!-- 2018-02 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">IT portfolio > 2018 </span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>대림 B&amp;CO<br>통합 주문관리 시스템</h2>
            <div class="description">
              <p>본 사업은 치열한 경쟁의<br>
              토탈 인테리어 시장에서<br>
              성공적인 확장의 기반이 될<br>
              주문, 생산, 재고,<br>
              매입/매출, 운송 등을<br>
              관리할 수 있는<br>
              주문관리시스템을 구축</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_dalim.png" alt="대림B&Co 로고"></p>
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div s_num_div">
              <span class="s_num s_num2018"></span>
              <a href="javascript:void(0);" class="btn_open mo" data-target="portfolio2018_2"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <img src="resources/static/images/portfolio/portfolio_2018_2.jpg" alt="">
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num2">2</span>
          </div>
        </div>

        <!-- 2018-03 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">IT portfolio > 2018 </span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>CJ그룹<br>경영진 대쉬보드 기획 및 개발</h2>
            <div class="description">
              <p>R&D 센터에서 수행하는 프로젝트에 대한<br>
              월별 지표를 대시보드 형태로 제공<br>
              다양한 형태의 정량적/정성적 차트에<br>
              애니메이션 효과 제공<br>
              데이터 공개를 위해 입력된<br>
              자료에 대한 권한 관리 제공</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_cj.png" alt="CJ 로고">
              </p>
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div s_num_div">
              <span class="s_num s_num2018"></span>
              <a href="javascript:void(0);" class="btn_open mo" data-target="portfolio2018_3"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <img src="resources/static/images/portfolio/portfolio_2018_3.jpg" alt="">
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num3">3</span>
          </div>
        </div>

        <!-- 2018-04 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">IT portfolio > 2018 </span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>펑타이 코리아<br>한국ING 개발 및 운영</h2>
            <div class="description">
              <p>한국 여행 글로벌 서비스 앱으로<br>모바일 페이지 개발 및 운영</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_samsung.png" alt="삼성 로고">
              </p>
            </div>
          </div>
          <div class="contents item">
            <div class="tit_div s_num_div">
              <span class="s_num s_num2018"></span>
              <a href="javascript:void(0);" class="btn_open mo" data-target="portfolio2018_4"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <img src="resources/static/images/portfolio/portfolio_2018_4.jpg" alt="">
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

<div class="modal" id="portfolio2018_1">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="s_num_div mo"><span class="s_num s_num2018"></span></div>
        <div class="img_div"><img src="resources/static/images/portfolio/portfolio_2018_1.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="portfolio2018_2">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="s_num_div mo"><span class="s_num s_num2018"></span></div>
        <div class="img_div"><img src="resources/static/images/portfolio/portfolio_2018_2.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="portfolio2018_3">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="s_num_div mo"><span class="s_num s_num2018"></span></div>
        <div class="img_div"><img src="resources/static/images/portfolio/portfolio_2018_3.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="portfolio2018_4">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="s_num_div mo"><span class="s_num s_num2018"></span></div>
        <div class="img_div"><img src="resources/static/images/portfolio/portfolio_2018_4.jpg" alt=""></div>
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