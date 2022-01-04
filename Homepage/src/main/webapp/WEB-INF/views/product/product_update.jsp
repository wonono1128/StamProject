<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
								<span class="insert_title_span">${menuContents }</span>
							</div>
							<div class="insert_contain">
								<form method="post" action="product_update_ok"
									enctype="multipart/form-data">
									<table class="insert_table">
									<tr class="insert_tr">
											<td class="insert_td_name">메뉴 선택</td>
											<td class="insert_td_input"><select name="menuContents">
													<c:forEach var="dDto" items="${Flist}">
														<c:if test="${dDto.menuState == 1 }">
															<c:if test="${dDto.menuParents != 'SOLUTION' }">
																<c:if test="${dDto.menuParents != 'ABOUT' }">
																	<c:set var="menuContents" value="${dDto.menuContents}" />
																	<c:set var="menuContents2"
																		value="${fn:replace(menuContents,' ','')}" />
																	<c:set var="menuContents3"
																		value="${fn:replace(menuContents2,'-','')}" />
																	<option value="${menuContents3 }" selected>${menuContents3 }</option>
																</c:if>
															</c:if>
														</c:if>
													</c:forEach>
											</select></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">고객명</td>
											<td class="insert_td_input"><input type="text"
												name="companyName" value="${pDto.companyName }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">사업명</td>
											<td class="insert_td_input"><input type="text"
												name="productName" value="${pDto.productName }"></td>
										</tr>
										<tr class="insert_tr">
											<td class="insert_td_name">사업 설명</td>
											<td class="insert_td_input"><textarea
													name="productContents" class="pcInput">${pDto.productContents }</textarea></td>
										</tr>
									
											
											<tr class="insert_tr">
											<c:if test="${menuParents == 'BRAND'}">
												<td class="insert_td_name">브랜드 내용</td>
												<td class="insert_td_input"><input type="text"
													name="brandContents" value="${pDto.brandContents }"></td>
											</c:if>
										</tr>
											<tr class="insert_tr">
											<td class="insert_td_name">고객 로고</td>
											<td class="insert_td_input"><input type="file"
												id="log_img" style="display: none" name="pLogo"> <label
												for="log_img" id=log_img_update>${pDto.companyLogo }
													수정</label> <label id="log_img_cancle" onclick="cancle()"
												style="display: none">취소</label> <label id="log_img_delete"
												onclick="delete_img()">삭제</label> <input type="hidden"
												id="cancleflag" name="logoCancleflag" value="0"> <input
												type="hidden" name="companyLogo"
												value="${pDto.companyLogo }"></td>
										</tr>
									
										<tr class="insert_tr">
											<td class="insert_td_name">사업 로고</td>
											<td class="insert_td_input"><input type="file"
												name="yearLogo"></td>
										</tr>	

										<tr class="insert_tr">
											<td class="insert_td_name">화면 이미지</td>
											<td class="insert_td_input"><input type="file"
												id="product_img" style="display: none" name="pImg">
												<label for="product_img" id=product_img_update>${pDto.productImg }
													수정</label> <label id="product_img_cancle"
												onclick="product_cancle()" style="display: none">취소</label>
												<label id="product_img_delete"
												onclick="product_delete_img()">삭제</label> <input
												type="hidden" id="productcancleflag"
												name="productCancleflag" value="0"> <input
												type="hidden" name="productImg" value="${pDto.productImg }">
											</td>
										</tr>
										<tr class="insert_tr insert_update_tr">
											<td>
												<button class="delete_btn" onclick="prev_btn(event)">이전</button>
											</td>
											<td>
												<button class="delete_btn" onclick="content_btn(event)">목록</button>
											</td>

											<td><button>완료</button></td>
										</tr>
									</table>
								</form>

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
<script>
	let log_img = document.getElementById("log_img");
	let log_img_update = document.getElementById("log_img_update");
	let log_img_cancle = document.getElementById("log_img_cancle");
	let log_cancleflag = 0; // 0 = >유지   1=> 새로운 이미지로 변경 2=>이미지를 아예없앰
	let log_img_after;

	// 회사 로고 첨부파일 동작	
	function change() {
		if (!log_img.value) {
			log_img.value = log_img_after;
			document.getElementById("cancleflag").value = log_cancleflag;
		} else {
			log_img.style.display = "";
			log_img_update.style.display = "none";
			log_img_after = log_img.value;
			log_img_cancle.style.display = "";
			cancleflag = 1;
			document.getElementById("cancleflag").value = log_cancleflag;
		}

	}
	log_img.addEventListener('change', change);

	function cancle() {
		cancleflag = 0;

		log_img.style.display = "none";
		log_img_update.style.display = "";
		log_img_after = log_img.value;
		log_img_cancle.style.display = "none";
		document.getElementById("cancleflag").value = log_cancleflag;
	}

	function delete_img() {

		$("#log_img").val(""); //파일 초기화
		log_img.style.display = "";
		log_img_update.style.display = "none";
		log_img_after = log_img.value;
		log_img_cancle.style.display = "";
		cancleflag = 2;
		document.getElementById("cancleflag").value = log_cancleflag;
	}

	// 제품 첨부파일 동작
	let product_img = document.getElementById("product_img");
	let product_img_update = document.getElementById("product_img_update");
	let product_img_cancle = document.getElementById("product_img_cancle");
	let product_cancleflag = 0; // 0 = >유지   1=> 새로운 이미지로 변경 2=>이미지를 아예없앰
	let product_img_after;

	function change_product() {
		if (!product_img.value) {
			product_img.value = product_img_after;
			document.getElementById("productcancleflag").value = product_cancleflag;
		} else {
			product_img.style.display = "";
			product_img_update.style.display = "none";
			product_img_after = product_img.value;
			product_img_cancle.style.display = "";
			product_cancleflag = 1;
			document.getElementById("productcancleflag").value = product_cancleflag;
		}

	}
	product_img.addEventListener('change', change_product);

	function product_cancle() {
		product_cancleflag = 0;

		product_img.style.display = "none";
		product_img_update.style.display = "";
		product_img_after = product_img.value;
		product_img_cancle.style.display = "none";
		document.getElementById("productcancleflag").value = product_cancleflag;
	}

	function product_delete_img() {

		$("#product_img").val(""); //파일 초기화
		product_img.style.display = "";
		product_img_update.style.display = "none";
		product_img_after = product_img.value;
		product_img_cancle.style.display = "";
		product_cancleflag = 2;
		document.getElementById("productcancleflag").value = product_cancleflag;
	}
	function prev_btn(event) {
		event.preventDefault();
		const productCode = ${productCode};
		location.href = "/homepage/product_content?productCode=" + productCode;
	}

	function content_btn(event) {
		event.preventDefault();
		const menuContents = "${pDto.menuContents}";
		location.href = "/homepage/product?menuContents=" + menuContents;
	}
</script>
</html>