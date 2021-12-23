<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          <a href="brand" class="depth1 on">Brand</a>
          <ul class="depth2">
            <li><a href="brand">Brand</a></li>
            <li><a href="brand_Promotion">Promotion</a></li>
            <li class="on"><a href="brand_Edit">Edit</a></li>
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

        <!-- Edit-01 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Edit</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>효성그룹<br>해외 글로벌 광고</h2>
            <div class="description">
              <p>효성 굿스프링스 국제 광고 디자인 및<br>
              홍보 디자인 기획 및 제작을 하였습니다.<br>
              기존 브랜드가 가지고 있는 전문성과<br>
              글로벌 이미지를 부각한 프로젝트입니다.</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_hyosung.png" alt="효성 로고"></p>
            </div>
          </div>
          <div class="contents item Edit">
            <div class="tit_div tit_div2">
              <h3>AD <br class="pc"><span class="mo">+ </span> Edit</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="edit01"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/edit_01.jpg" alt=""></div>
              </div>
             <!--  <a href="#" class="mo close_layer">닫기</a>--> 
     
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num1">1</span>
          </div>
        </div>

        <!-- Edit-02 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Edit</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>국립오페라단<br>연간 광고 디자인</h2>
            <div class="description">
              <p>기존에 고전적인 스타일에서 탈바꿈을 시도하여<br>
                클래식한 분위기는 살리면서 다양한 레이아웃을<br>
                잡아가며 변화를 유도하였습니다.</p>
               <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_nationalopera.png" alt="국립오페라단 로고"></p>
            </div>
          </div>
          <div class="contents item Edit">
            <div class="tit_div tit_div2">
              <h3>AD <br class="pc"><span class="mo">+ </span> Edit</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="edit02"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/edit_02.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num2">2</span>
          </div>
        </div>

        <!-- Edit-03 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Edit</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>서울대학교<br>교육자료 편집 디자인</h2>
            <div class="description">
              <p>연간으로 집행되었던 서울대학교 교육 프로그램<br>
                북디자인 및 프로모션을 진행하였습니다<br>
                생물학 / 경영학 / 경제학 등 카테고리 별<br>
                편집 디자인 기획 및 제작 하였습니다.</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_seoulUniv.png" alt="서울대학교 로고"></p>
            </div>
          </div>
          <div class="contents item Edit">
            <div class="tit_div tit_div2">
              <h3>Edit</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="edit03"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/edit_03.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num3">3</span>
          </div>
        </div>

      </div><!-- //swiper-wrapper -->
      <div class="swiper-pagination"></div>
    </div><!-- //swiper-container -->
    <p class="bottom_text">Strategy + Ambition</p>
  </div><!-- //container -->

</div>

<div class="modal" id="edit01">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2"><h3>AD + Edit</h3></div>
        <div class="conts_div">
          <div class="img_div"><img src="resources/static/images/edit_01.jpg" alt=""></div>
        </div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="edit02">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
       <div class="tit_div2"><h3>AD + Edit</h3></div>
        <div class="img_div"><img src="resources/static/images/edit_02.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="edit03">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2"><h3>Edit</h3></div>
        <div class="img_div"><img src="resources/static/images/edit_03.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>



<script type="text/javascript">
 contentsHeight();
</script>
</html>