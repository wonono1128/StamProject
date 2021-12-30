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
<link rel="stylesheet" href="resources/static/css/notice/insert.css">
<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
<script src="resources/static/js/btyeChk.js"></script>
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
							<span class="loca">HOME</span> <span class="slogan">Strategy+Ambition</span>
						</div>
						<div class="notice_div">
							<div class="notice_div_span">
								<span class="notice_span">Notice Update</span>
							</div>
							<form method="post" action="update_ok">

								<table class="notice_table">
									<tr>
										<td><input style="display: none" type="text"
											name="noticeNum" value="${ndto.noticeNum }"></td>
									</tr>
									<tr class="notice-insert-tr">
										<td class="notice_insert_td">제목</td>
										<td colspan="2"><input type="text"
											value="${ndto.noticeTitle }" name="noticeTitle"
											id="notice_insert_title" required maxlength="30"></td>
									</tr>
									<tr class="notice-insert-tr">
										<td class="notice_insert_td">내용</td>
										<td colspan="2"><textarea name="noticeContents"
												id="notice_insert_text" required minlength="20"
												 onkeyup="fn_checkByte(this)">${ndto.noticeContents }</textarea>
											<sup>(<span id="nowByte">0</span>/1000bytes)
										</sup></td>
									</tr>
									<tr class="notice_insert_tr notice_insert_btn">

										<td class="notice_insert_input"><button
												id="notice_insert_btn">수정</button></td>
										<td class="notice_insert_input"><a href="notice"
											id="notice_insert_list">목록</a></td>
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


</body>

</html>