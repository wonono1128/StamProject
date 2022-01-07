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
<link rel="stylesheet" href="resources/static/css/product/common.css">
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
			<p class="top_text">NO CROSS NO CROWN</p>
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
								<pre style="font-size: 15px;">${pDto.productContents }</pre>
								<p class="logo_img_div">
									<c:if test="${pDto.companyLogo != '' }">
										<img src="resources/static/images/logo/${pDto.companyLogo }">
									</c:if>
								</p>
								<div class="product_div_btn">
									<input type="hidden" placeholder="메뉴명을 입력해주세요"
										class="menuContents" name="menuContents"
										value=${pDto.menuContents }>

									<button onclick="product_update()" class="content_update">수정</button>
									<button onclick="product_go()" class="content_content">목록</button>
								</div>
							</div>
						</div>
						<div class="contents item">
						<input type="hidden" value="${menuParents }" class="menuParents_hidden">
							<c:choose>
								<c:when test="${menuParents != 'BRAND'}">
									<div class="tit_div s_num_div">
										<img src="resources/static/images/${pDto.productLogo }" alt="">
										<a href="javascript:void(0);" class="btn_open mo"
											data-target="portfolio2021_1"></a>
									</div>
								</c:when>
										
 								<c:otherwise>
									<div class="tit_div tit_div2">
										<h3 class="brand_productLogo">
											<pre class="brand_pre brand_productLogo">
												
											</pre>
										</h3>
									</div>
								</c:otherwise>
							
							</c:choose>
							
							<div class="cont">
								<div class="conts_div">
									${pDto.brandContents }
									<div class="img_div"><img src="resources/static/images/product/${pDto.productImg }"
										alt="">
										</div>
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
window.onload = function() {
	if("${pDto.productLogo }" != ""){
		

	var brand_productLogo = "${pDto.productLogo }";
	var blank_pattern = /[\s]/g;
	if(blank_pattern.test(brand_productLogo) == true){ //문자열에 공백여부 체크
		
		brand_productLogo = brand_productLogo.replace(/ /g, "\n");
		document.querySelector(".brand_pre").innerHTML = brand_productLogo;
	}else{
		document.querySelector(".brand_pre").innerHTML = brand_productLogo;
	}
	}

}
	function product_go() {
		const menuContents = document.querySelector(".menuContents").value;
		const menuParents = "${menuParents}";
		const menuCode = "${menuCode}";
		
		if(menuParents == "BRAND"){
			location.href = "product?menuParents=BRAND&menuCode=" +menuCode +"&menuContents="+menuContents;
		}else{
			location.href = "product?menuCode=" + menuCode+"&menuContents="+menuContents;
		}
	}
	function product_update() {
		const productCode = ${pDto.productCode};
		location.href = "/homepage/product_update?productCode=" + productCode;
	}
</script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
</head>
</html>