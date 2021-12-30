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
<link rel="stylesheet" href="resources/static/css/depth/common.css">
<link rel="stylesheet" href="resources/static/css/style.css">
<link rel="stylesheet" href="resources/static/css/notice/notice.css">
<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>

<style>
.update_btn {
	
}
</style>

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
							<span class="notice_span">${MenuParents }</span>

							<table class="notice_table">
								<tr>
									<!-- 검색행 -->
								</tr>
								<tr style="display: none">
									<td><input type="text" value=${MenuParents }
										class="MenuParents"></td>
								</tr>
								<tr class="notice-tr top-tr">
									<td class="notice_th td_num">번호</td>
									<td class="notice_th td_mangager">소제목</td>
									<td class="notice_th td_chk">선택</td>
								</tr>
								<c:choose>
									<c:when test="${nextNum == 1 }">
										<tr class="notice_tr">
											<td colspan="5" class="no_notice_page">작성된 공지사항이 없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="dDto" items="${list}">
											<c:if test="${dDto.menuState == 1}">
												<tr class="notice_tr">
													<td class="notice_td">${dDto.menuCode}</td>
													<td class="notice_td notice_select_td"
														style="display: flex; justify-content: space-between; align-items: center;">
														<a href="depth_update?menuCode=${dDto.menuCode }"
														class="notice_td_a" id="${dDto.menuContents}"> <span
															class="depth_menuContents">${dDto.menuContents}</span>
													</a> <a href="depth_update?menuCode=${dDto.menuCode }"
														id="img_btn" class="icon-left-padding update_btn"
														style="margin-left: 20px;"> <i class="far fa-edit"></i>
													</a>
													</td>
													<td class="notice_td"><input type="checkbox"
														value=${dDto.menuCode } name="delete_chk"
														data-cartNum="${dDto.menuCode}" class="delete_chk"></td>
													<td style="display: none"><input type="text" value=""
														id="chk_num"></td>
												</tr>
											</c:if>
										</c:forEach>
									</c:otherwise>
								</c:choose>

								<tr style="position: relative;">
									<td></td>
									<td colspan="2"
										style="display: flex; justify-content: end; width: 450px; align-items: center; position: absolute; right: 0px;">
										<button onclick="go_insert()"
											style="margin-top: 20px; margin-right: 25px; width: 150px; border-radius: 20px; background-color: white; color: black; border: 1px solid black;">추가</button>
										<button class="delete_btn"
											style="margin-top: 20px; margin-right: 25px; width: 150px; border-radius: 20px; background-color: white; color: black; border: 1px solid black;">삭제</button>
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

<script>
	function go_insert() {
		location.href = "depth_insert";
	}
	function depth_update(event) {
		event.preventDefault();

	}

	$(".delete_btn")
			.click(
					function() {
						const MenuParents = document
								.querySelector(".MenuParents").value;
						var confirm_val = confirm("정말 삭제하시겠습니까?");

						if (confirm_val) {
							var checkArr = new Array();

							$("input[class='delete_chk']:checked").each(
									function() {
										checkArr.push($(this).attr(
												"data-cartNum"));
									});
							$
									.ajax({
										url : "/homepage/depth_delete",
										type : "post",
										data : {
											chbox : checkArr
										},
										success : function(result) {
											if (result == 1) {
												alert("삭제 성공");
												location.href = "/homepage/depth?MenuParents="
														+ MenuParents;
											} else {
												alert("삭제 실패");
											}
										}
									});
						}
					});
</script>

</html>