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
	href="resources/static/css/depth/depth_insert.css">
<script src="https://kit.fontawesome.com/070c967850.js"
	crossorigin="anonymous"></script>
<script src="resources/static/js/jquery-3.2.1.min.js"></script>
<script src="resources/static/plugins/swiper/swiper-bundle.min.js"></script>
<script src="resources/static/js/common.js"></script>

<style>
</style>
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
						<div class="insert_div">
							<div class="insert_title_div">
								<span class="insert_title_span">Depth Insert</span>
							</div>
							<form method="post" action="depth_insert_ok">
								<table class="insert_table">
									<tr class="insert_tr">
										<td class="insert_td_name">메뉴명</td>
										<td class="insert_td_input"><select name="menuParents">
												<option value="ABOUT" selected>ABOUT</option>
												<option value="PORTFOLIO">PORTFOLIO</option>
												<option value="BRAND">BRAND</option>
												<option value="SOLUTION">SOLUTION</option>
										</select></td>
										<td class="insert_td_input" style="display:none;"><input type="hidden" placeholder="메뉴명을 입력해주세요"  class="MenuParents" name="menuParents" value=${MenuParents }></td>   
									</tr>
									<tr class="insert_tr">
										<td class="insert_td_name">소제목</td>
										<td class="insert_td_input"><input type="text"
											placeholder="소제목을 입력해주세요" name="menuContents" required></td>
									</tr>

									<tr class="insert_tr">
										<td class="insert_td_btn">
											<button
												style="margin-right: 25px; width: 150px; border-radius: 20px; background-color: white; color: black; border: 1px solid black;">추가</button>
										</td>
										<td>
											<button onclick="depth_go(event)"
												style="margin-right: 25px; width: 150px; border-radius: 20px; background-color: white; color: black; border: 1px solid black;">목록</button>
										</td>
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
<script type="text/javascript">
	function depth_go(event) {
		event.preventDefault();
		
		const MenuParents = document.querySelector(".MenuParents").value;
		location.href = "/homepage/depth?MenuParents=" + MenuParents;
	}
</script>

</html>