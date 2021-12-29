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
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
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
							<span class="loca">ABOUT > With Client</span> <span
								class="slogan">Strategy+Ambition</span>
						</div>
						<div class="subtitle_section item">
							<h2>
								About STAM<br>With CLIENT
							</h2>
							<div class="description mt30">
								<p>
									<em>고객의 미래를 함께 준비합니다.</em>
								</p>
								<p>
									에스티에이엠은 LTV(Life Time Value)를 위한<br>고객만족에 최선을 다하고 있습니다.<br>국내
									우수 기업이 인정한 에스티에이엠의 가치.<br>귀사와 함께 평생 파트너가 되고 싶습니다.
								</p>
							</div>
						</div>
						<div class="contents item">
							<div class="tit_div tit_div2">
								<h3 class="mo">Client</h3>
								<a href="javascript:void(0);" class="btn_open mo"
									data-target="client"></a>
							</div>


							<div class="cont">
								<div class="img_div mb30">
									<img src="resources/static/images/img_client.jpg" alt="">
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

	<div class="modal" id="client">
		<div class="modal_wrap">
			<div class="modal_cont">
				<div class="m_content">
					<div class="img_div mb30">
						<img src="resources/static/images/img_client.jpg" alt="">
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