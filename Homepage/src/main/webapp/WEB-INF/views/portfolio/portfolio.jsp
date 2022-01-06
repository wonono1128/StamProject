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
<link rel="stylesheet" href="resources/static/css/product/style.css">

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

					<c:forEach var="pDto" items="${list}" varStatus="status">
						<c:if test="${pDto.productState == 1}">
							<!-- 2021-01 -->
							<div class="swiper-slide">
								<div class="loca_div mo">
									<span class="loca">IT portfolio > ${menuContents } </span> <span
										class="slogan">Strategy+Ambition</span>
								</div>
								<div class="subtitle_section item">
									<h2>${pDto.companyName }<br>${pDto.productName }</h2>
									<div class="description">
										<pre style="font-size: 15px;">${pDto.productContents }</pre>
										<p class="logo_img_div">
										<c:if test="${pDto.companyLogo != '' }">
											<img src="resources/static/images/logo/${pDto.companyLogo }"
												>
										</c:if>
										</p>
									</div>
								</div>
								<div class="contents item">
									<div class="tit_div s_num_div">
										<span class="s_num"><img src="resources/static/images/${pDto.productLogo }"
										alt=""></span>
									</div>
									<div class="cont">
										<div class="conts_div">
											<img
												src="resources/static/images/product/${pDto.productImg }"
												alt="">
										</div>
										<a href="#" class="mo close_layer">닫기</a>
									</div>
								</div>
								<div class="num_div">
									<span class="num num0">0</span> <span
										class="num num${status.count}">${status.count}</span>
								</div>
							</div>
						</c:if>
					</c:forEach>


				</div>
				<!-- //swiper-wrapper -->
				<div class="swiper-pagination"></div>
			</div>
			<!-- //swiper-container -->
			<p class="bottom_text">Strategy + Ambition</p>
		</div>
		<!-- //container -->

	</div>
	<c:forEach var="pDto" items="${list}">
		<c:if test="${pDto.productState == 1}">
			<div class="modal" id="portfolio2021_1">
				<div class="modal_wrap">
					<div class="modal_cont">
						<div class="m_content">
							<div class="s_num_div mo">
								<span class="s_num s_num2021"></span>
							</div>
							<div class="img_div">
								<img src="resources/static/images/product/${pDto.productImg }"
									alt="">
							</div>
						</div>
					</div>
					<button class="modal_close"></button>
				</div>
			</div>
		</c:if>
	</c:forEach>



</body>
<script type="text/javascript">
	contentsHeight();
</script>

</html>