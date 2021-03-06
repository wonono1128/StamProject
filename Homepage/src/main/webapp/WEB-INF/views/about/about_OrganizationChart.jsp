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
					<!-- 2021 -->
					<div class="swiper-slide">
						<div class="loca_div mo">
							<span class="loca">ABOUT > Organization Chart</span> <span
								class="slogan">Strategy+Ambition</span>
						</div>
						<div class="subtitle_section item">
							<h2>
								About STAM<br>Organization Chart
							</h2>
							<div class="description">
								<p>
									2022년 현재 총 인원 18명으로<br> 공공 및 일반기업의 다양한 사업 참여를<br> 통해
									노하우와 기술을 쌓아온<br> 우수인력과 기술지원 체계를<br> 보유하고 있습니다.<br>
									우수한 인재 양성 외에도<br> 전문기술을 갖춘 고급인력을 선발하여<br> 100% 고객 만족을
									지향하는<br> 서비스를 제공합니다.<br> <br>
								</p>
								<p>
									(주)에스티에이엠은<br> 다양한 프로젝트 수행을 통해<br>노하우를 쌓아 온 전문적인 맨파워를<br>보유하고
									있습니다.<br> <br>
								</p>
								<p>
									<em>우수한 인력 구성</em><br> 에스티에이엠은 등급별 인력구성비율에서<br>중급이상의
									인력이 85%이상을 차지하고 있어<br>원활하고 효율적인 프로젝트 수행이 가능합니다.
								</p>
							</div>
						</div>
						<div class="contents item">
							<div class="tit_div tit_div2">
								<h3>
									조직도 및 <br class="pc">안정성
								</h3>
								<a href="javascript:void(0);" class="btn_open mo"
									data-target="organ"></a>
							</div>
							<div class="cont">
								<div class="conts_div">
									<h4>ORGANIZATION</h4>
									<div class="img_div mb30">
										<img src="resources/static/images/img_organ1.jpg" alt="">
									</div>

									<h4>STABILITY</h4>
									<div class="img_div">
										<img src="resources/static/images/img_organ2.jpg" alt="">
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

	<div class="modal" id="organ">
		<div class="modal_wrap">
			<div class="modal_cont">
				<div class="m_content">
					<div class="tit_div2 mo">
						<h3>조직도 및 안정성</h3>
					</div>
					<div class="conts_div">
						<h4>ORGANIZATION</h4>
						<div class="img_div mb30">
							<img src="resources/static/images/img_organ1.jpg" alt="">
						</div>

						<h4>STABILITY</h4>
						<div class="img_div">
							<img src="resources/static/images/img_organ2.jpg" alt="">
						</div>
					</div>
				</div>
			</div>
			<button class="modal_close"></button>
		</div>
	</div>
</body>


<script type="text/javascript"
	src="resources/static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script type="text/javascript" src="resources/static/js/common.js"></script>
<script type="text/javascript">
	contentsHeight();
</script>
</html>