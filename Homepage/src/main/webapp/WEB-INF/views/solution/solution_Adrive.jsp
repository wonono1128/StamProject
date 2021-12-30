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
				<c:if test="${level != 1 }">
					<jsp:include page="../customer_menu.jsp" />
				</c:if>
				<c:if test="${level == 1 }">
					<jsp:include page="../manager_menu.jsp" />
				</c:if>
			</nav>
		</header>

		<div class="container item">
			<p class="top_text">NO CROSS NO CROWN</p>
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<!-- aDrive-01 -->
					<div class="swiper-slide">
						<div class="loca_div mo">
							<span class="loca">Solution > A.Drive</span> <span class="slogan">Strategy+Ambition</span>
						</div>
						<div class="subtitle_section item">
							<h2>
								Solution<br>A.Drive
							</h2>
							<div class="description">
								<p>
									각 상영관의 외부 디스플레이에 제공될<br class="pc"> 컨텐츠 관리 및 배포<br>
									player별로 컨텐츠 등록<br> 자동 Schedule 작성<br> 컨텐츠 자동 배포<br>
									Ex)<br class="pc"> ㆍ 극장 관리 시스템<br class="pc"> ㆍ 광고 관리
									시스템
								</p>
							</div>
						</div>
						<div class="contents item aDrive">
							<div class="tit_div tit_div2">
								<h3>
									A.Drive <br class="pc">소프트웨어 <br class="pc">구조도
								</h3>
								<a href="javascript:void(0);" class="btn_open mo"
									data-target="aDrive01"></a>
							</div>
							<div class="cont">
								<div class="conts_div">
									<div class="img_div">
										<img src="resources/static/images/aDrive_01.jpg" alt="">
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

	<div class="modal" id="aDrive01">
		<div class="modal_wrap">
			<div class="modal_cont">
				<div class="m_content">
					<div class="tit_div2">
						<h3>A.Drive 구조도 소프트웨어</h3>
					</div>
					<div class="conts_div">
						<div class="img_div">
							<img src="resources/static/images/aDrive_01.jpg" alt="">
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