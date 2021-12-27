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
						<li><a href="portfolio_2021" class="depth1">IT portfolio</a>
							<ul class="depth2">
								<li><a href="portfolio_2021">2021</a></li>
								<li><a href="portfolio_2020">2020</a></li>
								<li><a href="portfolio_2019">2019</a></li>
								<li><a href="portfolio_2018">2018</a></li>
								<li><a href="portfolio_2017">2017</a></li>
								<li><a href="portfolio_2016">-2016</a></li>
							</ul></li>
						<li><a href="brand" class="depth1 on">Brand</a>
							<ul class="depth2">
								<li><a href="brand">Brand</a></li>
								<li class="on"><a href="brand_Promotion">Promotion</a></li>
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

        <!-- Brand-01 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Promotion</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>교보문고<br>인문학 콘서트 기획 및 실행</h2>
            <div class="description">
              <p>바쁜 삶으로 지친 현대인들을 위해 콘서트를<br class="pc">
              열었습니다. 인문학을 중심으로 삶의 본질에<br class="pc">
              대하여 생각하게 하는 자리였습니다.<br>
              한국을 대표로 하는 작가들과 대중들의 질의<br>
              응답 시간도 가지며 더욱 뜻 깊은 자리를<br>
              만들었습니다.</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_kyobo.png" alt="교보문고 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>Brand + <br class="pc">AD <br class="pc">Promotion</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="promotion01"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/promotion_01.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num1">1</span>
          </div>
        </div>

        <!-- Brand-02 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Promotion</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>우리투자증권<br>VIP 프로모션 기획 및 실행</h2>
            <div class="description">
              <p>우리투자증권의 VIP 고객을 대상으로 콘서트를<br class="pc">
              열었습니다. 우리투자증권의 프리미엄 블루로<br class="pc">
              럭셔리를 지키며,<br class="mo"> 쎄시봉 캐리커쳐를 활용하여<br>
              7080세대의 향수를 불러 일으켰습니다.</p>
               <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_woori.png" alt="우리은행 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>Brand + <br class="pc">AD <span class="mo">+ </span><br class="pc">Promotion</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="promotion02"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/promotion_02.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num2">2</span>
          </div>
        </div>

        <!-- Brand-03 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Promotion</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>한국마사회<br>멀티비전 / 컨텐츠</h2>
            <div class="description">
              <p>세계 최초, 최고의 멀티비전이 설치되었습니다.<br>
                128m 전체 연출 기획 및 제작과<br class="pc">
                관련 컨텐츠 기획, 게임 개발을 진행하였습니다.<br class="pc">
                또한 시스템을 이용한 SMS/SNS와 연계를 통해<br class="pc">
                고객과 소통 할 수 있는 환경을 구성하였습니다.</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_kra.png" alt="한국마사회 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>Promotion <br class="pc"><span class="mo">+ </span>Video <br class="pc"><span class="mo">+ </span> Contents</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="promotion03"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/promotion_03.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num3">3</span>
          </div>
        </div>

        <!-- Brand-04 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Promotion</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>청정원<br>식탁의 기적 프로모션</h2>
            <div class="description">
              <p>식탁에서 일어났던 고객의 에피소드를<br class="pc">
              라디오를 통해 소개하였으며,<br class="pc">
              국내 영화 감독들이 직접 참여하여 각색을 통해<br class="pc">
              영화로 제작 하였습니다<br>
              제작 후 시사회를 통해 기업과 고객이 직접적인<br>
              소통의 자리를 만들었습니다</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_chungjungone.png" alt="청정원 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>Promotion</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="promotion04"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/promotion_04.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num4">4</span>
          </div>
        </div>

        <!-- Brand-05 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Promotion</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>교보그룹<br>대학생동북아대장정 캠페인</h2>
            <div class="description">
              <p>2009년 이전에는 박카스 국토대장정보다<br>
              상대적으로 인지도가 낮았습니다.<br>
              그러나 2009년 기점으로 지원자 수가 약 330%<br>
              상승하였으며, 4년 연속 연간 진행하였습니다.<br>
              현재 대학생 3대 캠페인으로 선정되었습니다.</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_kyobo.png" alt="교보문고 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>AD <br class="pc"><span class="mo">/ </span>EDIT <br class="pc"><span class="mo">/ </span>WEB <br class="pc"><span class="mo">/ </span>Promotion</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="promotion05"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/promotion_05.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num5">5</span>
          </div>
        </div>

        <!-- Brand-06 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Promotion</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>교보그룹<br>V-Classic</h2>
            <div class="description">
              <p>교보문고 VIP를 대상으로 클래식 콘서트 및<br class="pc">
                강연을 열었습니다.<br>
                연간으로 진행하면서 고객들의 호평을 받았으며,<br>
                교보문고 브랜드 이미지상승을 가지고 왔습니다.</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_kyobo.png" alt="교보문고 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>Brand <br class="pc"> <span class="mo">/ </span>EDIT <br class="pc"> <span class="mo">/ </span>Promotion</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="promotion06"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/promotion_06.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num6">6</span>
          </div>
        </div>

        <!-- Brand-07 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Promotion</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>농심<br>둥지냉면 런칭 프로모션</h2>
            <div class="description">
              <p>농심 둥지냉면 신제품 프로모션을 진행하였습니다.<br>
                캐리비안베이에서 게임을 통해 시식과<br class="pc">
                제품을 증정하면서 고객의 시선을 잡고,<br class="pc">
                공연을 통해 시원한 홍보를 펼쳤습니다.</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_nongshim.png" alt="농심 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>Promotion</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="promotion07"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/promotion_07.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num7">7</span>
          </div>
        </div>

        <!-- Brand-08 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Promotion</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>농심<br> 블랙신라면 / 후루룩국수<br class="pc"> 홍삼수 / 사랑나눔콘서트</h2>
            <div class="description">
              <p>[블랙신라면]<br>
                블랙신라면 직영점 대상으로 런칭프로모션 실행<br>
                [후루룩국수]<br>
                신제품 후루룩 국수의 발표회를 전국구 실행<br>
                [홍삼수]<br>
                신세계 백화점과 함께 신제품 프로모션 진행<br>
                [사랑나눔콘서트]<br>
                연간 올림픽경기장에서 사랑나눔콘서트 진행</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_nongshim.png" alt="농심 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>Promotion</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="promotion08"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/promotion_08.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num8">8</span>
          </div>
        </div>

        <!-- Brand-09 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Promotion</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>G마켓<br>청춘문화센터 프로모션</h2>
            <div class="description">
              <p>어려운 경제상황에서 젊은 청춘들은 심리적으로<br class="pc">
                많은 갈등과 스트레스로 미래에 대한 비전을<br class="pc">
                꿈꾸지 못하는 상황입니다.<br>
                그래서 각분야 전문가를 초청하여<br>
                대학생 대상으로 비전 강연회 프로모션을<br class="pc">
                진행했습니다.</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_gmarket.png" alt="지마켓 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>Promotion</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="promotion09"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/promotion_09.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num9">9</span>
          </div>
        </div>


      </div><!-- //swiper-wrapper -->
      <div class="swiper-pagination"></div>
    </div><!-- //swiper-container -->
    <p class="bottom_text">Strategy + Ambition</p>
  </div><!-- //container -->

</div>

<div class="modal" id="promotion01">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>Brand + AD + Promotion</h3></div>
        <div class="conts_div">
          <div class="img_div"><img src="resources/static/images/promotion_01.jpg" alt=""></div>
        </div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="promotion02">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>Brand + AD + Promotion</h3></div>
        <div class="img_div"><img src="resources/static/images/promotion_02.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="promotion03">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>Promotion + Video + Contents</h3></div>
        <div class="img_div"><img src="resources/static/images/promotion_03.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="promotion04">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>Promotion</h3></div>
        <div class="img_div"><img src="resources/static/images/promotion_04.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="promotion05">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>AD / EDIT / WEB / Promotion</h3></div>
        <div class="img_div"><img src="resources/static/images/promotion_05.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="promotion06">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>Brand / EDIT / Promotion</h3></div>
        <div class="img_div"><img src="resources/static/images/promotion_06.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="promotion07">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>Promotion</h3></div>
        <div class="img_div"><img src="resources/static/images/promotion_07.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="promotion08">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>Promotion</h3></div>
        <div class="img_div"><img src="resources/static/images/promotion_08.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="promotion09">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>Promotion</h3></div>
        <div class="img_div"><img src="resources/static/images/promotion_09.jpg" alt=""></div>
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