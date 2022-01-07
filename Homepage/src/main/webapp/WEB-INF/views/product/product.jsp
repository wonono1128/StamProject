<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,shrink-to-fit=no,maximum-scale=1.0,minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>STAM</title>
<link rel="stylesheet"
	href="resources/static/plugins/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="resources/static/css/product/common.css">
<link rel="stylesheet" href="resources/static/css/style.css">
<link rel="stylesheet" href="resources/static/css/notice/notice.css">
<link rel="stylesheet" href="resources/static/css/product/product.css">

<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
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
					<jsp:include page="../customer_menu.jsp" />
				</c:if>
				<c:if test="${level == 1 }">
					<jsp:include page="../manager_menu.jsp" />
				</c:if>
			</nav>
		</header>

		<div class="container item">

			<div class="swiper-container">
				<div class="swiper-wrapper">

					<div class="swiper-slide">
						<div class="loca_div mo">
							<span class="loca">HOME</span>

						</div>
						<div class="notice_div">
							<span class="notice_span">${menuContents}</span>
							<table class="notice_table">
								<tr>
									<!-- 검색행 -->

								</tr>
								<tr style="display: none">
									<td>
										<input type="text" value="${menuContents}"class="menuContents">
										<input type="text" value="${menuParents}" class="menuParents">
										<input type="text" value="${menuCode}" class="menuCode">
									</td>
								</tr>
								<tr class="notice-tr top-tr">
									<td class="notice_th td_num">번호</td>
									<td class="notice_th td_company_name">고객명</td>
									<td class="notice_th td_mangager">사업명</td>
									<td class="notice_th td_mangager">선택</td>
								</tr>
								<c:choose>
									<c:when test="${nextNum == 1 }">
										<tr class="notice_tr">
											<td colspan="5" class="no_notice_page">작성된 공지사항이 없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="pDto" items="${list}">
											<tr>
												<td><input style="display: none" type="text"
													name="productCode" value="${pDto.productCode }"></td>
											</tr>
											<tr class="notice_tr">
												<td id="${pDto.productCode }" onClick="go_content(this)" class="notice_td pCode_td">${pDto.productCode}</td>
												<td id="${pDto.productCode }" onClick="go_content(this)"class="notice_td">${pDto.companyName}</td>
												<td id="${pDto.productCode }" onClick="go_content(this)"class="notice_td notice_productname">${pDto.productName}
												</td>
											
												<td class="notice_td"><input type="checkbox"
													name="deleteChk" class="deleteChk"
													data-cartNum="${pDto.productCode}"
													value="${pDto.productCode }"></input></td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>

								<tr style="position: relative;">
									<td></td>
									<td class="insertdel_td" colspan="2">
										<button class="product_insert_btn"
											onclick="location.href='./product_insert';">추가</button>
										<button class="product_delete_btn">삭제</button>
									</td>
								</tr>
							</table>
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
</body>
<script src="resources/static/js/product/product.js"></script>
</html>