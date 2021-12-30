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
<title>?</title>
<link rel="stylesheet"
	href="resources/static/plugins/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="resources/static/css/common.css">
<link rel="stylesheet" href="resources/static/css/product/style.css">
<link rel="stylesheet"
	href="resources/static/css/product/product_content.css">

<script src="resources/static/js/jquery-3.2.1.min.js"></script>
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
			<p class="top_text">NO CROSS NO NO CROWN</p>
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<!-- 2021-01 -->
					<div class="swiper-slide">
						<div class="loca_div mo">
							<span class="loca">IT portfolio > 2021 </span> <span
								class="slogan">Strategy+Ambition</span>
						</div>
						<div class="subtitle_section item">
							<h2>${pDto.companyName }<br>${pDto.productName }</h2>
							<div class="description">
								<pre>
		            	   ${pDto.productContents }
		           </pre>
								<p class="logo_img_div">
									<img
										src="resources/static/images/logo/${pDto.companyLogo }"
										alt="CJ 로고">
								</p>
								<div class="product_div_btn">
									<input type="hidden" placeholder="메뉴명을 입력해주세요"
										class="menuContents" name="menuContents"
										value=${pDto.menuContents }>

									<button onclick="product_update()"
										style="margin: 100px 50px; width: 100px; border-radius: 20px; background-color: white; color: black; border: 1px solid black;">수정</button>
									<button onclick="product_go()"
										style="margin-right: 25px; width: 100px; border-radius: 20px; background-color: white; color: black; border: 1px solid black;">목록</button>
								</div>
							</div>
						</div>
						<div class="contents item">
							<div class="tit_div s_num_div">
								<span class="s_num s_num2021"> ${pDto.menuContents }</span> <a
									href="javascript:void(0);" class="btn_open mo"
									data-target="portfolio2021_1"></a>
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





</body>
<script type="text/javascript">
	function product_go() {
		const menuContents = document.querySelector(".menuContents").value;
		location.href = "/homepage/product?menuContents=" + menuContents;
	}
	function product_update() {
		const productCode = ${pDto.productCode};
		
		location.href = "/homepage/product_update?productCode=" + productCode;
	}
	contentsHeight();
</script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
</head>
</html>