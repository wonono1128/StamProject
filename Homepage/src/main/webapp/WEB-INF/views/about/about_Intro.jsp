<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>STAM</title>
<link rel="stylesheet"
	href="resources/static/plugins/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="resources/static/css/common.css">
<link rel="stylesheet" href="resources/static/css/style.css">

<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
		<header class="header item">
			<h1 class="logo">
				<a href="main"><img src="resources/static/images/logo.png"
					alt="STAM"></a>
			</h1>
			<button class="btn_nav mo">
				<span></span><span></span><span></span>
			</button>
			<button class="btn_back mo"></button>
			<nav class="navi_wrap">
				<jsp:include page="../customer_menu.jsp" />
			</nav>
		</header>
		<div class="container item">
			<p class="top_text">NO CROSS NO NO CROWN</p>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<!-- 2021 -->
					<div class="swiper-slide">
						<div class="loca_div mo">
							<span class="loca">ABOUT > Intro</span> <span class="slogan">Strategy+Ambition</span>
						</div>
						<div class="subtitle_section item">
							<h2>
								About STAM<br>Vision &amp; Business
							</h2>
							<div class="description">
								<p>
									<em>VISION</em>
								</p>
								<p>
									㈜에스티에이엠은 4가지 핵심역량을 바탕으로 <br>세계적인 기업으로 도약하고자 합니다.<br>
									<br>
								</p>
								<p>
									<em>Relationship</em>
								</p>
								<p>
									고객의 성공을 위한 신뢰있는<br>파트너십을 지향합니다!
								</p>
								<p>
									<em>Manpower</em>
								</p>
								<p>
									전문성 있는 인재확보와 직원<br>역량강화를 위해 적극적으로 투자합니다!
								</p>
								<p>
									<em>Ｈigh Quality Service</em>
								</p>
								<p>
									전문기술력과 노하우로<br>최고의 서비스를 제공합니다.
								</p>
								<p>
									<em>Sustainability Management</em>
								</p>
								<p>
									사회 트렌드변화에 적극 대응하여<br>성장하는 지속 가능경영을 추구합니다!
								</p>
							</div>
						</div>
						<div class="contents item">
							<div class="tit_div tit_div2">
								<h3>Business</h3>
								<a href="javascript:void(0);" class="btn_open mo"
									data-target="intro"></a>
							</div>
							<div class="cont">
								<div class="conts_div">
									<p>
										(주)에스티에이엠은 고객 감동 서비스를 실천합니다. <em>체계적인 시스템으로 고객의 다양한 요구에
											신속하게 대응하여 프로페셔널한 자세와 진정성으로 다가가도록 하겠습니다.</em>
									</p>
									<div class="img_div mt45">
										<img src="resources/static/images/img_intro.jpg" alt="">
									</div>
								</div>
							</div>
						</div>
						<div class="num_div">
							<span class="num num0">0</span> <span class="num num1">1</span>
						</div>
					</div>

				</div>
				<!-- //swiper-wrapper -->
				<div class="swiper-pagination"></div>
			</div>
			<!-- //swiper-container -->
			<p class="bottom_text">Strategy + Ambition</p>
		</div>
		<!-- //container -->

	</div>


	<div class="modal" id="intro">
		<div class="modal_wrap">
			<div class="modal_cont">
				<div class="m_content">
					<div class="tit_div2 mo">
						<h3>Business</h3>
					</div>
					<div class="conts_div">
						<p>
							(주)에스티에이엠은 고객 감동 서비스를 실천합니다. <em>체계적인 시스템으로 고객의 다양한 요구에 신속하게
								대응하여 프로페셔널한 자세와 진정성으로 다가가도록 하겠습니다.</em>
						</p>
						<div class="img_div mt20">
							<img src="resources/static/images/img_intro.jpg" alt="">
						</div>
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