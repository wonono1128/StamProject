<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

					<!-- ST Framework-01 -->
					<div class="swiper-slide">
						<div class="loca_div mo">
							<span class="loca">Solution > ST FRAMEWORK</span> <span
								class="slogan">Strategy+Ambition</span>
						</div>
						<div class="subtitle_section item">
							<h2>
								SYSTEM<br>ST FRAMEWORK
							</h2>
							<div class="description">
								<p>
									STAM의 노하우를 기반으로<br> 웹 서비스 통합구축을 통하여 고객의<br> 특성에 맞게
									서비스의 안정성과 유지관리의<br> 효율성을 향상과 관리 하실 수 있습니다.
								</p>
							</div>
						</div>
						<div class="contents item">
							<div class="tit_div tit_div2">
								<h3>구성 상세</h3>
								<a href="javascript:void(0);" class="btn_open mo"
									data-target="stFramework01"></a>
							</div>
							<div class="cont">
								<div class="conts_div">
									<div class="img_div">
										<img src="resources/static/images/st_framework_01.jpg" alt="">
									</div>
								</div>
								<a href="#" class="mo close_layer">닫기</a>
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

	<div class="modal" id="stFramework01">
		<div class="modal_wrap">
			<div class="modal_cont">
				<div class="m_content">
					<div class="tit_div2">
						<h3>구성 상세</h3>
					</div>
					<div class="conts_div">
						<div class="img_div">
							<img src="resources/static/images/st_framework_01.jpg" alt="">
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