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
<link rel="stylesheet" href="resources/static/css/notice/content.css">
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>

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
							<span class="notice_span">Notice Content</span>
							<div class="notice_content_div">
								<table class="notice_table">
									<tr class="notice_content_tr " style="height: 80px;">
										<td class="notice_content_td"><span
											id="notice_content_title">${ndto.noticeTitle}</span></td>
										<td class="notice_td_day notice_content_td">${ndto.noticeDay }</td>
									</tr>
									<tr class="notice_content_tr ">
									</tr>
									<tr>
										<td colspan="2"
											class="notice_content_td notice_content_textarea"><pre
												class="notice_content_pre">${ndto.noticeContents}</pre></td>
									</tr>
									<tr>
										<td class="notice_btn_td"><c:choose>
												<c:when test="${level == 1}">

													<div class="notice_flex_insert">
														<a href="update?noticeNum=${ndto.noticeNum }"
															class="notice_btn_a"><span class="notice_btn_span">수정</span></a>
													</div>
													<div class="notice_flex_insert">
														<a href="delete?noticeNum=${ndto.noticeNum }"
															class="notice_btn_a"><span class="notice_btn_span">삭제</span></a>
													</div>
													<div class="notice_flex_insert">
														<a href="notice" class="notice_btn_a"><span
															class="notice_btn_span">목록</span></a>
													</div>
												</c:when>
												<c:otherwise>
													<div class="notice_btn_otherwise">
														<a href="notice" class="notice_btn_a"><span
															class="notice_btn_span">목록</span></a>
													</div>
												</c:otherwise>
											</c:choose></td>
									</tr>
								</table>
							</div>

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

</html>