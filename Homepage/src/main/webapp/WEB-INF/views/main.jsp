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
	<div class="wrapper" id="mainWrapper">
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
				<c:if test="${level != 1 }">
					<jsp:include page="customer_menu.jsp" />
				</c:if>
				<c:if test="${level == 1 }">
					<jsp:include page="manager_menu.jsp" />
				</c:if>
			</nav>
		</header>

		<div class="container item">
			<p class="top_text">NO CROSS NO NO CROWN</p>
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<div class="swiper-slide">
						<div class="loca_div mo">
							<span class="loca">HOME</span> <span class="slogan">Strategy+Ambition</span>
						</div>
						<div class="subtitle_section item">
							<h2>
								STAM<br>COMPANYPROFILE
							</h2>
							<div class="description">
								<p>
									<em>고객의 미래를 함께 준비합니다.</em><br> ㈜에스티에이엠은 온라인을 기반으로 한<br
										class="pc"> 웹사이트구축,<br class="mo"> 프로그램개발, 시스템구축,<br
										class="pc"> 브랜드 컨텐츠 기획 전문기업입니다.<br> -<br> 서울특별시<br>
									금천구 디지털로130<br> 남성프라자 801-3호<br> <em>T:
										02-859-5798</em><br> <em>F: 02-6008-4863</em><br> S:
									www.stam.kr<br> -<br> Web Developent<br> Mobile
									Developent<br> Serice Planning<br> Content Planning<br>
									UIㆍUX Design
								</p>
							</div>
						</div>
						<div class="contents item">
							<div class="tit_div tit_div2">
								<h3>
									STAM <br class="pc">COMPANY <br class="pc">PROFILE
								</h3>
								<a href="javascript:void(0);" class="btn_open mo"
									data-target="main01"></a>
							</div>
							<div class="cont">
								<div class="media_div">
									<video muted autoplay loop
										src="resources/static/images/media.mp4" type="video/mp4"></video>
									<!-- 수정 -->
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




</body>



<script type="text/javascript">
	contentsHeight();
</script>

</html>
