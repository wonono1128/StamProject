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
<link rel="stylesheet"
	href="resources/static/css/product/product_insert.css">

<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
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
				<jsp:include page="../customer_menu.jsp" />
				<jsp:include page="../manager_menu.jsp" />
			</nav>
		</header>
		<div class="container item">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="loca_div mo">
							<span class="loca">HOME</span>

						</div>
						<div class="insert_div">
							<div class="insert_title_div">
								<span class="insert_title_span">IT Portfolio</span>
							</div>
							<div class="insert_contain">
								<form method="post" action="product_update_ok"enctype="multipart/form-data">
									<table class="insert_table">
										<tr class="insert_tr">
											<td class="insert_td_name">기업명</td>
											<td class="insert_td_input"><input type="text"
												name="companyName" value="${pDto.companyName }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">제품명</td>
											<td class="insert_td_input"><input type="text"
												name="productName" value="${pDto.productName }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">제품 설명</td>
											<td class="insert_td_input"><textarea
													name="productContents" class="pcInput" >${pDto.productContents }</textarea></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">기업 로고</td>
											<td class="insert_td_input"><input type="file"
												name="pLogo" ></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">메뉴</td>
											<td class="insert_td_input"><select name="menuContents">
													<option value="2021" selected>2021</option>
													<option value="2020">2020</option>
													<option value="2019">2019</option>
													<option value="2018">2018</option>
													<option value="2017">2017</option>
													<option value="-2016">-2016</option>
													<option value="Brand">Brand</option>
													<option value="Promotion">Promotion</option>
													<option value="Edit">Edit</option>
											</select></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">브랜드 설명</td>
											<td class="insert_td_input"><input type="text"
												name="brandExplain" value="${pDto.brandExplain }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">브랜드 내용</td>
											<td class="insert_td_input"><input type="text"
												name="brandContents" value="${pDto.brandContents }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">제품 이미지</td>
											<td class="insert_td_input" ><input type="file"
												name="pImg" ></td>
										</tr>
										<tr class="insert_tr">
											<td><button class="insert_td_btn">수정</button></td>

										</tr>
									</table>
								</form>
								<button class="delete_btn"
									onclick="location.href='./product?menuContents=${menuContents}';">목록</button>
							</div>
						</div>
						<!-- //swiper-wrapper -->
						<div class="swiper-pagination"></div>
					</div>
					<!-- //swiper-container -->

				</div>
				<!-- //container -->

			</div>
		</div>
	</div>
</body>
</html>