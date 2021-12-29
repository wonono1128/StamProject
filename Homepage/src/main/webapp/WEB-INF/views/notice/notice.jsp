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
<link rel="stylesheet" href="resources/static/css/common.css">
<link rel="stylesheet" href="resources/static/css/style.css">
<link rel="stylesheet" href="resources/static/css/notice/notice.css">
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
							<span class="notice_span">Notice</span>
							<table class="notice_table">
								<tr>
									<!-- 검색행 -->

									<td colspan="5" class="notice_select_td">
										<form method="post" action="notice" class="notice_select">
											<div class="notice_select_div">
												<div class="notice_div_firstchild">
													<span>선택</span> <select style="width: auto; height: auto;"
														name="cla" id="select_box">
														<option value="noticeTitle">제목</option>
														<option value="managerName">작성자</option>
														<option value="noticeContents">내용</option>
													</select>
												</div>
												<div>
													<span>검색어</span> <input type="text"
														style="width: auto; height: auto;" name="sword"> <input
														type="submit" value="검색">
												</div>
											</div>
										</form>
									</td>
								</tr>

								<tr class="notice-tr top-tr">
									<td class="notice_th td_num">번호</td>
									<td class="notice_th td_mangager">작성자</td>
									<td class="notice_th td_title" colspan="2">제목</td>
									<td class="notice_th td_regdate">날짜</td>
								</tr>
								<c:if test="${pagecnt != 0 }">
									<c:forEach var="ndto" items="${nlist}">
										<tr class="notice_tr">
											<td class="notice_td">${ndto.noticeNum }</td>
											<td class="notice_td">${ndto.managerName }</td>
											<td colspan="2" class="notice_td notice_select_td"><a
												href="content?noticeNum=${ndto.noticeNum }"
												class="notice_td_a"> <span id="notice_td_a_first">${ndto.noticeTitle}</span>
													<span id="notice_td_a_span">${ndto.noticeTitle }</span>
											</a></td>
											<td class="notice_td notice_td_day">${ndto.noticeDay }</td>
										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${pagecnt == 0 }">
									<tr class="notice_tr">
										<td colspan="5" class="no_notice_page">작성된 공지사항이 없습니다.</td>
									</tr>
								</c:if>
								<!-- 페이징 html -->
								<tr class="notice_paging_tr">
									<td colspan="4" align="center" class="notice_paging_td">
										<div class="notice_paging_div">
											<!-- 이전 페이지 이동 -->
											<!-- 10페이지 이전 이동 시작 -->
											<c:choose>
												<c:when test="${pagecnt >= 11 }">
													<c:if test="${pstart != 1}">
														<a href="notice?page=${pstart-1}&sword=${sword}"> << </a>
													</c:if>
													<c:if test="${pstart == 1}">
						           <<
						          </c:if>
													<!-- 10페이지 이전 이동 끝 -->
												</c:when>
												<c:when test="${pagecnt != 0 }">
													<!-- 1페이지 이전 이동 (현재페이지에서 1페이지 이전) -->
													<c:if test="${page > 1}">
														<a href="notice?page=${page-1}&sword=${sword}"> < </a>
													</c:if>
													<c:if test="${page == 1}"> 
						          <      
						         </c:if>
													<!-- 1페이지 이전 이동 끝 -->
													<!-- 이전 페이지 이동 끝 -->
													<c:forEach begin="${pstart}" end="${pend}" var="i">
														<c:if test="${page == i}">
															<a href="notice?page=${i}&sword=${sword}"
																style="color: red;"> ${i} </a>
														</c:if>
														<c:if test="${page != i}">
															<a href="notice?page=${i}&sword=${sword}"> ${i} </a>
														</c:if>
													</c:forEach>

													<!-- 다음 페이지 이동 -->
													<!-- 다음 1페이지 이동 -->
													<c:if test="${page != pagecnt }">
														<a href="notice?page=${page+1}&sword=${sword}"> > </a>
													</c:if>
													<c:if test="${page == pagecnt}"> 
						         >
						        </c:if>
													<!-- 다음 1페이지 이동 끝 -->
												</c:when>
												<c:when test="${pagecnt >= 11 }">
													<!-- 다음 10페이지 이동 시작 -->
													<c:if test="${pend != pagecnt }">
														<a href="notice?page=${pend+1}&sword=${sword}"> >> </a>
													</c:if>
													<c:if test="${pend == pagecnt}">
						          >>
						        </c:if>
													<!-- 다음 10페이지 이동 끝 -->
													<!-- 다음 페이지 이동 끝 -->
												</c:when>
											</c:choose>
										</div>
									</td>
									<c:if test="${level == 1 }">
										<td class="notice_insert_td">
											<div class="notice_flex_insert">
												<a href="insert" class="notice_insert_a"><span
													class="notice_insert_span">추가</span></a>
											</div>
										</td>
									</c:if>
								</tr>
								<!-- 페이징 html 끝 -->

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

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>
<script src="js/datatables-simple-demo.js"></script>
</html>