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
				<jsp:include page="../customer_menu.jsp"/>
			</nav>
  </header>
  <div class="container item">
    <p class="top_text">NO CROSS NO NO CROWN</p>
    <div class="swiper-container">
      <div class="swiper-wrapper">

        <!-- Brand-01 -->
        <div class="swiper-slide">
          <div class="loca_div mo">
            <span class="loca">Brand > Brand</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>브랜드<br>아이덴티티 진단</h2>
            <div class="description">
              <p>브랜드아이덴티티 진단이란<br>
              기업의 브랜딩 활동에 있어<br class="pc">
              브랜드컨셉 또는 포지셔닝에 맞게 관련<br class="pc">
              아이덴티티 요소들이<br class="pc">
              고객과 접점채널에서 전달 및<br class="pc">
              유지가 되고 있는지 점검하는 것입니다.<br>
              즉, 현 브랜드아이덴티티와 고객이 인지하는<br class="pc">
              브랜드이미지의 차이가 있다면 얼마나 되는지를<br class="pc">
              체크하고 브랜드 컨셉을 포함한<br class="pc">
              네임, 디자인, 브랜딩 채널 등을 검토하여<br class="pc">
              어떤 방식으로 개선시켜야 할지<br class="pc">
              정확히 파악하는 것입니다.<br><br></p>

              <p><em>브랜드는 항상 진화해야 하며, 그 이유는<br>
              이해관계자의 기대와 시장상황이 끊임없이<br>
              변화하기 때문입니다.</em></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>진단범위</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="brand01"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <p>브랜드 핵심가치 및 포지셔닝의 적합성, 네임의 전달력, 디자인 차별성, 브랜딩 채널의 효율성 등을 체크하여 기존의 아이덴티티를 전면교체 또는 부분개선 등의 방향성을 제시합니다.</p>

                <h4 class="mt">Brand Identity Diagnosis Process</h4>
                <div class="img_div"><img src="resources/static/images/brand_01.jpg" alt=""></div>
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
            <span class="loca">Brand > Brand</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>브랜드<br>디자인</h2>
            <div class="description">
              <p><em>Corporate Identity</em></p>
              <p>브랜드 디자인</p>
              <p>기업의 명확하고 일괄된 이미지 구축을 통한<br class="pc">
              대내외 효율적인 이미지 제고 또는 새로운<br class="pc">
              경영환경 및 비즈니스 환경변화에 따른 기업<br class="pc">
              이미지의 변신이 필요한 기업체들에게<br class="pc">
              성공적인 브랜드경영을 수행 할 수 있도록<br class="pc">
              브랜드 개발합니다.<br><br></p>

              <p><em>Brand Identity</em></p>
              <p>마켓 또는 제품브랜드의 주요 소비자층과의<br>
              효율적인 커뮤니케이션을 목적으로<br>
              시각, 청각, 톤 &매너 등을 고려하여 경쟁사와<br>
              차별화된 독자적인 브랜드 이미지를<br class="pc">
              개발합니다.</p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>Visual <br class="pc">Branding <br class="pc">Process</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="brand02"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/brand_02.jpg" alt=""></div>
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
            <span class="loca">Brand > Brand</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>JTBC<br>Brand &amp; System Design</h2>
            <div class="description">
              <p>JTBC의 새로운 광고 채널 브랜드 Medios 및<br>시스템 디자인 구축</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_jtbc.png" alt="JTBC 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>Medios <br class="pc">Brand <br class="pc">Design</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="brand03"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/brand_03.jpg" alt=""></div>
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
            <span class="loca">Brand > Brand</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>CJBP<br>수출인허가 GORI 브랜드</h2>
            <div class="description">
              <p>장미가 가지고 있는 꽃말은<br class="pc">
              “불가능의 극복”을 의미합니다.<br>
              수출인허가 고리는 글로벌 사이트로<br class="pc">
              전세계 불가능한 환경을 극복하여<br class="pc">
              새로운 시장 진출을 하는 글로벌 팀입니다.<br>
              이를 브랜드에 반영하기 위하여<br class="pc">
              전체 밸런스는 장미 윗 본 모습,<br class="pc">
              라인은 확신에 찬 주먹으로 표현하였습니다.</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_gori.png" alt="CJ Gori 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>GORI<br class="pc"> Brand<br class="pc"> Design</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="brand04"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/brand_04.jpg" alt=""></div>
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
            <span class="loca">Brand > Brand</span>
            <span class="slogan">Strategy+Ambition</span>
          </div>
          <div class="subtitle_section item">
            <h2>제니스<br>엔지니어링</h2>
            <div class="description">
              <p>ZEN은 끝없는 기술력 발전으로<br>
                현재에 도달하였습니다.<br>
                앞으로도 무한 성장 할 브랜드입니다.<br>
                이를 바탕으로 메비우스띠와 시간을 접목하여<br>
                심볼화하였습니다.</p>
              <p class="logo_img_div"><img src="resources/static/images/portfolio/logo_zen.png" alt="ZEN 로고"></p>
            </div>
          </div>
          <div class="contents item brand">
            <div class="tit_div tit_div2">
              <h3>ZEN<br class="pc"> Brand<br class="pc"> Design</h3>
              <a href="javascript:void(0);" class="btn_open mo" data-target="brand05"></a>
            </div>
            <div class="cont">
              <div class="conts_div">
                <div class="img_div"><img src="resources/static/images/brand_05.jpg" alt=""></div>
              </div>
              <a href="#" class="mo close_layer">닫기</a>
            </div>
          </div>
          <div class="num_div">
            <span class="num num0">0</span>
            <span class="num num5">5</span>
          </div>
        </div>


      </div><!-- //swiper-wrapper -->
      <div class="swiper-pagination"></div>
    </div><!-- //swiper-container -->
    <p class="bottom_text">Strategy + Ambition</p>
  </div><!-- //container -->

</div>

<div class="modal" id="brand01">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>진단범위</h3></div>
        <div class="conts_div">
          <p>브랜드 핵심가치 및 포지셔닝의 적합성, 네임의 전달력, 디자인 차별성, 브랜딩 채널의 효율성 등을 체크하여 기존의 아이덴티티를 전면교체 또는 부분개선 등의 방향성을 제시합니다.<br><br></p>
          <h4 class="mt20">Brand Identity Diagnosis Process</h4>
          <div class="img_div"><img src="resources/static/images/brand_01.jpg" alt=""></div>
        </div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="brand02">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>Visual Branding Process</h3></div>
        <div class="img_div"><img src="resources/static/images/brand_02.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="brand03">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>Medios Brand Design</h3></div>
        <div class="img_div"><img src="resources/static/images/brand_03.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="brand04">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>GORI Brand Design</h3></div>
        <div class="img_div"><img src="resources/static/images/brand_04.jpg" alt=""></div>
      </div>
    </div>
    <button class="modal_close"></button>
  </div>
</div>

<div class="modal" id="brand05">
  <div class="modal_wrap">
    <div class="modal_cont">
      <div class="m_content">
        <div class="tit_div2 mo"><h3>ZEN Brand Design</h3></div>
        <div class="img_div"><img src="resources/static/images/brand_05.jpg" alt=""></div>
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