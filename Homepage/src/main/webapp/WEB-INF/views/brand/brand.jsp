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
			<p class="top_text">NO CROSS NO CROWN</p>
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<c:forEach var="pDto" items="${list}" varStatus="status">
						<c:if test="${pDto.productState == 1}">
							<!-- Brand-01 -->
							<div class="swiper-slide">
								<div class="loca_div mo">
									<span class="loca">Brand > Brand</span> <span class="slogan">Strategy+Ambition</span>
								</div>
								<div class="subtitle_section item">
									<h2>${pDto.companyName }<br>${pDto.productName }</h2>
									<div class="description">${pDto.productContents }</div>
								</div>
								<div class="contents item brand">
									<div class="tit_div tit_div2">
										<h3>${pDto.menuContents }</h3>
										<a href="javascript:void(0);" class="btn_open mo"
											data-target="brand01"></a>
									</div>
									<div class="cont">
										<div class="conts_div">
											<p>${pDto.brandContents }</p>

											<h4 class="mt">Brand Identity Diagnosis Process</h4>
											<div class="img_div">
												<img src="resources/static/images/product/${pDto.productImg }"
													alt="">
											</div>
										</div>
										<a href="#" class="mo close_layer">닫기</a>
									</div>
								</div>
								<div class="num_div">
									<span class="num num0">0</span> <span class="num num${status.count }">${status.count }</span>
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
			<div class="modal" id="brand01">
				<div class="modal_wrap">
					<div class="modal_cont">
						<div class="m_content">
							<div class="tit_div2 mo">
								<h3>${pDto.brandExplain }</h3>
							</div>
							<div class="conts_div">
								<p>${pDto.brandContents }<br>
									<br>
								</p>
								<h4 class="mt20">Brand Identity Diagnosis Process</h4>
								<div class="img_div">
									<img src="resources/static/images/product/${pDto.productImg }" alt="">
								</div>
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